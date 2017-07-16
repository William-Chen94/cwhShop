package com.shop.cwh.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shop.cwh.bean.Order;
import com.shop.cwh.dao.OrdersDao;
import com.shop.cwh.service.OrderService;

@Transactional
@Service("orderService")
public class OrderServiceImpl implements OrderService{
	
	
	@Resource
	private OrdersDao ordersDao;
	
	@Override
	public void addOrder(Order order) {
			ordersDao.save(order);
	}

	@Override
	public Integer findCountByUser_account(String user_account) {
		
		return ordersDao.findCountByUser_account(user_account);
	}

	@Override
	public Order findByOrder_id(String order_id) {
		// TODO Auto-generated method stub
		return ordersDao.findByOrder_id(order_id);
	}

	@Override
	public List<Order> findByUser_account(String user_account, Integer page) {
		// TODO Auto-generated method stub
		int rows = 10;
		return ordersDao.findByUser_account(user_account,page,rows);
	}

	@Override
	public void update(Order order) {
		
			// TODO Auto-generated method stub
			ordersDao.update(order);
	}

	@Override
	public Integer findCountByUser_accountAndState(String user_account) {
		// TODO Auto-generated method stub
		return ordersDao.findCountByUser_accountAndState(user_account);
	}

	@Override
	public List<Order> findByUser_accountAndState(String user_account,
			int page) {
		int rows = 10;
		return ordersDao.findByUser_accountAndState(user_account,page,rows);
	}

	

}
