package com.yaoyan.user.domain;

public class MoneyData {

	private Integer id;
	private String moneyPer1W;
	private String moneyRate;
	private String createDate;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getMoneyPer1W() {
		return moneyPer1W;
	}
	public void setMoneyPer1W(String moneyPer1W) {
		this.moneyPer1W = moneyPer1W;
	}
	public String getMoneyRate() {
		return moneyRate;
	}
	public void setMoneyRate(String moneyRate) {
		this.moneyRate = moneyRate;
	}
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	
}
