package cn.edu.sau.app.base.core.service.solution;

/**
 * 解决方案导入器

 *
 */
public interface ISolutionImporter {

	/**
	 * 根据一个解决方案zip包导入解决方案
	 * @param zipPath
	 */
	public void imported(String productid, String zipPath, boolean cleanZip);
	
	
}
