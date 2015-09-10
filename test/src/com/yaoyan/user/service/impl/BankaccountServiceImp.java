package com.yaoyan.user.service.impl;

import com.yaoyan.user.dao.BankaccountDao;
import com.yaoyan.user.service.BankaccountService;

public class BankaccountServiceImp implements BankaccountService{

	private BankaccountDao bankaccountDao;

	public BankaccountDao getBankaccountDao() {
		return bankaccountDao;
	}

	public void setBankaccountDao(BankaccountDao bankaccountDao) {
		this.bankaccountDao = bankaccountDao;
	}

}
