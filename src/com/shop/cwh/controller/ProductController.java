	package com.shop.cwh.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


import com.shop.cwh.bean.Foot;
import com.shop.cwh.bean.Product;
import com.shop.cwh.bean.User;
import com.shop.cwh.service.FootService;
import com.shop.cwh.service.ProductService;

@Controller
public class ProductController {
	@Resource
	private ProductService productService;
	
	@Resource
	private FootService footService;

	// 根据产品ID搜索产品
	@RequestMapping(value = "findByTid/{type_id}/{page}")
	public String findProductByTypeId(@PathVariable("type_id") Integer type_id,
			@PathVariable("page") Integer page, Map<String, Object> map) {
		List<Product> products = productService.findByTypeId(type_id, page);
		Integer count = productService.CountPageProductPage(type_id);
		Integer PListNum =  count;
		count = (count % 12 == 0 ? (count / 12) : (count / 12 + 1));
		if (page > count) {
			page = 1;
		}
		String flag = "ID";
		map.put("flag", flag);
		map.put("products", products);
		map.put("page", page);
		map.put("count", count);
		map.put("type_id", type_id);
		map.put("PListNum", PListNum);
		

		return "product/search";
	}
	
	// 根据名称搜索产品
		@RequestMapping(value = "/findByName/{page}")
		public String findProductBySearchName( Map<String, Object> map,HttpServletRequest req,
				@PathVariable("page") Integer page) {
			String searchInput = (String) req.getParameter("searchInput");
			searchInput = "%"+searchInput+"%";
			System.out.println(searchInput);
			List<Product> products = productService.findByName(searchInput,page);
			Integer count = productService.CountPageProductPageByName(searchInput);
			Integer PListNum =  count;
			count = (count % 12 == 0 ? (count / 12) : (count / 12 + 1));
			if (page > count) {
				page = 1;
			}
			String flag = "Name";
			map.put("flag", flag);
			map.put("products", products);
			map.put("page", page);
			map.put("count", count);
			map.put("searchInput", searchInput);
			map.put("PListNum", PListNum);
			
			return "product/search";
			
		}

	@RequestMapping(value = "/product_detail/{product_id}")
	public String findProductByTypeId(
			@PathVariable("product_id") Integer product_id,HttpSession session) {
		Product product = productService.findByProductId(product_id);
		User user = (User) session.getAttribute("user");
		Foot foot = new Foot();
		foot.setProduct(product);
		foot.setUser(user);
		footService.addFoot(foot);
		session.setAttribute("product", product);
		return "product/product_detail";
	}
}
