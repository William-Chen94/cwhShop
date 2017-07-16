package com.shop.cwh.dao;

import com.shop.cwh.bean.User;
import com.shop.cwh.dao.BaseDao;


public interface UserDao extends BaseDao<User>{
	public User findByUsernameAndPassword(String username, String password);
	public User FindUserByAccount(String user_account);
}
