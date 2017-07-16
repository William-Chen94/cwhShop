package com.shop.cwh.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shop.cwh.service.User_addressService;
import com.shop.cwh.bean.User_address;
import com.shop.cwh.dao.User_addressDao;

@Transactional
@Service("user_addressService")
public class User_addressServiceImpl implements User_addressService{
	
	@Resource
	private User_addressDao user_addressDao;
	
	@Override
	public void AddAddress(User_address user_address) {
		// TODO Auto-generated method stub
		user_addressDao.save(user_address);
	}

	@Override
	public User_address DelAddress() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User_address UpdAddress() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User_address QueryAddress() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<User_address> findByUserAccount(String user_account) {
		return user_addressDao.findByUserAccount(user_account);
	}

	@Override
	public User_address AddrefindByUserAccount(String user_account) {
		// TODO Auto-generated method stub
		return user_addressDao.AddrefindByUserAccount(user_account);
	}

	@Override
	public void DelAddress(Integer address_id ) {
		 user_addressDao.deleteAddress(address_id);
	}

	@Override
	public void DefaultAddress(Integer address_id) {
		// TODO Auto-generated method stub
		 user_addressDao.defaultAddress(address_id);
	}

	@Override
	public User_address searchAddress(Integer address_id) {
		// TODO Auto-generated method stub
		return  user_addressDao.searchAddress(address_id);
	}

	@Override
	public void updateAddress(User_address user_address) {
		// TODO Auto-generated method stub
		user_addressDao.update(user_address);
	}
	
}
