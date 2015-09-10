package com.yaoyan.user.dao.impl;

import java.util.HashMap;
import java.util.Map;

import com.yaoyan.base.dao.BaseDao;
import com.yaoyan.user.dao.MoneyDataDao;
import com.yaoyan.user.domain.MoneyData;
import com.yaoyan.user.domain.User;

public class MoneyDataDaoImp extends BaseDao implements MoneyDataDao{
	
	public User getUsernameAndPassword(String username, String password) {
		Map<String, String> params = new HashMap<String, String>();
		params.put("username", username);
		params.put("password", password);
		User user = (User) getSqlMapClientTemplate().queryForObject("user.getUsernameAndPassword", params);
		if(user!=null){
			return user;
		}
		return null;
	}

	@Override
	public String[] getLastMoneyData() {
		String[] result = new String[2];
		MoneyData moneyData = (MoneyData) getSqlMapClientTemplate().queryForObject("moneydata.getLastMoneyData");
		if(moneyData == null){
			result[0] = "0";
			result[1] = "0";
		}else{
			result[0] = moneyData.getMoneyPer1W();
			result[1] = moneyData.getMoneyRate();
		}
		return result;
	}

}
