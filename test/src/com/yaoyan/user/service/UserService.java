package com.yaoyan.user.service;

import java.util.List;

import com.yaoyan.user.domain.ShowInfos;
import com.yaoyan.user.domain.User;

public interface UserService {

	User getUsernameAndPassword(String username, String password);

	long insertNewUser(String username, String password);

	User getUsername(String username);

	void updateDetailByUsername(String username, String realname, String mailbox);

	List<ShowInfos> findAllItsInfo();

}
