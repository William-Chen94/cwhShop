<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>

	<head>
	</head>
  
  <body>
    <aside class="menu">
				<ul>
					<li class="person active">
						<a href="index.html"><i class="am-icon-user"></i>个人中心</a>
					</li>
					<li class="person">
						<p><i class="am-icon-newspaper-o"></i>个人资料</p>
						<ul>
							<li> <a href="http://localhost:8080/cwhShop/information/${sessionScope.user.user_account}">个人信息</a></li>
							<li> <a href="http://localhost:8080/cwhShop/safe">安全设置</a></li>
							<li> <a href="http://localhost:8080/cwhShop/user_address">地址管理</a></li>
							<li> <a href="http://localhost:8080/cwhShop/cardlist">快捷支付</a></li>
						</ul>
					</li>
					<li class="person">
						<p><i class="am-icon-balance-scale"></i>我的交易</p>
						<ul>
							<li><a href="http://localhost:8080/cwhShop/findOrderByUserAccount/1">订单管理</a></li>
							<li> <a href="http://localhost:8080/cwhShop/refund/1">退款售后</a></li>
							<li> <a href="http://localhost:8080/cwhShop/evaluate">评价商品</a></li>
						</ul>
					</li>
					<li class="person">
						<p><i class="am-icon-dollar"></i>我的资产</p>
						<ul>
							<li> <a href="http://localhost:8080/cwhShop/points">我的积分</a></li>
							<li> <a href="http://localhost:8080/cwhShop/coupon">优惠券 </a></li>
							<li> <a href="http://localhost:8080/cwhShop/bonus">红包</a></li>
							<li> <a href="http://localhost:8080/cwhShop/walletlist">账户明细</a></li>
						</ul>
					</li>

					<li class="person">
						<p><i class="am-icon-tags"></i>我的收藏</p>
						<ul>
							<li> <a href="http://localhost:8080/cwhShop/collection">收藏</a></li>
							<li> <a href="http://localhost:8080/cwhShop/foot">足迹</a></li>														
						</ul>
					</li>

					<!-- <li class="person">
						<p><i class="am-icon-qq"></i>在线客服</p>
						<ul>
							<li> <a href="consultation.html">商品咨询</a></li>
							<li> <a href="suggest.html">意见反馈</a></li>							
							
							<li> <a href="news.html">我的消息</a></li>
						</ul>
					</li> -->
				</ul>

			</aside>
  </body>
</html>
