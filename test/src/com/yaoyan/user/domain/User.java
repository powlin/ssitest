package com.yaoyan.user.domain;

public class User {

	private Integer id;
	private String username;
	private String password;
	private String realname;
	private String mailbox;
	private String validation;
	private String bankaccountcount;
	private String aliaccountcount;
	private String zhifubaomoney;
	private String yuebaomoney;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	public String getMailbox() {
		return mailbox;
	}
	public void setMailbox(String mailbox) {
		this.mailbox = mailbox;
	}
	public String getBankaccountcount() {
		return bankaccountcount;
	}
	public void setBankaccountcount(String bankaccountcount) {
		this.bankaccountcount = bankaccountcount;
	}
	public String getAliaccountcount() {
		return aliaccountcount;
	}
	public void setAliaccountcount(String aliaccountcount) {
		this.aliaccountcount = aliaccountcount;
	}
	public String getZhifubaomoney() {
		if(zhifubaomoney==null){
			zhifubaomoney = "0.00";
		}
		return zhifubaomoney;
	}
	public void setZhifubaomoney(String zhifubaomoney) {
		this.zhifubaomoney = zhifubaomoney;
	}
	public String getYuebaomoney() {
		if(yuebaomoney==null){
			yuebaomoney = "0.00";
		}
		return yuebaomoney;
	}
	public void setYuebaomoney(String yuebaomoney) {
		this.yuebaomoney = yuebaomoney;
	}
	
	public User() {
	}
	public String getValidation() {
		return validation;
	}
	public void setValidation(String validation) {
		this.validation = validation;
	}
	
}
