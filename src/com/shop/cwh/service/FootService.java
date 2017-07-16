package com.shop.cwh.service;

import java.util.List;

import com.shop.cwh.bean.Foot;



public interface FootService {
	void addFoot(Foot foot);

	List<Foot> QueryByUser_account(String user_account);
}
