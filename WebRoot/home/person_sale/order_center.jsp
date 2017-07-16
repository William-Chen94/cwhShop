<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>

<head>
</head>

<body>
	<div class="center">
			<div class="col-main">
				<div class="main-wrap">

					<div class="user-order">

						<!--标题 -->
						<div class="am-cf am-padding">
							<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">订单管理</strong> / <small>Order</small></div>
						</div>
						<hr/>

						<div class="am-tabs am-tabs-d2 am-margin" data-am-tabs>

							<ul class="am-avg-sm-5 am-tabs-nav am-nav am-nav-tabs">
								<li class="am-active"><a href="#tab1">所有订单</a></li>
								<li><a href="#tab2">待付款</a></li>
								<li><a href="#tab3">待发货</a></li>
								<li><a href="#tab4">待收货</a></li>
								<li><a href="#tab5">待评价</a></li>
							</ul>

							<div class="am-tabs-bd">
								<div class="am-tab-panel am-fade am-in am-active" id="tab1">
									<div class="order-top">
										<div class="th th-item">
											<td class="td-inner">商品</td>
										</div>
										<div class="th th-price">
											<td class="td-inner">单价</td>
										</div>
										<div class="th th-number">
											<td class="td-inner">数量</td>
										</div>
										<div class="th th-operation">
											<td class="td-inner">商品操作</td>
										</div>
										<div class="th th-amount">
											<td class="td-inner">合计</td>
										</div>
										<div class="th th-status">
											<td class="td-inner">交易状态</td>
										</div>
										<div class="th th-change">
											<td class="td-inner">交易操作</td>
										</div>
									</div>
									<div class="order-main">
									<div class="order-list">

										<!--交易成功-->
										<div class="order-status5">
											<c:forEach var="o" items="${orders}">
												<div class="order-title">
													<div class="dd-num">
														订单编号：<a href="javascript:;"> <c:out
																value="${o.order_id}" />
														</a>
													</div>
													<span>成交时间：</span>
													<c:out value="${o.ordertime}" />
													<c:if test="${o.state == 1}">
														<a href="../changeOrderState/${o.order_id}" />
															<font color="red">付款</font> </a>
													</c:if>
													<c:if test="${o.state == 2}">
														<a href="../changeOrderState/${o.order_id}" />
														<font color="red">提醒发货</font>
														</a>
													</c:if>
													<c:if test="${o.state == 3}">
														<a href="../changeOrderState/${o.order_id}" />
													</c:if>
													<c:if test="${o.state == 4}">
														<a href="../changeOrderState/${o.order_id}" />
															<font color="red">评价</font> </a>
													</c:if>
												</div>
												<div class="order-content">
													<c:forEach var="orderitems" items="${o.orderitems}">
														<div class="order-left">
															<ul class="item-list">
																<li class="td td-item">
																	<div class="item-pic">
																		<img
																			src="${ pageContext.request.contextPath }/${orderitems.product.image}" />
																	</div>
																	<div class="item-info">
																		<div class="item-basic-info">
																			<a
																				href="/cwhShop/product_detail/${orderitems.product.product_id}">
																				<p>
																					<c:out value="${orderitems.product.product_name}" />
																				</p>
																				<p class="info-little">
																					<c:out value="${orderitems.product.color}" />
																					<br />尺码：
																					<c:out value="${orderitems.product.size}" />
																				</p> </a>
																		</div>
																	</div></li>
																<li class="td td-price">
																	<div class="item-price">
																		<c:out value="${orderitems.product.sale_price}" />
																	</div></li>
																<li class="td td-number">
																	<div class="item-number">
																		<span>×</span>
																		<c:out value="${orderitems.count}" />
																	</div></li>
																<li class="td td-operation">
																	<div class="item-operation">
																		<a href="../refundOrder/${o.order_id}">退款/退货</a>
																	</div></li>
															</ul>
														</div>
														<div class="order-right">
															<li class="td td-amount">
																<div class="item-amount">
																	合计：
																	<c:out value="${orderitems.subtotal}" />
																	<p>
																		含运费：<span>10.00</span>
																	</p>
																</div></li>
															<li class="td td-amount">
																<div class="item-amount">
																	<c:if test="${o.state == 1}">
																		<font color="red">待付款</font>
																	</c:if>
																	<c:if test="${o.state == 2}">
																		<font color="red">待发货</font>
																	</c:if>
																	<c:if test="${o.state == 3}">
																		<font color="red">待收货</font>
																	</c:if>
																	<c:if test="${o.state == 4}">
																		<font color="red">待评价</font>
																	</c:if>
																	<c:if test="${o.state == 5}">
																		<font color="red">已经关闭</font>
																	</c:if>

																</div></li>
														</div>
													</c:forEach>
												</div>
											</c:forEach>
										</div>

									</div>

								</div>
								</div>
								<div class="am-tab-panel am-fade" id="tab2">

									<div class="order-top">
										<div class="th th-item">
											<td class="td-inner">商品</td>
										</div>
										<div class="th th-price">
											<td class="td-inner">单价</td>
										</div>
										<div class="th th-number">
											<td class="td-inner">数量</td>
										</div>
										<div class="th th-operation">
											<td class="td-inner">商品操作</td>
										</div>
										<div class="th th-amount">
											<td class="td-inner">合计</td>
										</div>
										<div class="th th-status">
											<td class="td-inner">交易状态</td>
										</div>
										<div class="th th-change">
											<td class="td-inner">交易操作</td>
										</div>
									</div>
									<div class="order-main">
									<div class="order-list">
										<!--待付款-->
										<div class="order-status5">
											<c:forEach var="o" items="${orders}">
												<c:if test="${o.state == 1}">
													<div class="order-title">
														<div class="dd-num">
															订单编号：<a href="javascript:;"> <c:out
																	value="${o.order_id}" />
															</a>
														</div>
														<span>成交时间：</span>
														<c:out value="${o.ordertime}" />
														<c:if test="${o.state == 1}">
															<a href="../changeOrderState/${o.order_id}" />
																<font color="red">付款</font> </a>
														</c:if>
													</div>
													<div class="order-content">
														<c:forEach var="orderitems" items="${o.orderitems}">
															<div class="order-left">
																<ul class="item-list">
																	<li class="td td-item">
																		<div class="item-pic">
																			<img
																				src="${ pageContext.request.contextPath }/${orderitems.product.image}" />
																		</div>
																		<div class="item-info">
																			<div class="item-basic-info">
																				<a href="#">
																					<p>
																						<c:out value="${orderitems.product.product_name}" />
																					</p>
																					<p class="info-little">
																						<c:out value="${orderitems.product.color}" />
																						<br />尺码：
																						<c:out value="${orderitems.product.size}" />
																					</p> </a>
																			</div>
																		</div></li>
																	<li class="td td-price">
																		<div class="item-price">
																			<c:out value="${orderitems.product.sale_price}" />
																		</div></li>
																	<li class="td td-number">
																		<div class="item-number">
																			<span>×</span>
																			<c:out value="${orderitems.count}" />
																		</div></li>
																	<li class="td td-operation">
																		<div class="item-operation">
																			<a href="#">退款/退货</a>
																		</div></li>
																</ul>
															</div>
															<div class="order-right">
																<li class="td td-amount">
																	<div class="item-amount">
																		合计：
																		<c:out value="${orderitems.subtotal}" />
																		<p>
																			含运费：<span>10.00</span>
																		</p>
																	</div></li>
																<li class="td td-amount">
																	<div class="item-amount">
																		<c:if test="${o.state == 1}">
																			<font color="red">待付款</font>
																		</c:if>
																		<c:if test="${o.state == 2}">
																			<font color="red">待发货</font>
																		</c:if>
																		<c:if test="${o.state == 3}">
																			<font color="red">待收货</font>
																		</c:if>
																		<c:if test="${o.state == 4}">
																			<font color="red">待评价</font>
																		</c:if>
																		<c:if test="${o.state == 5}">
																			<font color="red">已经关闭</font>
																		</c:if>

																	</div></li>
															</div>
														</c:forEach>
													</div>
												</c:if>
											</c:forEach>
										</div>
									</div>

								</div>
								</div>
								<div class="am-tab-panel am-fade" id="tab3">
									<div class="order-top">
										<div class="th th-item">
											<td class="td-inner">商品</td>
										</div>
										<div class="th th-price">
											<td class="td-inner">单价</td>
										</div>
										<div class="th th-number">
											<td class="td-inner">数量</td>
										</div>
										<div class="th th-operation">
											<td class="td-inner">商品操作</td>
										</div>
										<div class="th th-amount">
											<td class="td-inner">合计</td>
										</div>
										<div class="th th-status">
											<td class="td-inner">交易状态</td>
										</div>
										<div class="th th-change">
											<td class="td-inner">交易操作</td>
										</div>
									</div>
									<div class="order-main">
									<div class="order-list">
										<!--待付款-->
										<div class="order-status5">
											<c:forEach var="o" items="${orders}">
												<c:if test="${o.state == 2}">
													<div class="order-title">
														<div class="dd-num">
															订单编号：<a href="javascript:;"> <c:out
																	value="${o.order_id}" />
															</a>
														</div>
														<span>成交时间：</span>
														<c:out value="${o.ordertime}" />
														<c:if test="${o.state == 2}">
															<a href="../changeOrderState/${o.order_id}" />
																<font color="red">提醒发货</font> </a>
														</c:if>
													</div>
													<div class="order-content">
														<c:forEach var="orderitems" items="${o.orderitems}">
															<div class="order-left">
																<ul class="item-list">
																	<li class="td td-item">
																		<div class="item-pic">
																			<img
																				src="${ pageContext.request.contextPath }/${orderitems.product.image}" />
																		</div>
																		<div class="item-info">
																			<div class="item-basic-info">
																				<a href="#">
																					<p>
																						<c:out value="${orderitems.product.product_name}" />
																					</p>
																					<p class="info-little">
																						<c:out value="${orderitems.product.color}" />
																						<br />尺码：
																						<c:out value="${orderitems.product.size}" />
																					</p> </a>
																			</div>
																		</div></li>
																	<li class="td td-price">
																		<div class="item-price">
																			<c:out value="${orderitems.product.sale_price}" />
																		</div></li>
																	<li class="td td-number">
																		<div class="item-number">
																			<span>×</span>
																			<c:out value="${orderitems.count}" />
																		</div></li>
																	<li class="td td-operation">
																		<div class="item-operation">
																			<a href="#">退款/退货</a>
																		</div></li>
																</ul>
															</div>
															<div class="order-right">
																<li class="td td-amount">
																	<div class="item-amount">
																		合计：
																		<c:out value="${orderitems.subtotal}" />
																		<p>
																			含运费：<span>10.00</span>
																		</p>
																	</div></li>
																<li class="td td-amount">
																	<div class="item-amount">
																		<c:if test="${o.state == 1}">
																			<font color="red">待付款</font>
																		</c:if>
																		<c:if test="${o.state == 2}">
																			<font color="red">待发货</font>
																		</c:if>
																		<c:if test="${o.state == 3}">
																			<font color="red">待收货</font>
																		</c:if>
																		<c:if test="${o.state == 4}">
																			<font color="red">待评价</font>
																		</c:if>
																		<c:if test="${o.state == 5}">
																			<font color="red">已经关闭</font>
																		</c:if>

																	</div></li>
															</div>
														</c:forEach>
													</div>
												</c:if>
											</c:forEach>
										</div>
									</div>

								</div>
								</div>
								<div class="am-tab-panel am-fade" id="tab4">
									<div class="order-top">
										<div class="th th-item">
											<td class="td-inner">商品</td>
										</div>
										<div class="th th-price">
											<td class="td-inner">单价</td>
										</div>
										<div class="th th-number">
											<td class="td-inner">数量</td>
										</div>
										<div class="th th-operation">
											<td class="td-inner">商品操作</td>
										</div>
										<div class="th th-amount">
											<td class="td-inner">合计</td>
										</div>
										<div class="th th-status">
											<td class="td-inner">交易状态</td>
										</div>
										<div class="th th-change">
											<td class="td-inner">交易操作</td>
										</div>
									</div>
									<div class="order-main">
									<div class="order-list">
										<!--待收货-->
										<div class="order-status5">
											<c:forEach var="o" items="${orders}">
												<c:if test="${o.state == 3}">
													<div class="order-title">
														<div class="dd-num">
															订单编号：<a href="javascript:;"> <c:out
																	value="${o.order_id}" />
															</a>
														</div>
														<span>成交时间：</span>
														<c:out value="${o.ordertime}" />
														<c:if test="${o.state == 3}">
															<a href="../changeOrderState/${o.order_id}" />
																<font color="red">收货</font> </a>
														</c:if>

													</div>
													<div class="order-content">
														<c:forEach var="orderitems" items="${o.orderitems}">
															<div class="order-left">
																<ul class="item-list">
																	<li class="td td-item">
																		<div class="item-pic">
																			<img
																				src="${ pageContext.request.contextPath }/${orderitems.product.image}" />
																		</div>
																		<div class="item-info">
																			<div class="item-basic-info">
																				<a href="#">
																					<p>
																						<c:out value="${orderitems.product.product_name}" />
																					</p>
																					<p class="info-little">
																						<c:out value="${orderitems.product.color}" />
																						<br />尺码：
																						<c:out value="${orderitems.product.size}" />
																					</p> </a>
																			</div>
																		</div></li>
																	<li class="td td-price">
																		<div class="item-price">
																			<c:out value="${orderitems.product.sale_price}" />
																		</div></li>
																	<li class="td td-number">
																		<div class="item-number">
																			<span>×</span>
																			<c:out value="${orderitems.count}" />
																		</div></li>
																	<li class="td td-operation">
																		<div class="item-operation">
																			<a href="#">退款/退货</a>
																		</div></li>
																</ul>
															</div>
															<div class="order-right">
																<li class="td td-amount">
																	<div class="item-amount">
																		合计：
																		<c:out value="${orderitems.subtotal}" />
																		<p>
																			含运费：<span>10.00</span>
																		</p>
																	</div></li>
																<li class="td td-amount">
																	<div class="item-amount">
																		<c:if test="${o.state == 1}">
																			<font color="red">待付款</font>
																		</c:if>
																		<c:if test="${o.state == 2}">
																			<font color="red">待发货</font>
																		</c:if>
																		<c:if test="${o.state == 3}">
																			<font color="red">待收货</font>
																		</c:if>
																		<c:if test="${o.state == 4}">
																			<font color="red">待评价</font>
																		</c:if>
																		<c:if test="${o.state == 5}">
																			<font color="red">已经关闭</font>
																		</c:if>
																	</div></li>
															</div>
														</c:forEach>
													</div>
												</c:if>
											</c:forEach>
										</div>
									</div>
								</div>
								</div>

								<div class="am-tab-panel am-fade" id="tab5">
									<div class="order-top">
										<div class="th th-item">
											<td class="td-inner">商品</td>
										</div>
										<div class="th th-price">
											<td class="td-inner">单价</td>
										</div>
										<div class="th th-number">
											<td class="td-inner">数量</td>
										</div>
										<div class="th th-operation">
											<td class="td-inner">商品操作</td>
										</div>
										<div class="th th-amount">
											<td class="td-inner">合计</td>
										</div>
										<div class="th th-status">
											<td class="td-inner">交易状态</td>
										</div>
										<div class="th th-change">
											<td class="td-inner">交易操作</td>
										</div>
									</div>
