<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>

<head>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jsAddress.js"></script>  
<script type="text/javascript">
	function checkForm() {
		// 校验用户名:
		// 获得用户名文本框的值:
		var receiver_name = $("#receiver_name").val();
		if (receiver_name == null || receiver_name == '') {
			alert("收件人姓名不能为空!");
			return false;
		}
		// 校验密码:
		// 获得密码框的值:
		var phone = $("#phone").val();
		if (phone == null || phone == '') {
			alert("收件电话不能为空!");
			return false;
		}
	
		var address_detail = $("#address_detail").val();
		if (address_detail == null || address_detail == '') {
			alert("详细地址不能为空!");
			return false;
		}

	}
</script>

</script>
</head>

<body>
	<div class="center">
		<div class="col-main">
			<div class="main-wrap">

				<div class="user-address">
					<!--标题 -->
					<div class="am-cf am-padding">
						<div class="am-fl am-cf">
							<strong class="am-text-danger am-text-lg">地址管理</strong> / <small>Address&nbsp;list</small>
						</div>
					</div>
					<hr />
					<ul class="am-avg-sm-1 am-avg-md-3 am-thumbnails">
						<li class="user-addresslist defaultAddr"><span
							class="new-option-r"><i class="am-icon-check-circle"></i>默认地址</span>
							<p class="new-tit new-p-re">
								<span class="new-txt"><c:out
										value="${default_add.receiver_name}" />
								</span> <span class="new-txt-rd2">${default_add.phone}</span>
							</p>
							<div class="new-mu_l2a new-p-re">
								<p class="new-mu_l2cw">
									<span class="title">地址：</span> <span class="province"><c:out
											value="${default_add.province}" />
									</span> <span class="city"><c:out value="${default_add.city}" />
									</span> <span class="dist"><c:out value="${default_add.area}" />
									</span> <span class="street"><c:out
											value="${default_add.address_detail}" />
									</span>
								</p>
							</div>
							<div class="new-addr-btn">
								<a href="searchAddress/${default_add.address_id}"><i
									class="am-icon-edit"></i>编辑</a> <span class="new-addr-bar">|</span>
								<a href="delAddress/${default_add.address_id}"
									onclick="delClick(this);"><i class="am-icon-trash"></i>删除</a>
							</div></li>
						<c:forEach var="a" items="${addList}">
							<li class="user-addresslist"><span class="new-option-r"><i
									class="am-icon-check-circle"></i><a
									href="setDefault/${a.address_id}">设为默认</a>
							</span>
								<p class="new-tit new-p-re">
									<span class="new-txt"><c:out value="${a.receiver_name}" />
									</span> <span class="new-txt-rd2"><c:out value="${a.phone}" />
									</span>
								</p>
								<div class="new-mu_l2a new-p-re">
									<p class="new-mu_l2cw">
										<span class="title">地址：</span> <span class="province"><c:out
												value="${a.province}" />
										</span> <span class="city"><c:out value="${a.city}" />
										</span> <span class="dist"><c:out value="${a.area}" />
										</span> <span class="street"><c:out
												value="${a.address_detail}" />
										</span>
									</p>
								</div>
								<div class="new-addr-btn">
									<a href="searchAddress/${a.address_id}"><i
										class="am-icon-edit"></i>编辑</a> <span class="new-addr-bar">|</span>
									<a href="javascript:void(0);" onclick="delClick(this);"><i
										class="am-icon-trash"></i>删除</a>
								</div></li>
						</c:forEach>
					</ul>
					<div class="clear"></div>
					<a class="new-abtn-type"
						data-am-modal="{target: '#doc-modal-1', closeViaDimmer: 0}">添加新地址</a>
					<!--例子-->
					<div class="am-modal am-modal-no-btn" id="doc-modal-1">

						<div class="add-dress">

							<!--标题 -->
							<div class="am-cf am-padding">
								<div class="am-fl am-cf">
									<strong class="am-text-danger am-text-lg">新增地址</strong> / <small>Add&nbsp;address</small>
								</div>
							</div>
							<hr />

							<div class="am-u-md-12 am-u-lg-8" style="margin-top: 20px;">
								<form:form action="../updateAddress/${address_id}"
									modelAttribute="user_address" method="post"
									onsubmit="return checkForm();"
									class="am-form am-form-horizontal">

									<div class="am-form-group">
										<label for="user-name" class="am-form-label">收货人</label>
										<div class="am-form-content">
											<form:input path="receiver_name" id="receiver_name"
												placeholder="收货人" />
										</div>
									</div>

									<div class="am-form-group">
										<label for="user-phone" class="am-form-label">手机号码</label>
										<div class="am-form-content">
											<form:input path="phone" id="phone" placeholder="手机号必填"
												 />
										</div>
									</div>
									<div class="am-form-group">
										<label for="user-address" class="am-form-label">所在地</label>
										<div class="am-form-content address">
											<form:select path="barea" id="area"/> <form:select path="province" id="cmbProvince"/>
											<form:select path="city" id="cmbCity"/><form:select path="area" id="cmbArea"/>
											<script type="text/javascript">
												addressInit('area',
														'cmbProvince',
														'cmbCity', 'cmbArea',
														'西北地区', '北京', '市辖区',
														'东城区');
											</script>
										</div>
									</div>

									<div class="am-form-group">
										<label for="user-intro" class="am-form-label">详细地址</label>
										<div class="am-form-content">
											<form:textarea path="address_detail" class="" rows="3"
												id="address_detail" placeholder="输入详细地址" />
											</textarea>
											<small>100字以内写出你的详细地址...</small>
										</div>
									</div>

									<div class="am-form-group">
										<div class="am-u-sm-9 am-u-sm-push-3">
											<input type="submit" name="" value="保存"
												class="am-btn am-btn-danger"> <a
												href="javascript: void(0)"
												class="am-close am-btn am-btn-danger" data-am-modal-close>取消</a>
										</div>
									</div>
								</form:form>
							</div>

						</div>

					</div>

				</div>

				<script type="text/javascript">
					$(document).ready(
							function() {
								$(".new-option-r").click(
										function() {
											$(this).parent('.user-addresslist')
													.addClass("defaultAddr")
													.siblings().removeClass(
															"defaultAddr");
										});

								var $ww = $(window).width();
								if ($ww > 640) {
									$("#doc-modal-1").removeClass(
											"am-modal am-modal-no-btn")
								}

							})
				</script>

				<div class="clear"></div>

			</div>
		</div>
		<%@include file="menu.jsp"%>

	</div>
</body>
</html>
