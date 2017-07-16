package com.shop.cwh.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shop.cwh.bean.User;
import com.shop.cwh.bean.User_address;
import com.shop.cwh.service.User_addressService;

@Controller
public class User_addressController {

	@Resource
	private User_addressService user_addressService;

	@ModelAttribute
	public User_address getUser() {
		return new User_address();
	}

	// 查找客户所有地址 返回地址管理界面
	@RequestMapping(value = "/user_address")
	public String UserAddress(HttpSession session, Map<String, Object> map) {
		User user = (User) session.getAttribute("user");
		
		if(user == null){
			map.put("notLogin", "notLogin");
			return "msg";
		}
		else{

		// 根据用户帐号 查找非默认的用户地址
		List<User_address> address_List = user_addressService
				.findByUserAccount(user.getUser_account());

		// 查找用户默认地址ַ
		User_address default_address = user_addressService
				.AddrefindByUserAccount(user.getUser_account());

		map.put("addList", address_List);
		session.setAttribute("default_add", default_address);
		return "person/address";
		}
	}

	// 增加地址ַ
	@RequestMapping(value = "/add_user_address", method = RequestMethod.POST)
	public String addAddress(
			@ModelAttribute("user_address") User_address user_address,
			HttpSession session, Map<String, Object> map) {
		User user = (User) session.getAttribute("user");
		if (user == null) {
			map.put("notLogin", "notLogin");
			return "msg";
		}
	    user_address.setUser(user);
		user_address.setIs_default("0");
		user_addressService.AddAddress(user_address);
		
		//session.setAttribute("user", user);

		return "redirect:/user_address";
	}

	// 删除地址
	@RequestMapping(value = "/delAddress/{address_id}")
	public String delAddress(@PathVariable("address_id") Integer address_id) {
		System.out.println(address_id);
		user_addressService.DelAddress(address_id);
		return "redirect:/user_address";
	}

	// 设置默认地址
	@RequestMapping(value = "/setDefault/{address_id}")
	public String DefaultAddress(@PathVariable("address_id") Integer address_id) {
		user_addressService.DefaultAddress(address_id);
		return "redirect:/user_address";
	}

	// 根据选中的地址查询地址
	@RequestMapping(value = "/searchAddress/{address_id}", method = RequestMethod.GET)
	public String UserInfo(@PathVariable("address_id") Integer address_id,
			Model model) {
		User_address user_address = user_addressService
				.searchAddress(address_id);
		model.addAttribute("user_address", user_address);
		return "/person/update_address";
	}

	// 更新地址
	@RequestMapping(value = "/updateAddress/{address_id}" ,method = RequestMethod.POST)
	public String UpdateAddressInfo(
			@ModelAttribute("user_address") User_address user_address,
			HttpSession session,
			@PathVariable("address_id") Integer address_id) {

		User user = (User) session.getAttribute("user");
		User_address user_address2 = user_addressService
				.searchAddress(address_id);
		user_address.setAddress_id(address_id);
		user_address.setIs_default(user_address2.getIs_default());
		user_address.setUser(user);

		user_addressService.updateAddress(user_address);

		return "redirect:/user_address";
	}

}
