package com.shop.cwh.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shop.cwh.bean.User;

@Controller
public class IndexController {
	
	@ModelAttribute
	public User getUser(){
		return new User();
	}
	/*@Resource
	private ProductService productService;
	*/
	/*
	@Resource
	private ClothesService clothesService;*/
	

	@RequestMapping(value="/")
	public String showIndex(Map<String,Object> map,HttpSession session){

		return "index"; 
	}
	@RequestMapping(value="/homePage")
	public String backIndex(Map<String,Object> map,HttpSession session){

		return "redirect:/"; 
	}
	@RequestMapping(value="/testjsp")
	public String backTest(Map<String,Object> map,HttpSession session){

		return "test"; 
	}
}
