package cn.edu.sau.javashop.core.service.batchimport;

/**
 * 商品数据批量导入器接口

 *
 */
public interface IGoodsDataBatchManager {
	
	/**
	 * 批量导入商品数据
	 * @param path
	 */
	public void batchImport(String path);
	
}
