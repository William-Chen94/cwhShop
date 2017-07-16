<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

<title>搜索页面</title>

<link
	href="${pageContext.request.contextPath}/AmazeUI-2.4.2/assets/css/amazeui.css"
	rel="stylesheet" type="text/css" />
<link
	href="${pageContext.request.contextPath}/AmazeUI-2.4.2/assets/css/admin.css"
	rel="stylesheet" type="text/css" />

<link href="${pageContext.request.contextPath}/basic/css/demo.css"
	rel="stylesheet" type="text/css" />

<link href="${pageContext.request.contextPath}/css/seastyle.css"
	rel="stylesheet" type="text/css" />

<script type="text/javascript"
	src="${pageContext.request.contextPath}/basic/js/jquery-1.9.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/script.js"></script>
</head>

<body>

	<!--顶部导航条 -->
		<%@include file="/home/Topbar.jsp"%>
	<!--悬浮搜索框-->
		<%@include file="/home/suspendSearch.jsp"%>

	<div class="clear"></div>
	<b class="line"></b>
	<div class="search">
		<div class="search-list">

			<div class="am-g am-g-fixed">
				<div class="am-u-sm-12 am-u-md-12">
					<div class="theme-popover">
						<div class="searchAbout">
							<span class="font-pale">相关搜索：</span> <a title="港仔" href="#">港仔风</a>
							<a title="原宿" href="#">原宿风</a> <a title="轻熟风" href="#">轻熟风</a>

						</div>
						<ul class="select">
							<p class="title font-normal">
								<span class="fl"></span> <span class="total fl">搜索到<strong
									class="num"><c:out value="${PListNum}"></c:out></strong>件相关商品</span>
							</p>
							<div class="clear"></div>
							<li class="select-result">
								<dl>
									<dt>已选</dt>
									<dd class="select-no"></dd>
									<p class="eliminateCriteria">清除</p>
								</dl>
							</li>
							<div class="clear"></div>
							<li class="select-list">
								<dl id="select1">
									<dt class="am-badge am-round">品牌</dt>

									<div class="dd-conent">
										<dd class="select-all selected">
											<a href="#">全部</a>
										</dd>
										<dd>
											<a href="#">花花公子</a>
										</dd>
										<dd>
											<a href="#">南极人</a>
										</dd>
										<dd>
											<a href="#">森马</a>
										</dd>
										<dd>
											<a href="#">美特斯邦威</a>
										</dd>
										<dd>
											<a href="#">CLOT</a>
										</dd>
										<dd>
											<a href="#">EVISU</a>
										</dd>
									</div>

								</dl>
							</li>
							<li class="select-list">
								<dl id="select2">
									<dt class="am-badge am-round">种类</dt>
									<div class="dd-conent">
										<dd class="select-all selected">
											<a href="#">全部</a>
										</dd>
										<dd>
											<a href="#">潮流</a>
										</dd>
										<dd>
											<a href="#">韩版</a>
										</dd>
										<dd>
											<a href="#">气质</a>
										</dd>
										<dd>
											<a href="#">纯色</a>
										</dd>
									</div>
								</dl>
							</li>
							<li class="select-list">
								<dl id="select3">
									<dt class="am-badge am-round">材质</dt>
									<div class="dd-conent">
										<dd class="select-all selected">
											<a href="#">全部</a>
										</dd>
										<dd>
											<a href="#">涤纶</a>
										</dd>
										<dd>
											<a href="#">麻</a>
										</dd>
										<dd>
											<a href="#">蚕丝</a>
										</dd>
										<dd>
											<a href="#">醋纤</a>
										</dd>
									</div>
								</dl>
							</li>

						</ul>
						<div class="clear"></div>
					</div>
					<div class="search-content">
						<div class="sort">
							<li class="first"><a title="综合">综合排序</a></li>
							<li><a title="销量">销量排序</a></li>
							<li><a title="价格">价格优先</a></li>
							<li class="big"><a title="评价" href="#">评价为主</a></li>
						</div>
						<div class="clear"></div>

						<ul class="am-avg-sm-2 am-avg-md-3 am-avg-lg-4 boxes">
							<c:forEach var="p" items="${products}">
								<li>
									<div class="i-pic limit">
										<a href="/cwhShop/product_detail/${p.product_id}"><img
											src="${pageContext.request.contextPath}/${p.image}" /></a>
										<p class="title fl">
											<c:out value="${p.product_name}" />
										</p>
										<p class="price fl">
											<b>¥</b> <strong>${p.sale_price}</strong>
										</p>
										<p class="number fl">
											销量<span>${p.hot_level}</span>
										</p>
									</div>    
								</li>
							</c:forEach>
						</ul>
					</div>
					<div class="search-side">

						<div class="side-title">热点推荐</div>

						<li>
							<div class="i-pic check">
							  <a href="/cwhShop/product_detail/20">
								<img src="${pageContext.request.contextPath}/products/1/cs2007.jpg" />
								</a>
								<p class="check-title">日系港仔宽松短袖T恤</p>
								<p class="price fl">
									<b>¥</b> <strong>299</strong>
								</p>
								<p class="number fl">
									销量<span>0</span>
								</p>
							</div>
						</li>
						<li>
							<div class="i-pic check">
								<a href="/cwhShop/product_detail/18" >
								<img src="${pageContext.request.contextPath}/products/1/cs2005.jpg"/>
								</a>
								<p class="check-title">港仔原宿学院背带裙 </p>
								<p class="price fl">
									<b>¥</b> <strong>299</strong>
								</p>
								<p class="number fl">
									销量<span>1110</span>
								</p>
							</div>
						</li>
						<li>
							<div class="i-pic check">
							<a href="/cwhShop/product_detail/22">
								<img src="${pageContext.request.contextPath}/products/1/cs10013.jpg" />
								</a>
								<p class="check-title">GD权志龙同款外套春秋季新款港风 </p>
								<p class="price fl">
									<b>¥</b> <strong>299</strong>
								</p>
								<p class="number fl">
									销量<span>0</span>
								</p>
							</div>
						</li>

					</div>
					<div class="clear"></div>
					<!--分页 -->
			
					<ul class="am-pagination am-pagination-right">
						<span>第 <c:out value="${page}"/>/<c:out value="${count}" />页
						</span>
						<!-- 首页 -->
						<span><a class="firstPage"
							href="${pageContext.request.contextPath}/findByTid/${type_id}/1"></a>
						</span>
						<c:if test="${page != 1}">
							<span><a class="previousPage"
								href="${pageContext.request.contextPath}/findByTid/${type_id}/<c:out value="${page-1}"/>"></a>
							</span>
						</c:if>
						<c:forEach var="i" begin="1" end="${count }">
							<span> <!-- 如果是当前页则不能够点击 --> <c:if test="${i == page }">
									<span class="currentPage">${page }</span>
								</c:if> <c:if test="${i != page }">
									<a
										href="${pageContext.request.contextPath}/findByTid/${type_id}/<c:out value="${i}"/>">
										<c:out value="${i}" /> </a>
								</c:if> </span>
						</c:forEach>
						<!-- 下一页 -->
						<c:if test="${page !=count }">
							<span><a class="nextPage"
								href="${pageContext.request.contextPath}/findByTid/${type_id}/<c:out value="${page+1}"/>"></a>
							</span>
						</c:if>
						<!-- 尾页 -->
						<a class="lastPage"
							href="${pageContext.request.contextPath}/findByTid/${type_id}/<c:out value="${count}"/>"></a>
					</ul>
				
					<%-- <c:if test="${flag.equals("name")}">
					<ul class="am-pagination am-pagination-right">
						<span>第 <c:out value="${page}"/>/<c:out value="${count}" />页
						</span>
						<!-- 首页 -->
						<span><a class="firstPage"
							href="${pageContext.request.contextPath}/findByName/1"></a>
						</span>
						<c:if test="${page != 1}">
							<span><a class="previousPage"
								href="${pageContext.request.contextPath}/findByName/<c:out value="${page-1}"/>"></a>
							</span>
						</c:if>
						<c:forEach var="i" begin="1" end="${count }">
							<span> <!-- 如果是当前页则不能够点击 --> <c:if test="${i == page }">
									<span class="currentPage">${page }</span>
								</c:if> <c:if test="${i != page }">
									<a
										href="${pageContext.request.contextPath}/findByName/<c:out value="${i}"/>">
										<c:out value="${i}" /> </a>
								</c:if> </span>
						</c:forEach>
						<!-- 下一页 -->
						<c:if test="${page !=count }">
							<span><a class="nextPage"
								href="${pageContext.request.contextPath}/findByName/<c:out value="${page+1}"/>"></a>
							</span>
						</c:if> 
						<!-- 尾页 -->
						<a class="lastPage"
							href="${pageContext.request.contextPath}/findByName/<c:out value="${count}"/>"></a>
					</ul>
					</c:if>--%>
				</div>
			</div>
			<%@include file="/home/footer.jsp" %>
		</div>

	</div>

	<!--引导 -->
	<%@include file = "/home/guide.jsp" %>

	<!--菜单 -->
	<%@include file="/home/SiderBar.jsp" %>
	<script>
		window.jQuery
				|| document
						.write('<script src="basic/js/jquery-1.9.min.js"><\/script>');
	</script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/basic/js/quick_links.js"></script>

	<div class="theme-popover-mask"></div>

</body>

</html>