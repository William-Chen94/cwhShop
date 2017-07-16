package com.shop.cwh.service;

import java.util.List;

import com.shop.cwh.bean.CardInfo;

public interface CardService {

	List<CardInfo> findCardByUserAccount(String user_account);

}
