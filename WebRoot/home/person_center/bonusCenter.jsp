<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body>
<div class="center">
			<div class="col-main">
				<div class="main-wrap">

					<div class="user-bonus">
						<!--标题 -->
						<div class="am-cf am-padding">
							<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">红包</strong> / <small>Bonus</small></div>
						</div>
						<hr/>

						<div class="am-tabs-d2 am-tabs  am-margin" data-am-tabs>

							<ul class="am-avg-sm-2 am-tabs-nav am-nav am-nav-tabs">
								<li class="am-active"><a href="#tab1">可用红包</a></li>
								<li><a href="#tab2">已用/过期红包</a></li>

							</ul>

							<div class="am-tabs-bd">
								<div class="am-tab-panel am-fade am-in am-active" id="tab1">

									<div class="cart-table-th">
										<div class="order-top">
											<div class="th th-from">
												来源
											</div>
											<div class="th th-remainderprice">
												剩余金额
											</div>
											<div class="th th-term">
												有效期
											</div>
											<div class="th th-usestatus">
												使用状态
											</div>
										</div>
										<div class="clear"></div>
										<div class="order-main">

											<ul class="item-list">
												<li class="td td-from">
													<div class="item-img">
														<img src="${pageContext.request.contextPath}/images/566fda5cN4b8a1675.gif">
													</div>

													<div class="item-info">

														<a href="#">
															<p>蓝胖子赠与</p>
															<p class="info-little "><span>红包初始面额：</span>¥50.00<span>元</span></p>
														</a>

													</div>
												</li>
												<li class="td td-remainderprice">
													<div class="item-remainderprice">
														<span>还剩</span>10.40<span>元</span>
													</div>
												</li>

												<li class="td td-term ">
													<div class="item-term">
														<span>有效期</span> 2015.12.26-2016.2.1
													</div>
												</li>

												<li class="td td-usestatus ">
													<div class="item-usestatus ">
														<p>可使用</p><span><img src="${pageContext.request.contextPath}/images/gift_stamp_1.png"</span>
													</div>
												</li>
											</ul>

										</div>
									</div>
								</div>
								<div class="am-tab-panel am-fade" id="tab2">

									<div class="cart-table-th">
										<div class="order-top">
											<div class="th th-from">
												来源
											</div>
											<div class="th th-remainderprice">
												剩余金额
											</div>
											<div class="th th-term">
												有效期
											</div>
											<div class="th th-usestatus">
												使用状态
											</div>
										</div>
										<div class="clear"></div>
										<div class="order-main">

											<ul class="item-list">
												<li class="td td-from">
													<div class="item-img">
														<img src="${pageContext.request.contextPath}/images/566fda5cN4b8a1675.gif">
													</div>

													<div class="item-info">

														<a href="# ">
															<p>蓝胖子赠与</p>
															<p class="info-little "><span>红包初始面额：</span>¥50.00<span>元</span></p>
														</a>

													</div>
												</li>
												<li class="td td-remainderprice">
													<div class="item-remainderprice">
														<span>还剩</span>0.00<span>元</span>
													</div>
												</li>

												<li class="td td-term ">
													<div class="item-term">
														<span>有效期</span> 2015.12.26-2016.2.1
													</div>
												</li>

												<li class="td td-usestatus ">
													<div class="item-usestatus ">
														<p>已用完</p><span><img src="${pageContext.request.contextPath}/images/gift_stamp_2.png"</span>
													</div>
												</li>
											</ul>

<!--已过期-->
											<ul class="item-list">
												
												<li class="td td-from">
													<div class="item-img">
														<img src="${pageContext.request.contextPath}/images/566fda5cN4b8a1675.gif">
													</div>

													<div class="item-info">

														<a href="# ">
															<p>蓝胖子赠与</p>
															<p class="info-little "><span>红包初始面额：</span>¥50.00<span>元</span></p>
														</a>

													</div>
												</li>
												<li class="td td-remainderprice">
													<div class="item-remainderprice">
														<span>还剩</span>50.00<span>元</span>
													</div>
												</li>

												<li class="td td-term ">
													<div class="item-term">
														<span>有效期</span> 2015.12.26-2016.2.1
													</div>
												</li>

												<li class="td td-usestatus ">
													<div class="item-usestatus ">
														<p>已过期</p><span><img src="${pageContext.request.contextPath}/images/gift_stamp_3.png"</span>
													</div>
												</li>
											</ul>

										
										
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