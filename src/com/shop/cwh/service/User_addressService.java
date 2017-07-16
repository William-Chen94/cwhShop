package com.shop.cwh.service;

import java.util.List;

import com.shop.cwh.bean.User_address;

public interface User_addressService {
	public void AddAddress(User_address user_address);
	
	public User_address DelAddress();
	
	public User_address UpdAddress();
	
	public User_address QueryAddress();

	public List<User_address> findByUserAccount(String user_account);

	public User_address AddrefindByUserAccount(String user_account);

	public void DelAddress(Integer address_id);

	public void DefaultAddress(Integer address_id);

	public User_address searchAddress(Integer address_id);

	public void updateAddress(User_address user_address);
	
}
