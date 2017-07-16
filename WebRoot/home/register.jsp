<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %> 
<!DOCTYPE html>
<html>

<head lang="en">
<meta charset="UTF-8">
<title>注册</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="format-detection" content="telephone=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/AmazeUI-2.4.2/assets/css/amazeui.min.css" />
<link href="${pageContext.request.contextPath}/css/dlstyle.css"
	rel="stylesheet" type="text/css">
<script
	src="${pageContext.request.contextPath}/AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/AmazeUI-2.4.2/assets/js/amazeui.min.js"></script>
<script type="text/javascript">
function checkForm() {
		// 校验用户名:
		// 获得用户名文本框的值:
		var username = $("#user_account").val();
		if (username == null || username == '') {
			alert("用户名不能为空!");
			return false;
		}
		// 校验密码:
		// 获得密码框的值:
		var password = $("#password").val();
		if (password == null || password == '') {
			alert("密码不能为空!");
			return false;
		}
		// 校验确认密码:
		var repassword = $("#repassword").val();
		if (repassword != password) {
			alert("两次密码输入不一致!");
			return false;
		}
		// 校验是否同意协议:
		var checkbox = $("#reader-me").val();
		if (checkbox.attr("checked")!=true) {
			alert("请同意协议!");
			return false;
		}

	}
	function checkUsername(){
			$.post(
				"IfExsitsUser/"+$("#user_account").val(),
				{},
				function(data){
				if(data == 1){
					alert("用户名已经存在！");
					$("#user_account").val("");
					$("#user_account").focus();
					$(".submit").unbind("click",
							function(event){
						
					});
				}
				});
	}
</script>
</head>

<body>

	<div class="login-boxtitle">
		<a href="home/demo.html"><img alt=""
			src="${pageContext.request.contextPath}/images/logobig.png" /> </a>
	</div>

	<div class="res-banner">
		<div class="res-main">
			<div class="login-banner-bg">
				<span></span><img
					src="${pageContext.request.contextPath}/images/big.jpg" />
			</div>
			<div class="login-box">

				<div class="am-tabs" id="doc-my-tabs">
					<ul class="am-tabs-nav am-nav am-nav-tabs am-nav-justify">
						<li class="am-active"><a href="">邮箱注册</a>
						</li>
						<li><a href="">手机号注册</a>
						</li>
					</ul>

					<div class="am-tabs-bd">
						<div class="am-tab-panel am-active">
							<form:form  commandName="user" 
										action="regist"
										modelAttribute="user" 
										method="post"
										onsubmit="return checkForm();">
								<div class="user-email">
									<label for="email"><i class="am-icon-envelope-o"></i></label>
									<form:input path="user_account" placeholder="请输入邮箱帐号" onblur="checkUsername()"/>
									<span id="span1" style="padding-left: 20px;"></span>
								</div>
								<div class="user-pass">
									<label for="password"><i class="am-icon-lock"></i> </label> 
									<form:password path="password" placeholder="设置密码"/>
								</div>
								<div class="user-pass">
									<label for="passwordRepeat"><i class="am-icon-lock"></i>
									</label> <input type="password" name="repassword" id="repassword"
										placeholder="确认密码">
								</div>
								<div class="am-cf">
									<input type="submit" value="注册"
										class="am-btn am-btn-primary am-btn-sm am-fl">
								</div>
							</form:form>
							<div class="login-links">
								<label for="reader-me"> <input id="reader-me"
									type="checkbox"> 点击表示您同意商城《服务协议》 </label>
							</div>
						</div>

						<div class="am-tab-panel">
							<form method="post">
								<div class="user-phone">
									<label for="phone"><i
										class="am-icon-mobile-phone am-icon-md"></i> </label> <input
										type="tel" name="" id="phone" placeholder="请输入手机号">
								</div>
								<div class="verification">
									<label for="code"><i class="am-icon-code-fork"></i> </label> <input
										type="tel" name="" id="code" placeholder="请输入验证码"> <a
										class="btn" href="javascript:void(0);"
										onclick="sendMobileCode();" id="sendMobileCode"> <span
										id="dyMobileButton">获取</span> </a>
								</div>
								<div class="user-pass">
									<label for="password"><i class="am-icon-lock"></i> </label> <input
										type="password" name="" id="password" placeholder="设置密码">
								</div>
								<div class="user-pass">
									<label for="passwordRepeat"><i class="am-icon-lock"></i>
									</label> <input type="password" name="" id="passwordRepeat"
										placeholder="确认密码">
								</div>
							</form>
							<div class="login-links">
								<label for="reader-me"> <input id="reader-me"
									type="checkbox"> 点击表示您同意商城《服务协议》 </label>
							</div>
							<div class="am-cf">
								<input type="submit" name="" value="注册"
									class="am-btn am-btn-primary am-btn-sm am-fl">
							</div>

							<hr>
						</div>

						<script>
							$(function() {
								$('#doc-my-tabs').tabs();
							})
						</script>

					</div>
				</div>

			</div>
		</div>

		<div class="footer ">
			<div class="footer-hd ">
				<p>
					<a href="# ">恒望科技</a> <b>|</b> <a href="# ">商城首页</a> <b>|</b> <a
						href="# ">支付宝</a> <b>|</b> <a href="# ">物流</a>
				</p>
			</div>
			<div class="footer-bd ">
				<p>
					<a href="# ">关于恒望</a> <a href="# ">合作伙伴</a> <a href="# ">联系我们</a> <a
						href="# ">网站地图</a> <em>© 2015-2025 Hengwang.com 版权所有. 更多模板 <a
						href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a>
						- Collect from <a href="http://www.cssmoban.com/" title="网页模板"
						target="_blank">网页模板</a> </em>
				</p>
			</div>
		</div>
</body>

</html>