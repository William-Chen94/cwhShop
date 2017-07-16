<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

<title>购物车页面</title>

<link
	href="${pageContext.request.contextPath}/AmazeUI-2.4.2/assets/css/amazeui.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/basic/css/demo.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/cartstyle.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/optstyle.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/basic/js/jquery-1.9.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/basic/js/quick_links.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.imagezoom.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.flexslider.js"></script>

</head>

<body>

	<!--顶部导航条 -->
	<%@include file="/home/Topbar.jsp"%>
	<!--悬浮搜索框-->
	<%@include file="/home/suspendSearch.jsp"%>
	<div class="clear"></div>

	<!--购物车 -->
	<div class="concent">
		<div id="cartTable">
			<div class="cart-table-th">
				<div class="wp">
					<div class="th th-chk">
						<div id="J_SelectAll1" class="select-all J_SelectAll"></div>
					</div>
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
					<div class="th th-op">
						<div class="td-inner">操作</div>
					</div>
				</div>
			</div>
			<div class="clear"></div>

			<tr class="item-list">
				<div class="bundle  bundle-last ">
					<div class="bundle-hd">
						<div class="bd-promos">
							<div class="bd-has-promo">
								已享优惠:<span class="bd-has-promo-content">省￥19.50</span>&nbsp;&nbsp;
							</div>
							<div class="act-promo">
								<a href="#" target="_blank">第二件半价，第三件免费<span class="gt">&gt;&gt;</span>
								</a>
							</div>
							<span class="list-change theme-login">编辑</span>
						</div>
					</div>
					<div class="clear"></div>
					<div class="bundle-main">
						<c:if test="${fn:length(sessionScope.cart.cartItems)!=0}">
						<form id="orderForm"
							  action="${ pageContext.request.contextPath }/payOrder"
							  method="post">
						<c:forEach var="cartItem" items="${sessionScope.cart.cartItems}">
						<ul class="item-content clearfix">
							<li class="td td-chk">
								<div class="cart-checkbox ">
									<input class="check" id="checkbox_1"
										name="checkbox_name" value="1" type="checkbox" onclick="countProduct(this)" /><label
										for="checkbox_01"></label>
								</div>
							</li>
							<li class="td td-item">
								<div class="item-pic">
									<a href="#" 
										data-title=""
										data-point="tbcart.8.12"> 
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
										<script type="text/javascript">
										$(function(){
											$('#min').click(function(){
											 var number = $(this).parent().find("#text_box");
											 var amount =parseInt(number.val());
											 if(amount-1>=0)
											 number.val(amount-1);
											})
											$('#add').click(function(){
											 var number = $(this).parent().find("#text_box");
											 var amount =parseInt(number.val());
											 number.val(amount+1);
											})
									});
									</script>
									</div>
								</div></li>
							<li class="td td-sum">
								<div class="td-inner">
									<em tabindex="0" class="J_ItemSum number" id="subtotal"><c:out value="${cartItem.subtotal}"/></em>
								</div></li>
							<li class="td td-op">
								<div class="td-inner">
									<a title="移入收藏夹" class="btn-fav" href="#"> 移入收藏夹</a> <a
										href="/cwhShop/removeCart/${cartItem.product.product_id}" data-point-url="#" class="delete"> 删除</a>
								</div></li>
						</ul>
						</c:forEach>
						</form>
					</c:if>
				 </div>
				</div>
			</tr>
		</div>
		<div class="clear"></div>
		<div class="float-bar-wrapper">
					<div id="J_SelectAll2" class="select-all J_SelectAll">
						<div class="cart-checkbox">
							<input class="check-all " id="checkbox_select_all" name="select-all"  type="checkbox" onclick="select_all()"/>
							<span>全/反选</span>
							<label for="J_SelectAllCbx2"></label>
						</div>
					</div>
					<div class="float-bar-right">
						<div class="amount-sum">
							<span class="txt">已选商品</span>
							<em id="J_SelectedItemsCount">0</em><span class="txt">件</span>
							<div class="arrow-box">
								<span class="selected-items-arrow"></span>
								<span class="arrow"></span>
							</div>
						</div>
						<div class="price-sum">
							<span class="txt">合计:</span>
							<strong class="price">¥<em id="J_Total">0.00</em></strong>
						</div>
						<div class="btn-area">
							<a href="javascript:void(0);" onclick="balance()" id="J_Go" class="submit-btn submit-btn-disabled" aria-label="请注意如果没有选择宝贝，将无法结算">
								<span>结&nbsp;算</span></a>
						</div>
					</div>
				</div>

<script type="text/javascript">
//全选和反选
function select_all(){
  if($("#checkbox_select_all").get(0).checked){
  	 $(".check").attr("checked",false);
  }else{
   $(".check").prop("checked",true);
  }
  $(".check").click();
}
function countProduct(){
   	var num = 0;
   	var count = 0;
   	var number =0;
   	//计算 已经被选中的CHECKBOX 商品总数之和 总价钱之和
   $(".check:checked").each(function(){
			 if(this.checked){
			 	var code =$($( $(this).parent()).parent());
			 	//因为我的DOM结构 这里的CODE为向上取两层 找到当前checkbox的父节点
			 	num += parseInt(code.parent().find('#text_box').val());
			 	count +=  parseInt(code.parent().find('#subtotal').html());
 			 } 
   });
   $('#J_Total').html(count);
   $('#J_SelectedItemsCount').html(num);
}
</script>
<script type="text/javascript">
function balance(){
		if($("input[type='checkbox']").is(':checked')){
			document.getElementById("orderForm").submit();
		}else{
			alert("没有选中结算的商品!");		
		}
}
</script>
		<%@include file="/home/footer.jsp"%>

	</div>

	<!--操作页面-->

	<div class="theme-popover-mask"></div>

	<div class="theme-popover">
		<div class="theme-span"></div>
		<div class="theme-poptit h-title">
			<a href="javascript:;" title="关闭" class="close">×</a>
		</div>
	</div>
	<!--引导 -->
	<%@include file="/home/guide.jsp"%>
</body>

</html>