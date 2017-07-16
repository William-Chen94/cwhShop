<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>

<head>
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

		<title>银行卡绑定</title>

		<link href="${pageContext.request.contextPath}/AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">

		<link href="${pageContext.request.contextPath}/css/personal.css" rel="stylesheet" type="text/css">
		<link href="${pageContext.request.contextPath}/css/stepstyle.css" rel="stylesheet" type="text/css">

		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.7.2.min.js"></script>
		<script src="${pageContext.request.contextPath}/AmazeUI-2.4.2/assets/js/amazeui.js"></script>
</head>

<body>
	<!--头 -->
	<header>
		<article>
			<div class="mt-logo">
				<!--顶部导航条 -->
				<%@include file="/home/Topbar.jsp"%>

				<!--悬浮搜索框-->

				<%@include file="/home/suspendSearch.jsp"%>
			</div>
			</div>
		</article>
	</header>

	<div class="nav-table">
	<%@include file="/home/navigation.jsp"%>
	</div>

   <%@include file="/home/person_center/cardmethodCenter.jsp"%>

	</div>
	<!--底部-->
	<%@include file="/home/footer.jsp"%>


</body>

</html>