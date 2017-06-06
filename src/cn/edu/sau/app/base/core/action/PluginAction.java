package cn.edu.sau.app.base.core.action;

import java.util.List;

import cn.edu.sau.framework.plugin.PluginContext;
import cn.edu.sau.framework.action.WWAction;

public class PluginAction extends WWAction {
	private List plugins;
	public String list() {
		plugins = PluginContext.getPlugins();
		return "list";
	}
	public List getPlugins() {
		return plugins;
	}
	public void setPlugins(List plugins) {
		this.plugins = plugins;
	}
	
	
}
