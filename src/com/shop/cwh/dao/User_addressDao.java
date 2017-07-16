package com.shop.cwh.dao;

import java.util.List;

import com.shop.cwh.bean.User_address;;

public interface User_addressDao extends BaseDao<User_address>{

	public List<User_address> findByUserAccount(String user_account);
	
	public User_address AddrefindByUserAccount(String user_account);

	public void deleteAddress(Integer address_id);

	public void defaultAddress(Integer address_id);

	public User_address searchAddress(Integer address_id);

	
}
