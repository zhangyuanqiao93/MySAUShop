package cn.edu.sau.app.base.core.service.auth;

import java.util.List;

import cn.edu.sau.app.base.core.model.Role;

/**
 * 角色管理接口
 */
public interface IRoleManager {
	
	/**
	 * 读取所有角色列表 
	 * @return
	 */
	public List<Role> list();
	
	
	/**
	 * 添加一个角色
	 * @param role 角色实体
	 * @param acts 此角色的权限集合
	 */
	public void add(Role role, int[] acts);
	
	
	
	/**
	 * 修改角色<br>
	 * 将会同时修改此属于此角色用户的权限
	 * @param role  角色实体
	 * @param acts 此角色的权限集合
	 */
	public void edit(Role role, int[] acts);
	
	
	/**
	 * 删除某角色
	 * @param roleid
	 */
	public void delete(int roleid);
	
	
	/**
	 * 读取某个角色信息，同时读取此角色权限
	 * @param roleid
	 * @return 权限id存于role.actids数组中
	 */
	public Role get(int roleid);

}
