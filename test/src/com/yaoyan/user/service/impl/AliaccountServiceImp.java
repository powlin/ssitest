package com.yaoyan.user.service.impl;

import com.yaoyan.user.dao.AliaccountDao;
import com.yaoyan.user.service.AliaccountService;

public class AliaccountServiceImp implements AliaccountService{

	private AliaccountDao aliaccountDao;

	public AliaccountDao getAliaccountDao() {
		return aliaccountDao;
	}

	public void setAliaccountDao(AliaccountDao aliaccountDao) {
		this.aliaccountDao = aliaccountDao;
	}

}
