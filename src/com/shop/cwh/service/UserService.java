package com.shop.cwh.service;

import com.shop.cwh.bean.User;

public interface UserService {

	// 用户帐号密码检验
	public User findUserByUsernameAndPassword(String user_account,
			String password);

	// 注册用户
	public void registerUser(User user);

	// 根据帐号找用户
	public User FindUserByAccount(String user_account);

	// 更新用户资料
	public void update(User user);

}
