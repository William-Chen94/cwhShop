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

	<title>首页</title>

	<link
		href="${pageContext.request.contextPath}/AmazeUI-2.4.2/assets/css/amazeui.css"
		rel="stylesheet" type="text/css" />
	<link
		href="${pageContext.request.contextPath}/AmazeUI-2.4.2/assets/css/admin.css"
		rel="stylesheet" type="text/css" />

	<link href="${pageContext.request.contextPath}/basic/css/demo.css"
		rel="stylesheet" type="text/css" />

	<link href="${pageContext.request.contextPath}/css/hmstyle.css"
		rel="stylesheet" type="text/css" />
	<script
		src="${pageContext.request.contextPath}/AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/AmazeUI-2.4.2/assets/js/amazeui.min.js"></script>
</head>

<body>
		<!--头 -->
		<header>
			<article>
				<div class="mt-logo">
					<!--顶部导航条 -->
					<%@include file ="/home/Topbar.jsp" %>
						<!--悬浮搜索框-->
						<%@include file="/home/suspendSearch.jsp"%>
					</div>
				</div>
			</article>
		</header>

	<b class="line"></b>
	<div class="shopNav">
		<div class="slideall" style="height: auto;">

			<%@include file ="navigation.jsp" %>
			<div class="bannerTwo">
				<!--轮播 -->
				<div class="am-slider am-slider-default scoll" data-am-flexslider
					id="demo-slider-0">
					<ul class="am-slides">
						<li class="banner1"><img 
								src="${pageContext.request.contextPath}/images/lb7.jpg" style="height:343px "/> </a></li>
						<li class="banner2"><a><img 
								src="${pageContext.request.contextPath}/images/lb1.jpg"style="height:343px " /> </a></li>
						<li class="banner3"><a><img
								src="${pageContext.request.contextPath}/images/lb4.jpg" /> </a></li>
						<li class="banner4"><a><img
								src="${pageContext.request.contextPath}/images/lb3.jpg" /> </a></li>
					</ul>
				</div>
				<div class="clear"></div>
			</div>

			<!--侧边导航 -->
			<div id="nav" class="navfull" style="position: static;">
				<div class="area clearfix">
					<div class="category-content" id="guide_2">

						<div class="category" style="box-shadow:none ;margin-top: 2px;">
							<ul class="category-list navTwo" id="js_climit_li">
								<li>
									<div class="category-info">
										<h3 class="category-name b-category-name">
											<i><img
												src="${pageContext.request.contextPath}/images/cake.png">
											</i><a href="${pageContext.request.contextPath}/findByTid/1/1" class="ml-22" title="男装">男装/上衣</a>
										</h3>
										<em>&gt;</em>
									</div> <b class="arrow"></b>
								</li>
								<li>
									<div class="category-info">
										<h3 class="category-name b-category-name">
											<i><img
												src="${pageContext.request.contextPath}/images/cookies.png">
											</i><a href="${pageContext.request.contextPath}/findByTid/2/1" class="ml-22" title="女装/上衣">女装/上衣</a>
										</h3>
										<em>&gt;</em>
									</div>
								</li>
								<li>
									<div class="category-info">
										<h3 class="category-name b-category-name">
											<i><img
												src="${pageContext.request.contextPath}/images/meat.png">
											</i><a a href="${pageContext.request.contextPath}/findByTid/3/1"  class="ml-22" title="男装/裤子">男装/裤子</a>
										</h3>
										<em>&gt;</em>
									</div>
								</li>
								<li>
									<div class="category-info">
										<h3 class="category-name b-category-name">
											<i><img
												src="${pageContext.request.contextPath}/images/bamboo.png">
											</i><a a href="${pageContext.request.contextPath}/findByTid/4/1"  class="ml-22" title="女装/裤子">女装/裤子</a>
										</h3>
										<em>&gt;</em>
									</div>
								</li>
								<li>
									<div class="category-info">
										<h3 class="category-name b-category-name">
											<i><img
												src="${pageContext.request.contextPath}/images/nut.png">
											</i><a a href="${pageContext.request.contextPath}/findByTid/5/1"  class="ml-22" title="男鞋">男鞋</a>
										</h3>
										<em>&gt;</em>
									</div>
								</li>
								<li>
									<div class="category-info">
										<h3 class="category-name b-category-name">
											<i><img
												src="${pageContext.request.contextPath}/images/candy.png">
											</i><a a href="${pageContext.request.contextPath}/findByTid/6/1"  class="ml-22" title="女鞋">女鞋</a>
										</h3>
										<em>&gt;</em>
									</div>
								</li>
								<li>
									<div class="category-info">
										<h3 class="category-name b-category-name">
											<i><img
												src="${pageContext.request.contextPath}/images/chocolate.png">
											</i><a a href="${pageContext.request.contextPath}/findByTid/7/1"  class="ml-22" title="手表">手表</a>
										</h3>
										<em>&gt;</em>
									</div>
								</li>
								<li>
									<div class="category-info">
										<h3 class="category-name b-category-name">
											<i><img
												src="${pageContext.request.contextPath}/images/fish.png">
											</i><a class="ml-22" title="围巾">围巾(暂无)</a>
										</h3>
										<em>&gt;</em>
									</div>
								</li>
								<li>
									<div class="category-info">
										<h3 class="category-name b-category-name">
											<i><img
												src="${pageContext.request.contextPath}/images/tea.png">
											</i><a class="ml-22" title="花茶、果茶">其他(暂无)</a>
										</h3>
										<em>&gt;</em>
									</div>
								</li>
								<li>
									<div class="category-info">
										<h3 class="category-name b-category-name">
											<i><img
												src="${pageContext.request.contextPath}/images/package.png">
											</i><a class="ml-22" title="品牌、礼包">品牌(暂无)</a>
										</h3>
										<em>&gt;</em>
									</div>
								</li>

								<!--比较多的导航	-->

							</ul>
						</div>
					</div>

				</div>
			</div>
			<!--导航 -->
			<script type="text/javascript">
				(function() {
					$('.am-slider').flexslider();
				});
				$(document)
						.ready(
								function() {
									$("li")
											.hover(
													function() {
														$(
																".category-content .category-list li.first .menu-in")
																.css("display",
																		"none");
														$(
																".category-content .category-list li.first")
																.removeClass(
																		"hover");
														$(this).addClass(
																"hover");
														$(this)
																.children(
																		"div.menu-in")
																.css("display",
																		"block")
													},
													function() {
														$(this).removeClass(
																"hover")
														$(this).children(
																"div.menu-in")
																.css("display",
																		"none")
													});
								})
			</script>


			<!--小导航 -->

			<!--各类活动-->
			<div class="clear"></div>
			<!--走马灯 -->

			<div class="marqueenTwo">
				<span class="marqueen-title"><i
					class="am-icon-volume-up am-icon-fw"></i>商城头条<em
					class="am-icon-angle-double-right"></em> </span>
				<div class="demo">

					<ul>
						<li class="title-first"><a   href="#"> <img
								src="${pageContext.request.contextPath}/images/TJ2.jpg"></img> <span>[特惠]</span>洋河年末大促，低至两件五折
						</a></li>
						<li class="title-first"><a   href="#"> <span>[公告]</span>商城与广州市签署战略合作协议
								<img src="${pageContext.request.contextPath}/images/TJ.jpg"></img>
								<p>XXXXXXXXXXXXXXXXXX</p> </a></li>
						<li><a   href="#"><span>[特惠]</span>女生节商城爆品1分秒
						</a></li>
						<li><a   href="#"><span>[公告]</span>华北、华中部分地区配送延迟</a>
						</li>
						<li><a   href="#"><span>[特惠]</span>家电狂欢千亿礼券
								买1送1！</a></li>
						<li><a   href="#"><span>[特惠]</span>洋河年末大促，低至两件五折</a>
						</li>
						<li><a   href="#"><span>[公告]</span>华北、华中部分地区配送延迟</a>
						</li>

					</ul>

				</div>
			</div>
			<div class="clear"></div>

		</div>



		<script type="text/javascript">
			if ($(window).width() < 640) {
				function autoScroll(obj) {
					$(obj).find("ul").animate({
						marginTop : "-39px"
					}, 500, function() {
						$(this).css({
							marginTop : "0px"
						}).find("li:first").appendTo(this);
					})
				}
				$(function() {
					setInterval('autoScroll(".demo")', 3000);
				})
			}
		</script>
	</div>
	<div class="shopMainbg">
		<div class="shopMain" id="shopmain">

			<!--热门活动 -->

			<div class="am-container">

				<div class="sale-mt">
					<i></i> <em class="sale-title">限时秒杀</em>
					<div class="s-time" id="countdown">
						<span class="hh">01</span> <span class="mm">00</span> <span
							class="ss">02</span>
					</div>
				</div>
				<script>
				$(function(){
					var timer=null;
					var second=0,minute=0,hour=0;
					 	second  = parseInt($(".ss").html());  	/* 秒 */
						minute  = parseInt($(".mm").html());	/* 分*/
						hour  	= parseInt($(".hh").html());	/* 小时*/
					timer = setInterval(function(){
						if(second>0){
							second--;
							if(second<10)
							$(".ss").html("0"+second);
							else
							$(".ss").html(second);
						}
						else if(second==0&&minute>0){
							$(".ss").html(58);
							second = 58;
							minute--;
							$(".mm").html(minute);
						}
						else if(minute==0&&hour>0){
								$(".ss").html(59);
								$(".mm").html(59);
								minute = 59;	
								hour--;
								$(".hh").html(hour);
						}
						if(hour==0&&minute==0&&second==0){
								clearInterval(timer);
								alert("秒杀开始!");
						}
					},1000);
				});
				</script>


				<div class="am-g am-g-fixed sale">
					<div class="am-u-sm-3 sale-item">
						<div class="s-img">
							<a href="/cwhShop/product_detail/1"><img
								src="${pageContext.request.contextPath}/products/1/cs1001.jpg" /> </a>
						</div>
						<div class="s-info">
							<a href="#"><p class="s-title">咖啡男外套</p> </a>
							<div class="s-price">
								￥<b>59.90</b> <a class="s-buy" href="#">秒杀</a>
							</div>
						</div>
					</div>

					<div class="am-u-sm-3 sale-item">
						<div class="s-img">
							<a href="/cwhShop/product_detail/2 "><img
								src="${pageContext.request.contextPath}/products/1/cs1002.jpg" /> </a>
						</div>
							<div class="s-info">
							<a href="/cwhShop/product_detail/4"><p class="s-title">

