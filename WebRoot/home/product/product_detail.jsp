<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

<title>商品页面</title>

<link
	href="${pageContext.request.contextPath}/AmazeUI-2.4.2/assets/css/admin.css"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath}/AmazeUI-2.4.2/assets/css/amazeui.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/basic/css/demo.css"
	rel="stylesheet" type="text/css" />
<link type="text/css"
	href="${pageContext.request.contextPath}/css/optstyle.css"
	rel="stylesheet" />
<link type="text/css"
	href="${pageContext.request.contextPath}/css/style.css"
	rel="stylesheet" />

<script type="text/javascript"
	src="${pageContext.request.contextPath}/basic/js/jquery-1.9.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/basic/js/quick_links.js"></script>

<script type="text/javascript"
	src="${pageContext.request.contextPath}/AmazeUI-2.4.2/assets/js/amazeui.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.imagezoom.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.flexslider.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/list.js"></script>
<script>
	function saveCart() {
		document.getElementById("cartForm").submit();
	}
	function buyImediate(){
		document.getElementById("cartForm").submit();
	}
</script>
</head>

<body>


	<!--顶部导航条 -->
	<%@include file="/home/Topbar.jsp"%>
	<!--悬浮搜索框-->

	<%@include file="/home/suspendSearch.jsp"%>

	<div class="clear"></div>
	<b class="line"></b>
	<div class="listMain">

		<!--分类-->
		<div class="nav-table">
			<%@include file="/home/navigation.jsp"%>
		</div>
		<ol class="am-breadcrumb am-breadcrumb-slash">
			<li><a href="#">首页</a></li>
			<li><a href="#">分类</a></li>
			<li class="am-active">内容</li>
		</ol>
		<script type="text/javascript">
			$(function() {
			});
			$(window).load(function() {
				$('.flexslider').flexslider({
					animation : "slide",
					start : function(slider) {
						$('body').removeClass('loading');
					}
				});
			});
		</script>
		<div class="scoll">
			<section class="slider">
				<div class="flexslider">
					<ul class="slides">
						<li><img
							src="${pageContext.request.contextPath}/images/01.jpg"
							title="pic" />
						</li>
						<li><img
							src="${pageContext.request.contextPath}/images/02.jpg" />
						</li>
						<li><img
							src="${pageContext.request.contextPath}/images/03.jpg" />
						</li>
					</ul>
				</div>
			</section>
		</div>

		<!--放大镜-->

		<div class="item-inform">
			<div class="clearfixLeft" id="clearcontent">

				<div class="box">
					<script type="text/javascript">
						$(document).ready(
								function() {
									$(".jqzoom").imagezoom();
									$("#thumblist li a").click(
											function() {
												$(this).parents("li").addClass(
														"tb-selected")
														.siblings()
														.removeClass(
																"tb-selected");
												$(".jqzoom").attr(
														'src',
														$(this).find("img")
																.attr("mid"));
												$(".jqzoom").attr(
														'rel',
														$(this).find("img")
																.attr("big"));
											});
								});
					</script>

					<div class="tb-booth tb-pic tb-s310">
						<a href="${pageContext.request.contextPath}/${product.image}"><img
							src="${pageContext.request.contextPath}/${product.image}"
							alt="细节展示放大镜特效"
							rel="${pageContext.request.contextPath}/${product.image}"
							class="jqzoom" /> </a>
					</div>
					<ul class="tb-thumb" id="thumblist">
						<li class="tb-selected">
							<div class="tb-pic tb-s40">
								<a href="#"><img
									src="${pageContext.request.contextPath}/${product.image}"
									mid="${pageContext.request.contextPath}/${product.image}"
									big="${pageContext.request.contextPath}/${product.image}">
								</a>
							</div>
						</li>
					</ul>
				</div>

				<div class="clear"></div>
			</div>

			<div class="clearfixRight">

				<!--规格属性-->
				<!--名称-->
				<div class="tb-detail-hd">
					<h1>
						<c:out value="${product.product_name}" />
					</h1>
				</div>
				<div class="tb-detail-list">
					<!--价格-->
					<div class="tb-detail-price">
						<li class="price iteminfo_price">
							<dt>促销价</dt>
							<dd>
								<em>¥</em><b class="sys_item_price"><c:out
										value="${product.sale_price}" /> </b>
							</dd>
						</li>
						<li class="price iteminfo_mktprice">
							<dt>原价</dt>
							<dd>
								<em>¥</em><b class="sys_item_mktprice"><c:out
										value="${product.market_price}" /> </b>
							</dd>
						</li>
						<div class="clear"></div>
					</div>

					<!--地址-->
					<dl class="iteminfo_parameter freight">
						<dt>配送至</dt>
						<div class="iteminfo_freprice">
							<div class="am-form-content address">
								<select data-am-selected>
									<option value="a">浙江省</option>
									<option value="b">湖北省</option>
								</select> <select data-am-selected>
									<option value="a">温州市</option>
									<option value="b">武汉市</option>
								</select> <select data-am-selected>
									<option value="a">瑞安区</option>
									<option value="b">洪山区</option>
								</select>
							</div>
							<div class="pay-logis">
								快递<b class="sys_item_freprice">10</b>元
							</div>
						</div>
					</dl>
					<div class="clear"></div>

					<!--销量-->
					<ul class="tm-ind-panel">
						<li class="tm-ind-item tm-ind-sellCount canClick">
							<div class="tm-indcon">
								<span class="tm-label">月销量</span><span class="tm-count">1015</span>
							</div>
						</li>
						<li class="tm-ind-item tm-ind-sumCount canClick">
							<div class="tm-indcon">
								<span class="tm-label">累计销量</span><span class="tm-count">6015</span>
							</div>
						</li>
						<li class="tm-ind-item tm-ind-reviewCount canClick tm-line3">
							<div class="tm-indcon">
								<span class="tm-label">累计评价</span><span class="tm-count">640</span>
							</div>
						</li>
					</ul>
					<div class="clear"></div>

					<!--各种规格-->
					<dl class="iteminfo_parameter sys_item_specpara">
						<dt class="theme-login">
							<div class="cart-title">
								可选规格<span class="am-icon-angle-right"></span>
							</div>
						</dt>
						<dd>
							<!--操作页面-->

							<div class="theme-popover-mask"></div>

							<div class="theme-popover">
								<div class="theme-span"></div>
								<div class="theme-poptit">
									<a href="javascript:;" title="关闭" class="close">×</a>
								</div>
								<div class="theme-popbod dform">
									<form 
										class="theme-signin" 
										name="loginform"
										id="cartForm"
										action="${pageContext.request.contextPath }/addCart"
										method="post">

										<div class="theme-signin-left">
											<div class="theme-options">
												<div class="cart-title">尺码</div>
												<ul id="test">
													<li class="sku-line" id="S"><input id="size_s" type="hidden" name="" value="S">S<i></i></li>
													<li class="sku-line" id="M"><input id="size_m" type="hidden" name="" value="M">M<i></i></li>
													<li class="sku-line" id="L"><input id="size_l" type="hidden" name="" value="L">L<i></i></li>
													<li class="sku-line" id="XL"><input id="size_xl" type="hidden" name="" value="XL">XL<i></i></li>
												</ul>
											</div>
											<div class="theme-options">
												<div class="cart-title">颜色</div>
												<ul>
													<li class="sku-line" id="black"><input id="color_black" type="hidden" name="" value="黑色">黑<i></i>
													</li>
													<li class="sku-line" id="white"><input id="color_white" type="hidden" name="" value="白色">白<i></i>
													</li>
												</ul>
											</div>
											<div class="theme-options">
												<div class="cart-title number">数量</div>
												<dd>
													<input id="min" class="am-btn am-btn-default" name=""
														type="button" value="-" /> 
													<input id="count" name="count"
														type="text" value="1" style="width:30px;" /> 
													<input
														id="add" class="am-btn am-btn-default" name=""
														type="button" value="+" /> 
													<span id="Stock"
														class="tb-hidden">库存<span class="stock">1000</span>件</span>
												</dd>
												<script>
														    $('#min').click(function(){
																var numberStr=$('#count');
																	var number=parseInt(numberStr.val());
																	if(number-1>0){
																	numberStr.val(number-1);
																	$(".stock").html(parseInt($(".stock").html())+1);
																	}
																});
														    $('#add').click(function(){
																var numberStr=$('#count');
																	var number=parseInt(numberStr.val());
																	numberStr.val(number+1);
																	if(parseInt($(".stock").html()) > 0)
																	$(".stock").html(parseInt($(".stock").html())-1);
																});
														</script>
											</div>
											<div class="theme-options">
												<div class="cart-title">店铺地址：  </div>
												<ul>
													<input id ="destination"  class="btn am-btn am-btn-warning" type="text" name="" value="${product.store.store_address}" disabled="true">
													
													<input class="btn am-btn am-btn-warning" type="button" name="" value="到这里去" onclick="gotoAddress()">
													
												</ul>
											</div>
											<script type="text/javascript">
											function gotoAddress(){
													var destination = $('#destination').val();
													window.location.href="http://localhost:8080/cwhShop/findAddress/"+ encodeURI(encodeURI(destination));
											}
											</script>
											<div class="clear"></div>
											<div class="btn-op">
												<div class="btn am-btn am-btn-warning">确认</div>
												<div class="btn close am-btn am-btn-warning">取消</div>
											</div>
										</div>
										<div class="theme-signin-right">
											<div class="img-info">
												<img
													src="${pageContext.request.contextPath}/${product.image}" />
											</div>
											<div class="text-info">
												<span class="J_Price price-now">¥39.00</span> <span
													id="Stock" class="tb-hidden">库存<span class="stock">1000</span>件</span>
											</div>
										</div>
									</form>
								</div>
							</div>

						</dd>
					</dl>
					<div class="clear"></div>
					<!--活动	-->
					<div class="shopPromotion gold">
						<div class="hot">
							<dt class="tb-metatit">店铺优惠</dt>
							<div class="gold-list">
								<p>
									购物满2件打8折，满3件7折<span>点击领券<i class="am-icon-sort-down"></i>
									</span>
								</p>
							</div>
						</div>
						<div class="clear"></div>
						<div class="coupon">
							<dt class="tb-metatit">优惠券</dt>
							<div class="gold-list">
								<ul>
									<li>125减5</li>
									<li>198减10</li>
									<li>298减20</li>
								</ul>
							</div>
						</div>
					</div>
				</div>

				<div class="pay">
					<div class="pay-opt">
						<a href="home.html"><span class="am-icon-home am-icon-fw">首页</span>
						</a> <a><span class="am-icon-heart am-icon-fw">收藏</span> </a>

					</div>
					<li>
						<div class="clearfix tb-btn tb-btn-buy theme-login">
							<a id="LikBuy" title="立即购买" href="javascript:void(0);" onclick="buyImediate()">立即购买</a>
						</div></li>
					<li>
						<div class="clearfix tb-btn tb-btn-basket theme-login">
							<a id="LikBasket" title="加入购物车" href="javascript:void(0);" onclick="saveCart()"><i></i>加入购物车</a>
						</div></li>
				</div>

			</div>

			<div class="clear"></div>

		</div>

		<!--优惠套装-->
		
		<div class="clear"></div>
		<!-- introduce-->
	</div>
	<!--菜单 -->
		<%@include file="/home/SiderBar.jsp"%>
</body>

</html>