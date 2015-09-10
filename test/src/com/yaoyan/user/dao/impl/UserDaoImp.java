package com.yaoyan.user.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.transaction.annotation.Transactional;

import com.yaoyan.base.dao.BaseDao;
import com.yaoyan.user.dao.UserDao;
import com.yaoyan.user.domain.ShowInfos;
import com.yaoyan.user.domain.User;

public class UserDaoImp extends BaseDao implements UserDao{
	
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

	@Transactional
	public long insertNewUser(String username, String password) {
		Map<String, String> params = new HashMap<String, String>();
		params.put("username", username);
		params.put("password", password);
		long num = (Long) getSqlMapClientTemplate().insert("user.insertNewUser", params);
		return num;
	}

	public User getUsername(String username) {
		Map<String, String> params = new HashMap<String, String>();
		params.put("username", username);
		User user = (User) getSqlMapClientTemplate().queryForObject("user.getUsername", params);
		if(user!=null){
			return user;
		}
		return null;
	}

	@Override
	public void updateDetailByUsername(String username, String realname,
			String mailbox) {
		Map<String, String> params = new HashMap<String, String>();
		params.put("username", username);
		params.put("realname", realname);
		params.put("mailbox", mailbox);
		getSqlMapClientTemplate().insert("user.updateDetailByUsername", params);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ShowInfos> findAllItsInfo() {
		return getSqlMapClientTemplate().queryForList("user.findAllItsInfo");
	}

}
