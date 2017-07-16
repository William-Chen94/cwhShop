<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body>
<div class="center">
			<div class="col-main">
	<div class="main-wrap">
					<!--标题 -->
					<div class="am-cf am-padding">
						<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">我的银行卡</strong> / <small>My&nbsp;Credit&nbsp;Card</small></div>
					</div>
					<hr/>
					<div class="card-box-list">
						<ul>
							<c:forEach var ="c" items="${cardList}">
							<li>
								<div class="card-box">
									<div class="card-box-name">
										<span class="bank-logo"><a href="#"><img src="${pageContext.request.contextPath}/images/bankjh.png"></a></span>
										<span title="平安银行" class="bank-name"><c:out value="${c.bankname}"/></span>
										<span class="bank-num4">尾号<c:out value="${c.last_id}"/></span>
										<span class="card-type card-type-CC"></span>
									</div>
									<div class="card-box-express">
										<div class="express-status">
											<span class="asset-icon asset-icon-express-s"></span> <span>已开通</span>
										</div>
										<div class="express-else"><a href="#">管理</a></div>
									</div>
									<div class="card-detail">
										<div class="card-detail-list">
											<div class="card-detail-value" title="账单"><a href="billlist.html"><strong>账单</strong><span></span></a></div>
										</div>
									</div>
								</div>
							</li>
							</c:forEach>
							<li>
								<div class="add-card">
									<a href="http://localhost:8080/cwhShop/cardmethod" ><i class="am-icon-plus"></i>添加银行卡</a>
								</div>
							</li>
						</ul>
					</div>
				</div>
				</div>
				<%@include file="menu.jsp"%>
				</div>
				
</body>
</html>