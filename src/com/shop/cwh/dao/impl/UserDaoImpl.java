package com.shop.cwh.dao.impl;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.shop.cwh.bean.User;
import com.shop.cwh.dao.UserDao;
import com.shop.cwh.dao.impl.BaseDaoImpl;

@Repository("userDao")
@SuppressWarnings("all")
public class UserDaoImpl extends BaseDaoImpl<User> implements UserDao {
	public User findByUsernameAndPassword(String username, String password) {
		String hql = "from User u where u.user_account = ? and u.password = ?";
		Query query = this.getCurrentSession().createQuery(hql);
		query.setParameter(0, username);
		query.setParameter(1, password);
		return (User)query.uniqueResult(); 
	}


	@Override
	public User FindUserByAccount(String user_account) {
		String hql = "from User u where u.user_account = ?";
		Query query = this.getCurrentSession().createQuery(hql);
		query.setParameter(0, user_account);
		return (User)query.uniqueResult(); 
	}
}
