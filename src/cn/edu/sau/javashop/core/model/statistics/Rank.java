package cn.edu.sau.javashop.core.model.statistics;

/**
 * 销售量（额）排名实体
 * 

 */
public class Rank {
	private String name;
	private int count;
	private Double amount;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public Double getAmount() {
		return amount;
	}
	public void setAmount(Double amount) {
		this.amount = amount;
	}

}
