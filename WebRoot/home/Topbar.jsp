<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
</head>

<body>
	<div class="am-container header">
		<ul class="message-l">
			<div class="topMessage">
				<c:if test="${sessionScope.user == null}">
					<div class="menu-hd">
						<a href="http://localhost:8080/cwhShop/userLogin" onclick="loginOnclick()">亲，请登录</a> 
						<a href="http://localhost:8080/cwhShop/userRegister" target="_top">免费注册</a>
					</div>
				</c:if>
				<c:if test="${sessionScope.user != null}">
					<div>
						<p>
							尊敬的顾客：
							<c:out value="${sessionScope.user.user_account}" />
							欢迎你的登录！ <a href="http://localhost:8080/cwhShop/userLogout"
								class="logout">退出</a>
						</p>
					</div>
				</c:if>
			</div>
		</ul>
		<ul class="message-r">
			<div class="topMessage home">
				<div class="menu-hd">
					<a href="http://localhost:8080/cwhShop/homePage" target="_top" class="h">商城首页</a>
				</div>
			</div>
			<c:if test="${sessionScope.user != null}">
			<div class="topMessage my-shangcheng">
				<div class="menu-hd MyShangcheng">
					<a href="http://localhost:8080/cwhShop/information/${sessionScope.user.user_account}" target="_top"><i class="am-icon-user am-icon-fw"></i>个人中心</a>
				</div>
			</div>
			<div class="topMessage mini-cart">
				<div class="menu-hd">
					<a id="mc-menu-hd" href="http://localhost:8080/cwhShop/myCart" target="_top"><i
						class="am-icon-shopping-cart  am-icon-fw"></i><span>购物车</span><strong
						id="J_MiniCartNum" class="h">(<c:if test="${sessionScope.cart.product_total !=null}"><c:out value ="${sessionScope.cart.product_total}"/></c:if>
						<c:if test="${sessionScope.cart.product_total==NULL}">
					0)</c:if>件</strong> </a>
				</div>
			</div>
			<div class="topMessage favorite">
				<div class="menu-hd">
					<a href="#" target="_top"><i class="am-icon-heart am-icon-fw"></i><span>收藏夹</span>
					</a>
				</div>
				</div>
				</c:if>
		</ul>
	</div>
</body>
</html>
