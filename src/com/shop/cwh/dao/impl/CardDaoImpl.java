package com.shop.cwh.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.shop.cwh.bean.CardInfo;
import com.shop.cwh.bean.Orderitem;
import com.shop.cwh.dao.CardDao;
import com.shop.cwh.service.CardService;

@Repository("cardDao")
@SuppressWarnings("all")
public class CardDaoImpl extends BaseDaoImpl<CardInfo> implements CardDao {
	
	
	public List<CardInfo> findCardByUserAccount(String user_account) {
			 String hql = " from CardInfo c where user_account = ? ";
			 Query query = this.getCurrentSession().createQuery(hql);
				query.setParameter(0, user_account);
				List<CardInfo> list = query.list();
				if (list != null && list.size() > 0) {
					return list;
				}
				return null;
	}
}
