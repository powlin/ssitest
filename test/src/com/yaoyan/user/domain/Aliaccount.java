package com.yaoyan.user.domain;

public class Aliaccount {

	private Integer id;
	private String username;
	private String childrenusername;	//子账户
	private String money;				//账户余额
	private String lastlogin;			//最后登录时间
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
	public String getMoney() {
		return money;
	}
	public void setMoney(String money) {
		this.money = money;
	}
	public String getLastlogin() {
		return lastlogin;
	}
	public void setLastlogin(String lastlogin) {
		this.lastlogin = lastlogin;
	}
	public String getChildrenusername() {
		return childrenusername;
	}
	public void setChildrenusername(String childrenusername) {
		this.childrenusername = childrenusername;
	}
	public Aliaccount() {
	}
	public Aliaccount(String username, String childrenusername, String money,
			String lastlogin) {
		super();
		this.username = username;
		this.childrenusername = childrenusername;
		this.money = money;
		this.lastlogin = lastlogin;
	}
	public Aliaccount(Integer id, String username, String childrenusername,
			String money, String lastlogin) {
		super();
		this.id = id;
		this.username = username;
		this.childrenusername = childrenusername;
		this.money = money;
		this.lastlogin = lastlogin;
	}
}
