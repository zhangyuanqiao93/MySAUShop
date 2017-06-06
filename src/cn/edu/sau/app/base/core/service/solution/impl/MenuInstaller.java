package cn.edu.sau.app.base.core.service.solution.impl;

import cn.edu.sau.app.base.core.service.solution.IInstaller;
import cn.edu.sau.eop.resource.IMenuManager;
import cn.edu.sau.eop.resource.model.Menu;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/**
 * 菜单安装器
 */
public class MenuInstaller implements IInstaller {

	private IMenuManager menuManager;

	public void install(String productId, Node fragment) {
		// this.menuManager.clean();
		NodeList menuList = fragment.getChildNodes();
		this.addMenu(menuList, 0);
	}

	/**
	 * 将一个NodeList集合中的menu结点数据保存到库中
	 * 
	 * @param nodeList
	 * @param parentId
	 */
	private void addMenu(NodeList nodeList, Integer parentId) {
		for (int i = 0; i < nodeList.getLength(); i++) {
			Node node = nodeList.item(i);
			if (node.getNodeType() == Node.ELEMENT_NODE) {
				this.addMenu((Element) node, parentId);
			}
		}
	}

	/**
	 * 将一个menu结点数据保存在库中
	 * 
	 * @param ele
	 * @param parentId
	 */
	private void addMenu(Element ele, Integer parentId) {
		try {
			Menu menu = new Menu();
			menu.setPid(parentId);

			String text = ele.getAttribute("text");
			String url = ele.getAttribute("url");
			String type = ele.getAttribute("type");
			String selected = ele.getAttribute("selected");
			String target = ele.getAttribute("target");
			String mode = ele.getAttribute("mode");
			if (type == null) {
				type = ((Element) ele.getParentNode()).getAttribute("type");
			}

			if (target != null) {
				menu.setTarget(target);
			}

			int menuType = Menu.MENU_TYPE_APP;
			if ("sys".equals(type))
				menuType = Menu.MENU_TYPE_SYS;
			if ("app".equals(type))
				menuType = Menu.MENU_TYPE_APP;
			if ("ext".equals(type))
				menuType = Menu.MENU_TYPE_EXT;

			menu.setMenutype(menuType);
			menu.setTitle(text);
			if ((selected != null) && (!selected.equals(""))) {
				menu.setSelected(Integer.valueOf(selected));
			}
			if (url != null)
				menu.setUrl(url);
			menu.setSorder(50);
			if (mode != null)
				menu.setAppid(mode);

			Integer menuid = this.menuManager.add(menu);
			NodeList children = ele.getChildNodes();

			if (children != null) {
				this.addMenu(children, menuid);
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("install menu error");
		}
	}

	public IMenuManager getMenuManager() {
		return menuManager;
	}

	public void setMenuManager(IMenuManager menuManager) {
		this.menuManager = menuManager;
	}

}