港仔文艺男 时尚牛仔夹克
</p> </a>
							<div class="s-price">
								￥<b>59.90</b> <a class="s-buy" href="#">秒杀</a>
							</div>
						</div>
					</div>

					<div class="am-u-sm-3 sale-item">
						<div class="s-img">
							<a href="/cwhShop/product_detail/8 "><img
								src="${pageContext.request.contextPath}/products/1/cs1008.jpg" style="height:180px; width:180px"/> </a>
						</div>
						<div class="s-info">
							<a href="#"><p class="s-title">港仔文艺男 时尚牛仔夹克 </p> </a>
							<div class="s-price">
								￥<b>59.90</b> <a class="s-buy" href="#">秒杀</a>
							</div>
						</div>
					</div>

					<div class="am-u-sm-3 sale-item">
						<div class="s-img">
							<a href="/cwhShop/product_detail/4 "><img
								src="${pageContext.request.contextPath}/products/1/cs1004.jpg" style="height:180px; width:180px"/> </a>
						</div>
						<div class="s-info">
							<a href="#"><p class="s-title">夏韩版ulzzang原宿学院风宽松半袖上衣</p> </a>
							<div class="s-price">
								￥<b>59.90</b> <a class="s-buy" href="#">秒杀</a>
							</div>
						</div>
					</div>

				</div>
			</div>
			<div class="clear "></div>


		<%@include file="footer.jsp"%>
		</div>
	</div>
	</div>
	</div>

	<!--引导 -->
	<%@include file = "/home/guide.jsp" %>
	<!--菜单 -->
	<%@include file="SiderBar.jsp"%>
	<script>
		window.jQuery
				|| document
						.write('<script src="basic/js/jquery.min.js "><\/script>');
	</script>
	<script type="text/javascript "
		src="${pageContext.request.contextPath}/basic/js/quick_links.js "></script>
</body>

</html>