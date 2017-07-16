package com.shop.cwh.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shop.cwh.bean.CardInfo;
import com.shop.cwh.dao.CardDao;
import com.shop.cwh.service.CardService;

@Transactional
@Service("cardService")
public class CardServiceImpl implements CardService{
	
	@Resource
	private CardDao cardDao;
	
	@Override
	public List<CardInfo> findCardByUserAccount(String user_account) {
			return cardDao.findCardByUserAccount(user_account);
	}

}
