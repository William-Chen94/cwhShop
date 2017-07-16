package com.shop.cwh.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shop.cwh.bean.Foot;
import com.shop.cwh.dao.FootDao;
import com.shop.cwh.service.FootService;


@Transactional
@Service("footService")
public class FootServiceImpl implements FootService {
	
	@Resource
	private FootDao footDao;
	
	@Override
	public void addFoot(Foot foot) {
		footDao.save(foot);
	}

	@Override
	public List<Foot> QueryByUser_account(String user_account) {
		// TODO Auto-generated method stub
		return null;
	}
	

}
