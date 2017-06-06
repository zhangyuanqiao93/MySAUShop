package cn.edu.sau.javashop.core.model.statistics;

/**
 * 虚拟实体，统计中的月-销售额
 * 

 */
public class MonthAmount {

	private String month;
	private Double amount;

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public Double getAmount() {
		return amount;
	}

	public void setAmount(Double amount) {
		this.amount = amount;
	}

}