<div class="order-main">
									<div class="order-list">
										<!--待收货-->
										<div class="order-status5">
											<c:forEach var="o" items="${orders}">
												<c:if test="${o.state == 4}">
													<div class="order-title">
														<div class="dd-num">
															订单编号：<a href="javascript:;"> <c:out
																	value="${o.order_id}" />
															</a>
														</div>
														<span>成交时间：</span>
														<c:out value="${o.ordertime}" />
														<c:if test="${o.state == 3}">
															<a href="../changeOrderState/${o.order_id}" />
																<font color="red">收货</font> </a>
														</c:if>

													</div>
													<div class="order-content">
														<c:forEach var="orderitems" items="${o.orderitems}">
															<div class="order-left">
																<ul class="item-list">
																	<li class="td td-item">
																		<div class="item-pic">
																			<img
																				src="${ pageContext.request.contextPath }/${orderitems.product.image}" />
																		</div>
																		<div class="item-info">
																			<div class="item-basic-info">
																				<a href="#">
																					<p>
																						<c:out value="${orderitems.product.product_name}" />
																					</p>
																					<p class="info-little">
																						<c:out value="${orderitems.product.color}" />
																						<br />尺码：
																						<c:out value="${orderitems.product.size}" />
																					</p> </a>
																			</div>
																		</div></li>
																	<li class="td td-price">
																		<div class="item-price">
																			<c:out value="${orderitems.product.sale_price}" />
																		</div></li>
																	<li class="td td-number">
																		<div class="item-number">
																			<span>×</span>
																			<c:out value="${orderitems.count}" />
																		</div></li>
																	<li class="td td-operation">
																		<div class="item-operation">
																			<a href="#">退款/退货</a>
																		</div></li>
																</ul>
															</div>
															<div class="order-right">
																<li class="td td-amount">
																	<div class="item-amount">
																		合计：
																		<c:out value="${orderitems.subtotal}" />
																		<p>
																			含运费：<span>10.00</span>
																		</p>
																	</div></li>
																<li class="td td-amount">
																	<div class="item-amount">
																		<c:if test="${o.state == 1}">
																			<font color="red">待付款</font>
																		</c:if>
																		<c:if test="${o.state == 2}">
																			<font color="red">待发货</font>
																		</c:if>
																		<c:if test="${o.state == 3}">
																			<font color="red">待收货</font>
																		</c:if>
																		<c:if test="${o.state == 4}">
																			<font color="red">待评价</font>
																		</c:if>
																		<c:if test="${o.state == 5}">
																			<font color="red">已经关闭</font>
																		</c:if>
																	</div></li>
															</div>
														</c:forEach>
													</div>
												</c:if>
											</c:forEach>
										</div>
									</div>
								</div>
								</div>
							</div>

						</div>
					</div>
				</div>
				<!--底部-->
			</div>
			<%@include file="/home/person/menu.jsp"%>
		</div>
</body>

</html>