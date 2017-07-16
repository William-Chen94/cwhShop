package com.shop.cwh.dao;

import java.util.List;

import com.shop.cwh.bean.Order;


public interface OrdersDao extends BaseDao<Order>{

	Integer findCountByUser_account(String user_account);

	Order findByOrder_id(String order_id);

	List<Order> findByUser_account(String user_account, int begin, int limit);

	Integer findCountByUser_accountAndState(String user_account);

	List<Order> findByUser_accountAndState(String user_account,  int begin, int limit);

}
