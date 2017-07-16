package com.shop.cwh.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.shop.cwh.bean.Order;
import com.shop.cwh.bean.Orderitem;
import com.shop.cwh.bean.Product;
import com.shop.cwh.dao.OrdersDao;
@Repository("ordersDao")
@SuppressWarnings("all")
public class OrdersDaoImpl extends BaseDaoImpl<Order>  implements OrdersDao{

	@Override
	public Integer findCountByUser_account(String user_account) {
		String hql = "select count(*) from Order o where o.user.user_account=? ";
		Query query = this.getCurrentSession().createQuery(hql);
		query.setParameter(0, user_account);
		List<Long> list = query.list();
		if (list != null && list.size() > 0) {
			Integer count= list.get(0).intValue();
			return  (count % 10 == 0 ? (count /10) : (count / 10 + 1));
		}
		return 0;
	}

	@Override
	public Order findByOrder_id(String order_id) {
		String hql = "from Order o where o.order_id=? ";
		Query query = this.getCurrentSession().createQuery(hql);
		query.setParameter(0, order_id);
		return (Order)query.uniqueResult(); 
	}

	@Override
	public List<Order> findByUser_account(String user_account, int begin, int limit) {
		String hql = "from Order o where o.user.user_account = ? order by o.ordertime desc";
		Query query = this.getCurrentSession().createQuery(hql);
		query.setParameter(0, user_account);
		List<Order> list = query.setFirstResult((begin - 1) * limit).setMaxResults(limit).list();
		if (list != null && list.size() > 0) {
			return list;
		}
		return null;
	}
	
	public List<Orderitem> findOrderItem(Integer order_id) {
		String hql = "from Orderitem oi where oi.order.order_id = ?";
		Query query = this.getCurrentSession().createQuery(hql);
		query.setParameter(0, order_id);
		List<Orderitem> list = query.list();
		if (list != null && list.size() > 0) {
			return list;
		}
		return null;
	}

	@Override
	public Integer findCountByUser_accountAndState(String user_account) {
		String hql = "select count(*) from Order o where o.user.user_account=? and (o.state =5 or o.state=6)";
		Query query = this.getCurrentSession().createQuery(hql);
		query.setParameter(0, user_account);
		List<Long> list = query.list();
		if (list != null && list.size() > 0) {
			Integer count= list.get(0).intValue();
			return  (count % 10 == 0 ? (count /10) : (count / 10 + 1));
		}
		return 0;
	}

	@Override
	public List<Order> findByUser_accountAndState(String user_account,
			 int begin, int limit) {
		String hql = "from Order o where o.user.user_account = ? and (o.state =5 or o.state=6) order by o.ordertime desc";
		Query query = this.getCurrentSession().createQuery(hql);
		query.setParameter(0, user_account);
		List<Order> list = query.setFirstResult((begin - 1) * limit).setMaxResults(limit).list();
		if (list != null && list.size() > 0) {
			return list;
		}
		return null;
	}

}
