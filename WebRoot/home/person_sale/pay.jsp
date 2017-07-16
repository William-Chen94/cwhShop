<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0 ,minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

		<title>结算页面</title>

		<link href="${pageContext.request.contextPath}/AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css" />

		<link href="${pageContext.request.contextPath}/basic/css/demo.css" rel="stylesheet" type="text/css" />
		<link href="${pageContext.request.contextPath}/css/cartstyle.css" rel="stylesheet" type="text/css" />

		<link href="${pageContext.request.contextPath}/css/jsstyle.css" rel="stylesheet" type="text/css" />

		<script type="text/javascript" src="${pageContext.request.contextPath}/js/address.js"></script>

	</head>

	<body>

		<!--顶部导航条 -->
			<%@include file="/home/Topbar.jsp"%>
			<!--悬浮搜索框-->
			<%@include file="/home/suspendSearch.jsp"%>

			<div class="clear"></div>
			<c:if test="${flag == 0}">
			<div class="concent">
				<!--地址 -->
				<div class="paycont">
					<div class="address">
						<h3>确认收货地址 </h3>
						<div class="control">
							<div class="tc-btn createAddr theme-login am-btn am-btn-danger">使用新地址</div>
						</div>
						<div class="clear"></div>
						<ul class="am-avg-sm-1 am-avg-md-3 am-thumbnails">
						<li class="user-addresslist defaultAddr"><span
							class="new-option-r"><i class="am-icon-check-circle"></i>默认地址</span>
							<p class="new-tit new-p-re">
								<span class="new-txt"><c:out
										value="${default_add.receiver_name}" />
								</span> <span class="new-txt-rd2">${default_add.phone}</span>
							</p>
							<div class="new-mu_l2a new-p-re">
								<p class="new-mu_l2cw">
									<span class="title">地址：</span> <span class="province"><c:out value="${default_add.province}" />
									</span> <span class="city"><c:out value="${default_add.city}" />
									</span> <span class="dist"><c:out value="${default_add.area}" />
									</span> <span class="street"><c:out
											value="${default_add.address_detail}" />
									</span>
								</p>
							</div>
							<div class="new-addr-btn">
								<a href="searchAddress/${default_add.address_id}"><i
									class="am-icon-edit"></i>编辑</a> <span class="new-addr-bar">|</span>
								<a href="delAddress/${default_add.address_id}"
									onclick="delClick(this);"><i class="am-icon-trash"></i>删除</a>
							</div></li>
						<c:forEach var="a" items="${addList}">
							<li class="user-addresslist"><span class="new-option-r"><i
									class="am-icon-check-circle"></i><a
									href="setDefault/${a.address_id}">设为默认</a>
							</span>
								<p class="new-tit new-p-re">
									<span class="new-txt"><c:out value="${a.receiver_name}" />
									</span> <span class="new-txt-rd2"><c:out value="${a.phone}" />
									</span>
								</p>
								<div class="new-mu_l2a new-p-re">
									<p class="new-mu_l2cw">
										<span class="title">地址：</span> <span class="province"><c:out
												value="${a.province}" />
										</span> <span class="city"><c:out value="${a.city}" />
										</span> <span class="dist"><c:out value="${a.area}" />
										</span> <span class="street"><c:out
												value="${a.address_detail}" />
										</span>
									</p>
								</div>
								<div class="new-addr-btn">
									<a href="searchAddress/${a.address_id}"><i
										class="am-icon-edit"></i>编辑</a> <span class="new-addr-bar">|</span>
									<a href="javascript:void(0);" onclick="delClick(this);"><i
										class="am-icon-trash"></i>删除</a>
								</div></li>
						</c:forEach>
					</ul>
						<div class="clear"></div>
					</div>
					<!--物流 -->
					<div class="logistics">
						<h3>选择物流方式</h3>
						<ul class="op_express_delivery_hot">
							<li data-value="yuantong" class="OP_LOG_BTN  "><i class="c-gap-right" style="background-position:0px -468px"></i>圆通<span></span></li>
							<li data-value="shentong" class="OP_LOG_BTN  "><i class="c-gap-right" style="background-position:0px -1008px"></i>申通<span></span></li>
							<li data-value="yunda" class="OP_LOG_BTN  "><i class="c-gap-right" style="background-position:0px -576px"></i>韵达<span></span></li>
							<li data-value="zhongtong" class="OP_LOG_BTN op_express_delivery_hot_last "><i class="c-gap-right" style="background-position:0px -324px"></i>中通<span></span></li>
							<li data-value="shunfeng" class="OP_LOG_BTN  op_express_delivery_hot_bottom"><i class="c-gap-right" style="background-position:0px -180px"></i>顺丰<span></span></li>
						</ul>
					</div>
					<div class="clear"></div>

					<!--支付方式-->
					<div class="logistics">
						<h3>选择支付方式</h3>
						<ul class="pay-list">
							<li class="pay card"><img src="${pageContext.request.contextPath}/images/wangyin.jpg" />银联<span></span></li>
							<li class="pay qq"><img src="${pageContext.request.contextPath}/images/weizhifu.jpg" />微信<span></span></li>
							<li class="pay taobao"><img src="${pageContext.request.contextPath}/images/zhifubao.jpg" />支付宝<span></span></li>
						</ul>
					</div>
					<div class="clear"></div>

					<!--订单 -->
					<div class="concent">
						<div id="payTable">
							<h3>确认订单信息</h3>
							<div class="cart-table-th">
								<div class="wp">

									<div class="th th-item">
										<div class="td-inner">商品信息</div>
									</div>
									<div class="th th-price">
										<div class="td-inner">单价</div>
									</div>
									<div class="th th-amount">
										<div class="td-inner">数量</div>
									</div>
									<div class="th th-sum">
										<div class="td-inner">金额</div>
									</div>
									<div class="th th-oplist">
										<div class="td-inner">配送方式</div>
									</div>

								</div>
							</div>
							<div class="clear"></div>

							<tr class="item-list">
								<div class="bundle  bundle-last">
							</tr>
							<div class="clear"></div>
							</div>

							<tr id="J_BundleList_s_1911116345_1" class="item-list">
								<div id="J_Bundle_s_1911116345_1_0" class="bundle  bundle-last">
									<div class="bundle-main">
										<c:forEach var="cartItem" items="${sessionScope.cart.cartItems}">
						<ul class="item-content clearfix">
							<li class="td td-item">
								<div class="item-pic">
									<a href="#" 
										data-title=""
										class="J_MakePoint" data-point="tbcart.8.12"> 
										<img
										src="${pageContext.request.contextPath}/${cartItem.product.image}" 
										style="width:80px;height:80px;"/>
										</a>
								</div>
								<div class="item-info">
									<div class="item-basic-info">
										<a href="#" 
											class="item-title J_MakePoint" data-point="tbcart.8.11">
											<c:out value="${cartItem.product.product_name}"/>
											</a>
									</div>
								</div></li>
							<li class="td td-info">
								<div class="item-props item-props-can">
									<span class="sku-line">颜色：</span><c:out value="${cartItem.color}"/>
									 <span class="sku-line">尺寸:<c:out value="${cartItem.size}"/></span>
									<span tabindex="0" class="btn-edit-sku theme-login">修改</span> <i
										class="theme-login am-icon-sort-desc"></i>
								</div></li>
							<li class="td td-price">
								<div class="item-price price-promo-promo">
									<div class="price-content">
										<div class="price-line">
											<em class="price-original"><c:out value="${cartItem.product.market_price}"/></em>
										</div>
										<div class="price-line">
											<em class="J_Price price-now" tabindex="0"><c:out value="${cartItem.product.sale_price}"/></em>
										</div>
									</div>
								</div></li>
							<li class="td td-amount">
								<div class="amount-wrapper ">
									<div class="item-amount ">
										<div class="sl">
											<input id="min" class="am-btn am-btn-default" name=""
												type="button" value="-" disabled="true"/> 
											<input id="text_box" name=""
														type="text" value="${cartItem.count}" style="width:30px;" disabled="true"/> 
										     <input
												id="add" class="am-btn am-btn-default" name="" type="button"
												value="+" disabled="true"/>
										</div>
									</div>
								</div></li>
							<li class="td td-sum">
								<div class="td-inner">
									<em tabindex="0" class="J_ItemSum number"><c:out value="${cart.product_total}"/></em>
								</div></li>
						</ul>
						</c:forEach>
						<div class="clear"></div>
						</div>
							</tr>
							</div>
							<div class="clear"></div>
							<div class="pay-total">
						<!--留言-->
							<div class="order-extra">
								<div class="order-user-info">
									<div id="holyshit257" class="memo">
										<label>买家留言：</label>
										<input type="text" title="选填,对本次交易的说明（建议填写已经和卖家达成一致的说明）" placeholder="选填,建议填写和卖家达成一致的说明" class="memo-input J_MakePoint c2c-text-default memo-close">
										<div class="msg hidden J-msg">
											<p class="error">最多输入500个字符</p>
										</div>
									</div>
								</div>

							</div>
							<!--优惠券 -->
							<div class="buy-agio">
								<li class="td td-coupon">

									<span class="coupon-title">优惠券</span>
									<select data-am-selected>
										<option value="a">
											<div class="c-price">
												<strong>￥8</strong>
											</div>
											<div class="c-limit">
												【消费满95元可用】
											</div>
										</option>
										<option value="b" selected>
											<div class="c-price">
												<strong>￥3</strong>
											</div>
											<div class="c-limit">
												【无使用门槛】
											</div>
										</option>
									</select>
								</li>

								<li class="td td-bonus">

									<span class="bonus-title">红包</span>
									<select data-am-selected>
										<option value="a">
											<div class="item-info">
												¥50.00<span>元</span>
											</div>
											<div class="item-remainderprice">
												<span>还剩</span>10.40<span>元</span>
											</div>
										</option>
										<option value="b" selected>
											<div class="item-info">
												¥50.00<span>元</span>
											</div>
											<div class="item-remainderprice">
												<span>还剩</span>50.00<span>元</span>
											</div>
										</option>
									</select>
								</li>
							</div>
							<div class="clear"></div>
							</div>
							<!--含运费小计 -->
							<div class="buy-point-discharge ">
								<p class="price g_price ">
									合计（含运费） <span>¥</span><em class="pay-sum"><c:out value="${sessionScope.cart.total}"/></em>
								</p>
							</div>

							<!--信息 -->
							<div class="order-go clearfix">
							<form class="api-form" method="post" action="/ACPSample_B2C/form_6_2_FrontConsume" >
								<div class="pay-confirm clearfix">
									<div class="box">
										<div tabindex="0" id="holyshit267" class="realPay"><em class="t">实付款：</em>
											<span class="price g_price ">
                                    <span>¥</span> <em class="style-large-bold-red " id="J_ActualFee">
											   <input id="txnAmt" type="text" name="txnAmt" placeholder="交易金额" value="${sessionScope.cart.total}" title="单位为分,不能带小数点 " required="required"/></em>
											 	<input id="orderId" type="hidden" name="orderId" placeholder="商户订单号" value="${orderId} " title="商户订单号" />
												<input id="flag" type="hidden" name="flag" placeholder="商户订单号" value="${flag} " title="自行标志，用于判断交易是否成功 " />
											</span>
										</div>

										<div id="holyshit268" class="pay-address">

											<p class="buy-footer-address">
												<span class="buy-line-title buy-line-title-type">寄送至：</span>
												<span class="buy--address-detail">
								   				<span class="province"><c:out value="${default_add.province}"/></span>
												<span class="city"><c:out value="${default_add.city}"/></span>
												<span class="dist"><c:out value="${default_add.area}"/></span>
												<span class="street"><c:out value="${default_add.address_detail}"/></span>
												</span>
												</span>
											</p>
											<p class="buy-footer-address">
												<span class="buy-line-title">收货人：</span>
												<span class="buy-address-detail">   
                                         		<span class="buy-user"><c:out value="${default_add.receiver_name}"/> </span>
												<span class="buy-phone"><c:out value="${default_add.phone}"/></span>
												</span>
											</p>
									</div>
									<div id="holyshit269" class="submitOrder">
										<div class="go-btn-wrap">
											<!-- <a id="J_Go" href="/cwhShop/payCheck" class="btn-go" tabindex="0" title="点击此按钮，提交订单">提交订单</a> -->
											<input type = "submit" id="J_Go" class="btn-go" tabindex="0" value="点击此按钮，提交订单" align="right"/>
										</div>
									</div>
									<div class="clear"></div>
								</div>
								</form>
							</div>
						</div>
						

						<div class="clear"></div>
					</div>
					</c:if>
					<c:if test="${flag == 1}">
					<%@include file="/home/person_sale/success.jsp"%>
					</c:if>
				</div>
				<%@include file="/home/footer.jsp"%>
			</div>
			<div class="theme-popover-mask"></div>
			<div class="theme-popover">

				<!--标题 -->
				<hr/>

			</div>

			<div class="clear"></div>
	</body>

</html>
