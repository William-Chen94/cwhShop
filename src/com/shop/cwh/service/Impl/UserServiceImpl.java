package com.shop.cwh.service.Impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shop.cwh.bean.User;
import com.shop.cwh.dao.UserDao;
import com.shop.cwh.service.UserService;

@Transactional
@Service("userService")
public class UserServiceImpl implements UserService{
	@Resource
	private UserDao userDao;

	@Override
	public User findUserByUsernameAndPassword(String user_accout,String user_password) {
		return userDao.findByUsernameAndPassword(user_accout, user_password);
	}

	@Override
	public void registerUser(User user) {
			userDao.save(user);
	}

	@Override
	public User FindUserByAccount(String user_account) {
		return userDao.FindUserByAccount(user_account);
	}

	@Override
	public void update(User user) {
		// TODO Auto-generated method stub
		userDao.update(user);
	}

}
