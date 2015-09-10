package com.yaoyan.user.service.impl;

import com.yaoyan.user.dao.MoneyDataDao;
import com.yaoyan.user.service.MoneyDataService;

public class MoneyDataServiceImp implements MoneyDataService{

	private MoneyDataDao moneyDataDao;

	@Override
	public String[] getLastMoneyData() {
		return moneyDataDao.getLastMoneyData();
	}

	public MoneyDataDao getMoneyDataDao() {
		return moneyDataDao;
	}

	public void setMoneyDataDao(MoneyDataDao moneyDataDao) {
		this.moneyDataDao = moneyDataDao;
	}
	
}
