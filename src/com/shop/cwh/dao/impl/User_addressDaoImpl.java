package com.shop.cwh.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Repository;

import com.shop.cwh.bean.User_address;
import com.shop.cwh.dao.User_addressDao;

@Repository("user_addressDao")
@SuppressWarnings("all")
public class User_addressDaoImpl extends BaseDaoImpl<User_address> implements
		User_addressDao {

	

	@Override
	public List<User_address> findByUserAccount(String user_account) {
		String hql = "from User_address u where u.user.user_account = ? and u.is_default <> '1'";
		Query query = this.getCurrentSession().createQuery(hql);
		query.setParameter(0, user_account);
		query.setFirstResult(0);
		query.setMaxResults(5);
		List<User_address> list = query.list();
		if (list != null && list.size() > 0) {
			return list;
		}
		return null;
	}

	@Override
	public User_address AddrefindByUserAccount(String user_account) {
		String hql = "from User_address u where u.user.user_account = ? and u.is_default =1";
		Query query = this.getCurrentSession().createQuery(hql);
		query.setParameter(0, user_account);
		return (User_address) query.uniqueResult();
	}

	@Override
	public void deleteAddress(Integer address_id) {
		String hql = "Delete  User_address u where u.address_id = ? ";
		Query query = this.getCurrentSession().createQuery(hql);
		query.setParameter(0, address_id);
		query.executeUpdate();
	}

	@Override
	public void defaultAddress(Integer address_id) {
		// TODO Auto-generated method stub
		String hql = "Update User_address u set u.is_default = '0' where u.is_default = '1'";
		Query query = this.getCurrentSession().createQuery(hql);
		query.executeUpdate();
		hql = "Update  User_address u set u.is_default = '1' where u.address_id = ? ";
	    query = this.getCurrentSession().createQuery(hql);
		query.setParameter(0, address_id);
		query.executeUpdate();
	}
	
	//根据地址号查询对应地址
	@Override
	public User_address searchAddress(Integer address_id) {
		// TODO Auto-generated method stub
		String hql = "from User_address u where u.address_id =?";
		Query query = this.getCurrentSession().createQuery(hql);
		query.setParameter(0, address_id);
		return (User_address) query.uniqueResult();
	}

}
