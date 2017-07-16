package com.shop.cwh.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shop.cwh.bean.User;
import com.shop.cwh.service.UserService;

@Controller
public class UserController {

	@ModelAttribute
	public User getUser() {
		return new User();
	}

	@Resource
	private UserService userService;

	// 返回登录界面
	@RequestMapping(value = "/userLogin")
	public String login() {
		return "login";
	}

	// 返回注册界面
	@RequestMapping(value = "/userRegister")
	public String register() {
		return "register";
	}

	// 用户注销
	@RequestMapping(value = "/userLogout")
	public String logout(HttpSession session, HttpServletRequest request) {
		request.getSession().invalidate();
		return "redirect:/";
	}

	// 用户登录控制
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String userlogin(@ModelAttribute @Valid User user, String checkcode,
			HttpSession session, Map<String, Object> map,
			HttpServletRequest request) {

		// 判断帐号是否重复
		User isExistUser = userService
				.FindUserByAccount(user.getUser_account());
		if (isExistUser == null) {
			map.put("notUser", "notUser");
			return "login";
		}
		// 根据帐号密码检验帐号
		User u = userService.findUserByUsernameAndPassword(
				user.getUser_account(), user.getPassword());
		if (u == null) {
			map.put("notPassword", "notPassword");
			return "login";
		}
		session.setAttribute("user", u);
		return "redirect:/";
	}

	// 注册
	@RequestMapping(value = "/regist", method = RequestMethod.POST)
	public String register(@ModelAttribute @Valid User user,
			BindingResult result, HttpSession session, Map<String, Object> map) {
		// 如果信息有错误
		if (result.hasErrors()) {
			List<ObjectError> errorList = result.getAllErrors();
			for (ObjectError error : errorList) {
				System.out.println(error.getDefaultMessage());
			}
			// 返回注册界面
			return "userRegister";
		}
		userService.registerUser(user);

		return "login";
	}

	// 判断帐号是否存在
	@RequestMapping(value = "/IfExsitsUser/{user_account}", method = RequestMethod.POST)
	public void IfExsitsUser(@PathVariable("user_account") String user_account,
			HttpServletResponse response) throws IOException {
		if (userService.FindUserByAccount(user_account) != null) {
			response.getWriter().println("1");
		} else {
			response.getWriter().println("0");
		}
	}

	// 根据用户帐号 返回对应用户个人信息
	@RequestMapping(value = "/information/{user_account}", method = RequestMethod.GET)
	public String UserInfo(@PathVariable("user_account") String user_account,
			Model model) {

		User user = userService.FindUserByAccount(user_account);
		model.addAttribute("user", user);
		return "person/UserInfo";

	}

	// 更新用户个人信息
	@RequestMapping(value = "/infoUpdate/{user_account}",method = RequestMethod.POST)
	public String UpdateInfo(@PathVariable("user_account") String user_account,
			@ModelAttribute("user") User user,
			Map<String, Object> map, HttpSession session) {
		
			User user2 = userService.FindUserByAccount(user_account);
			user.setPassword(user2.getPassword());
			System.out.println(user.getUser_img());
		    userService.update(user);
		
		return "person/UserInfo";
	}
	
}