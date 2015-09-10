package com.yaoyan.user.domain;

public class Bankaccount {

	private Integer id;
	private String username;
	private String bankcardid;
	private String bankname;
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
	public String getBankname() {
		return bankname;
	}
	public void setBankname(String bankname) {
		this.bankname = bankname;
	}
	public String getBankcardid() {
		return bankcardid;
	}
	public void setBankcardid(String bankcardid) {
		this.bankcardid = bankcardid;
	}
	public Bankaccount() {
	}
	public Bankaccount(String username, String bankcardid, String bankname,
			String cardperson) {
		this.username = username;
		this.bankcardid = bankcardid;
		this.bankname = bankname;
	}
	public Bankaccount(Integer id, String username, String bankcardid,
			String bankname, String cardperson) {
		this.id = id;
		this.username = username;
		this.bankcardid = bankcardid;
		this.bankname = bankname;
	}
}
