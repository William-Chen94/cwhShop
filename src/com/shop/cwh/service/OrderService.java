package com.shop.cwh.service;

import java.util.List;

import com.shop.cwh.bean.Order;

public interface OrderService {

	void addOrder(Order order);

	Integer findCountByUser_account(String user_account);

	Order findByOrder_id(String orderId);

	List<Order> findByUser_account(String user_account, Integer page);

	void update(Order order);

	Integer findCountByUser_accountAndState(String user_account);

	List<Order> findByUser_accountAndState(String user_account, int page);


}
