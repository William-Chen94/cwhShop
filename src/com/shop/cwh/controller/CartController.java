package com.shop.cwh.controller;


import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shop.cwh.bean.Cart;
import com.shop.cwh.bean.CartItem;
import com.shop.cwh.bean.Product;


@Controller
public class CartController {

	
	/*@Resource
	private ProductService productService;*/
	
	//首页上跳转至购物车
	@RequestMapping("/myCart")
	public String myCart() {
		return "/cart/shopCart";
	}
	
	//清空购物车
	@RequestMapping(value="/clearCart")
	public String clearCart(HttpSession session){
		Cart cart = (Cart) session.getAttribute("cart");
		cart.clearCart();
		return "/cart/shopCart";
	}
	
	//删除购物车中的商品
	@RequestMapping(value="/removeCart/{product_id}")
	public String removeCart(@PathVariable("product_id") Integer product_id, HttpSession session){
		//获得购物车对象
		Cart cart = (Cart) session.getAttribute("cart");
		//根据商品的product_id从购物车中移除商品
		cart.removeCart(product_id);
		return "/cart/shopCart";
	}
	
	//添加到购物车
	@RequestMapping(value="/addCart")
	public String addCart( Integer count,String size,String color, HttpSession session){
		/*System.out.println(size);
		System.out.println(color);*/
		Product product = (Product) session.getAttribute("product");
		CartItem cartItem = new CartItem();
		cartItem.setCount(count);
		cartItem.setColor(color);
		cartItem.setSize(size);
		cartItem.setProduct(product);
		Cart cart = (Cart) session.getAttribute("cart");
		if(cart == null) {
			cart = new Cart();
			session.setAttribute("cart", cart);
		}
		// 将购物项添加到购物车.
		cart.addCart(cartItem);
		return "/cart/shopCart";
	}
	
}
