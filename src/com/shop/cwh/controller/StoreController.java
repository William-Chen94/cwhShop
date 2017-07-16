package com.shop.cwh.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 出售该产品的商户所在地址。
 */
@Controller
public class StoreController {
	
	
	@RequestMapping(value = "/findAddress/{address}")
	public String gotoAddress(@PathVariable ("address") String address,HttpServletRequest req) {
		String destination;
		try {
			destination = URLDecoder.decode(address, "UTF-8");
			System.out.println(destination);
			req.setAttribute("destination", destination);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return "gotoAddress";
	}
}
