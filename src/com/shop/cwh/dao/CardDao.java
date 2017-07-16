package com.shop.cwh.dao;

import java.util.List;

import com.shop.cwh.bean.CardInfo;

public interface CardDao extends BaseDao<CardInfo> {

	List<CardInfo> findCardByUserAccount(String user_account);

}
