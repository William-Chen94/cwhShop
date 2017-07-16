<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>

<head>
<link
	href="${pageContext.request.contextPath}/AmazeUI-2.4.2/assets/css/admin.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/AmazeUI-2.4.2/assets/css/amazeui.css"
	rel="stylesheet" type="text/css">

<link href="${pageContext.request.contextPath}/css/personal.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/css/addstyle.css"
	rel="stylesheet" type="text/css">
<script
	src="${pageContext.request.contextPath}/AmazeUI-2.4.2/assets/js/jquery.min.js"
	type="text/javascript"></script>
<script
	src="${pageContext.request.contextPath}/AmazeUI-2.4.2/assets/js/amazeui.js"></script>

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
		</article>
	</header>
	<div class="nav-table">
	<%@include file="/home/navigation.jsp"%>
	</div>
	<%@include file="cardlistCenter.jsp"%>

	</div>
	<!--底部-->
	<%@include file="/home/footer.jsp"%>


</body>

</html>