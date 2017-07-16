package com.shop.cwh.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shop.cwh.bean.CardInfo;
import com.shop.cwh.bean.User;
import com.shop.cwh.service.CardService;

@Controller
public class CardController {
	@Resource
	private CardService cardService;

	/* 用户快捷支付 查询用户名下所有银行卡信息 */
	@RequestMapping(value = "/cardlist")
	public String CardList(HttpSession session, Map<String, Object> map) {
		User user = (User) session.getAttribute("user");
		List<CardInfo> cardList = cardService.findCardByUserAccount(user
				.getUser_account());
		map.put("cardList", cardList);
		return "person/cardlist";
	}
	
	/* 用户绑定新卡  */
	@RequestMapping(value = "/addCard")
	public String AddCard(HttpSession session) {

		return "person_center/addCard";
	}

}
