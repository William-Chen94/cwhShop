<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<title>付款成功页面</title>
<link rel="stylesheet"  type="text/css" href="${pageContext.request.contextPath}/AmazeUI-2.4.2/assets/css/amazeui.css"/>
<link href="${pageContext.request.contextPath}/AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/basic/css/demo.css" rel="stylesheet" type="text/css" />

<link href="${pageContext.request.contextPath}/css/sustyle.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/basic/js/jquery-1.9.min.js"></script>

</head>

<body>

<div class="take-delivery">
 <div class="status">
   <h2>您已成功付款</h2>
   <div class="successInfo">
     <ul>
       <li>付款金额<em><c:out value="${txnAmt}"/></em></li>
       <div class="user-info">
         <p>收货人：<c:out value="${sessionScope.default_add.receiver_name}"/></p>
         <p>联系电话：<c:out value="${sessionScope.default_add.phone}"/></p>
         <p>收货地址：<c:out value="${sessionScope.default_add.province}"/>
         		   <c:out value="${sessionScope.default_add.city}"/>
         		   <c:out value="${sessionScope.default_add.area}"/>
         		   <c:out value="${sessionScope.default_add.address_detail}"/></p>
       </div>
             请认真核对您的收货信息，如有错误请联系客服
                               
     </ul>
     <div class="option">
       <span class="info">您可以</span>
        <a href="findOrderByUserAccount/1" class="J_MakePoint">查看<span>已买到的宝贝</span></a>
        <a href="findOrderByUserAccount/1" class="J_MakePoint">查看<span>交易详情</span></a>
     </div>
    </div>
  </div>
</div>
</body>
</html>
