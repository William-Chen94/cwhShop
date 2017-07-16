package com.shop.cwh.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shop.cwh.bean.Cart;
import com.shop.cwh.bean.CartItem;
import com.shop.cwh.bean.Order;
import com.shop.cwh.bean.Orderitem;
import com.shop.cwh.bean.User;
import com.shop.cwh.bean.User_address;
import com.shop.cwh.service.OrderService;
import com.shop.cwh.service.User_addressService;

@Controller
public class OrderController {

	@ModelAttribute
	public Order oder() {
		return new Order();
	}
	
	
	@Resource
	private OrderService orderService;

	@Resource
	private User_addressService user_addressService;

	
	    //根据订单id查询订单
		@RequestMapping(value="findByOid/{order_id}")
		public String findByOid(@PathVariable("order_id") String order_id,
				Map<String,Object> map){
			Order order = orderService.findByOrder_id(order_id);
			map.put("order",order);
			return "order";
		} 
		
		//查询订单 --所有
		@RequestMapping(value="findOrderByUserAccount/{page}")
		public String findOrderByUid(HttpSession session,Map<String,Object> map
				,@PathVariable("page") Integer page){
			//从session获取user对象
			User user = (User) session.getAttribute("user");
			if(user == null){
				map.put("notLogin", "notLogin");
				return "msg";
			}
			//查询总共有多少页的数据
			Integer count = orderService.findCountByUser_account(user.getUser_account());
			if(page > count){
				page = 1;
			}
			//根据用户分页查询订单
			List<Order> orders = orderService.findByUser_account(user.getUser_account(), page);
			
			map.put("orders", orders);
			map.put("page", page);
			map.put("count",count);
			return "person_sale/order";
		}
	// 保存订单
	@RequestMapping(value = "/saveOrder")
	public String updateOrder(HttpSession session, Map<String, Object> map) {

		// 判断用户是否登陆,
		User user = (User) session.getAttribute("user");
		if (user == null) {
			map.put("notLogin", "noLogin");
			return "msg";
		}
		// 从session获取购物车对象
		Cart cart = (Cart) session.getAttribute("cart");
		// 如果购物车为空，则返回到我的购物车页面
		if (cart == null) {
			return "redirect:myCart";
		}
		// 获取收货地址ַ
		List<User_address> address_List = user_addressService
				.findByUserAccount(user.getUser_account());

		// 查找用户默认地址ַ
		User_address default_address = user_addressService
				.AddrefindByUserAccount(user.getUser_account());

		map.put("addList", address_List);
		session.setAttribute("default_add", default_address);

		// 订单对象
		Order order = new Order();
		order.setOrder_id(new SimpleDateFormat("yyyyMMddHHmmss").format(new Date())+user.getUser_account());
		order.setTotal(cart.getTotal());
		// 1:未付款. 2.已经付款，没有发货 3.发货，没有确认发货 4.交易完成
		order.setState(2);
		// 设置订单时间
		order.setOrdertime(new Date());
		// 设置订单关联的客户:
		order.setUser(user);
		//设置地址
		order.setProvince(default_address.getProvince());
		order.setCity(default_address.getCity());
		order.setArea(default_address.getArea());
		order.setAddr(default_address.getAddress_detail());
		//设置收件人电话
		order.setPhone(default_address.getPhone());
		//设置收件人姓名
		order.setName(default_address.getReceiver_name());
		
		// 设置订单项集合:
		Set<Orderitem> sets = new HashSet<Orderitem>();
		for (CartItem cartItem : cart.getCartItems()) {
			// 订单项的信息从购物项获得的.
			Orderitem orderItem = new Orderitem();
			orderItem.setCount(cartItem.getCount());
			orderItem.setSubtotal(cartItem.getSubtotal());
			orderItem.setProduct(cartItem.getProduct());
			// 双向关联时在多的一方设置一的一方的属性
			orderItem.setOrder(order);
			// 把orderItem对象添加到集合中
			sets.add(orderItem);
		}
		// 双向关联时在一的一方设置多的一方的属性
		order.setOrderitems(sets);
		orderService.addOrder(order);
		// 清除购物车
	//	cart.clearCart();
		map.put("order", order);
		return "person_sale/pay";
	}
	
	
	/**
	 * 支付订单
	 * flag = 0   表示尚未支付
	 * flag = 1   表示支付成功
	 * flag = -1 表示支付失败
	 */
	@RequestMapping(value = "/payOrder")
	public String payOrder(HttpSession session, Map<String, Object> map,HttpServletRequest req) {
		String flag;	
		if(req.getParameter("reqReserved") == null){
	    flag = "0"; 
		session.setAttribute("flag", flag);
		String orderId;
		orderId = (new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()));
		session.setAttribute("orderId", orderId);
		
		User user = (User) session.getAttribute("user");

		// 根据用户帐号 查找非默认的用户地址
		List<User_address> address_List = user_addressService
				.findByUserAccount(user.getUser_account());

		// 查找用户默认地址ַ
		User_address default_address = user_addressService
				.AddrefindByUserAccount(user.getUser_account());

		map.put("addList", address_List);
		session.setAttribute("default_add", default_address);
		}
		else {
			flag = req.getParameter("reqReserved");
			String txnAmt = req.getParameter("txnAmt");
			txnAmt = txnAmt.substring(0,txnAmt.length()-2);
			session.setAttribute("flag", flag);
			session.setAttribute("txnAmt", txnAmt);
			saveOrder(session, map);
		}
		return "person_sale/pay";
	}
	/**
	 * 支付完成  保存订单
	 *
	 */
	public void saveOrder(HttpSession session, Map<String, Object> map) {

		User user = (User) session.getAttribute("user");
		Cart cart = (Cart) session.getAttribute("cart");
		// 获取收货地址ַ
		List<User_address> address_List = user_addressService
				.findByUserAccount(user.getUser_account());

		// 查找用户默认地址ַ
		User_address default_address = user_addressService
				.AddrefindByUserAccount(user.getUser_account());

		map.put("addList", address_List);
		session.setAttribute("default_add", default_address);

		// 订单对象
		Order order = new Order();
		order.setOrder_id(new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()));
		order.setTotal(cart.getTotal());
		// 1:未付款. 2.已经付款，没有发货 3.发货，没有确认发货 4.交易完成
		order.setState(2);
		// 设置订单时间
		order.setOrdertime(new Date());
		// 设置订单关联的客户:
		order.setUser(user);
		//设置地址
		order.setProvince(default_address.getProvince());
		order.setCity(default_address.getCity());
		order.setArea(default_address.getArea());
		order.setAddr(default_address.getAddress_detail());
		//设置收件人电话
		order.setPhone(default_address.getPhone());
		//设置收件人姓名
		order.setName(default_address.getReceiver_name());
		
		// 设置订单项集合:
		Set<Orderitem> sets = new HashSet<Orderitem>();
		for (CartItem cartItem : cart.getCartItems()) {
			// 订单项的信息从购物项获得的.
			Orderitem orderItem = new Orderitem();
			orderItem.setCount(cartItem.getCount());
			orderItem.setSubtotal(cartItem.getSubtotal());
			orderItem.setProduct(cartItem.getProduct());
			// 双向关联时在多的一方设置一的一方的属性
			orderItem.setOrder(order);
			// 把orderItem对象添加到集合中
			sets.add(orderItem);
		}
		// 双向关联时在一的一方设置多的一方的属性
		order.setOrderitems(sets);
		orderService.addOrder(order);
		// 清除购物车
		cart.clearCart();
		map.put("order", order);
	}
	
	/**
	 * 服务端模拟改变订单状态。
	 * 订单（orderState）状态说明
	 * 1.待付款 
	 * 2.待发货 
	 * 3.已发货 
	 * 4.待评价
	 * 5.退款申请 
	 * 6.退款成功
	 * orderState为int类型 这里偷懒采用+1 <6实际购物环节中不可取
	 */
	@RequestMapping(value = "/changeOrderState/{order_id}")
	public String changeOrderState(@PathVariable("order_id") String order_id,
			HttpSession session){
		Order order = orderService.findByOrder_id(order_id);
		if(order.getState()<4){ order.setState(order.getState()+1);}
		orderService.update(order);
		return "redirect:/findOrderByUserAccount/1";
	}
	/**
	 * 服务端模拟退款/退货
	 * 订单（orderState）状态说明
	 * 5.退款申请 
	 * 6.退款成功
	 * orderState为int类型 这里偷懒采用+1 <6&&>4实际购物环节中不可取
	 */
	@RequestMapping(value = "/refundOrder/{order_id}")
	public String refundOrder(@PathVariable("order_id") String order_id,
			HttpSession session){
		Order order = orderService.findByOrder_id(order_id);
		if(order.getState()<4)
		{
			order.setState(5);
		}else{
			order.setState(6);
		}
		orderService.update(order);
		return "redirect:/findOrderByUserAccount/1";
	}
	/**
	 * 查詢被退款/退货的產品
	 * 根据订单号
	 */
	 //根据订单状态
	@RequestMapping(value="/refund/{page}")
	public String findOrderByState(HttpSession session,Map<String,Object> map
			,@PathVariable("page") Integer page){
		//从session获取user对象
		User user = (User) session.getAttribute("user");
		if(user == null){
			map.put("notLogin", "notLogin");
			return "msg";
		}
		//查询总共有多少页的数据
		Integer count = orderService.findCountByUser_accountAndState(user.getUser_account());
		if(page > count){
			page = 1;
		}
		//根据用户分页查询订单
		List<Order> orders = orderService.findByUser_accountAndState(user.getUser_account(), page);
		
		map.put("orders", orders);
		map.put("page", page);
		map.put("count",count);
		return "person_sale/order";
	}
}
