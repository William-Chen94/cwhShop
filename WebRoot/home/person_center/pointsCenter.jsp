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
					<div class="points">
						<!--标题 -->
						<div class="am-cf am-padding">
							<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">我的积分</strong> / <small>My&nbsp;Point</small></div>
						</div>
						<hr/>
						<div class="pointsTitle">
						   <div class="usable">可用积分<span>120</span></div>
						   <div class="pointshop"><a href="#"><i><img src="../images/u5.png" /></i>积分商城</a></div>
						   <div class="signIn"><a href="#"><i class="am-icon-calendar"></i><em>+5</em>每日签到</a></div>
						</div>
						<div class="pointlist am-tabs" data-am-tabs>
							<ul class="am-avg-sm-3 am-tabs-nav am-nav am-nav-tabs">
								<li class="am-active"><a href="#tab1">全部</a></li>
								<li><a href="#tab2">获得</a></li>
								<li><a href="#tab3">支出</a></li>
							</ul>
							<div class="am-tabs-bd">
								<div class="am-tab-panel am-fade am-in am-active" id="tab1">
									<table>
										<b></b>
										<thead>
											<tr>												
												<th class="th1">积分详情</th>
												<th class="th2">积分变动</th>
												<th class="th3">日期</th>
											</tr>
										</thead>										
										<tbody>
											<tr>
												<td class="pointType">积分兑换</td>
												<td class="pointNum">-80</td>
												<td class="pointTime">2017-05-10&nbsp15:27</td>
											</tr>
											<tr>
												<td class="pointType">订单号7745926347132商品评论</td>
												<td class="pointNum">+2</td>
												<td class="pointTime">2017-05-12&nbsp09:32</td>
											</tr>
											<tr>
												<td class="pointType">每日签到</td>
												<td class="pointNum">+5</td>
												<td class="pointTime">2017-05-12&nbsp07:32</td>
											</tr>
											<tr>
												<td class="pointType">每日签到</td>
												<td class="pointNum">+5</td>
												<td class="pointTime">2017-05-11&nbsp12:24</td>
											</tr>
											<tr>
												<td class="pointType">邮箱验证</td>
												<td class="pointNum">+50</td>
												<td class="pointTime">2017-05-10&nbsp16:18</td>
											</tr>
											<tr>
												<td class="pointType">手机绑定</td>
												<td class="pointNum">+100</td>
												<td class="pointTime">2017-05-10&nbsp15:27</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="am-tab-panel am-fade" id="tab2">
									<table>
										<b></b>
										<thead>
											<tr>												
												<th class="th1">积分详情</th>
												<th class="th2">获取积分</th>
												<th class="th3">日期</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td class="pointType">订单号7745926347132商品评论</td>
												<td class="pointNum">+2</td>
												<td class="pointTime">2017-05-12&nbsp09:32</td>
											</tr>
											<tr>
												<td class="pointType">每日签到</td>
												<td class="pointNum">+5</td>
												<td class="pointTime">2017-05-12&nbsp07:32</td>
											</tr>
											<tr>
												<td class="pointType">每日签到</td>
												<td class="pointNum">+5</td>
												<td class="pointTime">2017-05-11&nbsp12:24</td>
											</tr>
											<tr>
												<td class="pointType">邮箱验证</td>
												<td class="pointNum">+50</td>
												<td class="pointTime">2017-05-10&nbsp16:18</td>
											</tr>
											<tr>
												<td class="pointType">手机绑定</td>
												<td class="pointNum">+100</td>
												<td class="pointTime">2017-05-10&nbsp15:27</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="am-tab-panel am-fade" id="tab3">
									<table>
										<b></b>
										<thead>
											<tr>												
												<th class="th1">积分详情</th>
												<th class="th2">消耗积分</th>
												<th class="th3">日期</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td class="pointType">积分兑换</td>
												<td class="pointNum">-300</td>
												<td class="pointTime">2017-05-10&nbsp15:27</td>
											</tr>
										</tbody>
									</table>
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