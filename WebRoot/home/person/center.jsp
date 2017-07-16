<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
</head>
<script type="text/javascript">
function checkForm(){
			//判断手机号码格式
			var reg = /^1[3|4|5|7|8][0-9]{9}$/; //验证规则
			var phoneNumber = $("#phone").val();//手机号码
			var flag = reg.test(phoneNumber); //true
			if (flag == false) {
			alert("请注意电话格式！");
			return false;
			}
	 		 var email = $('#email').val();
             //对电子邮件的验证
             var reg= /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;  
             if(reg.test(email)== false)
             {
                  alert('提示\n\n请输入有效的E_mail！');
                  reg.focus();
                return false;
             }
             if(confirm("确定保存个人信息？")){
             return true;
             }else{
             return false;
             }
}
</script>
<body>

	<div class="center">
		<div class="col-main">
			<div class="main-wrap">
				<div class="user-info">
					<!--标题 -->
					<div class="am-cf am-padding">
						<div class="am-fl am-cf">
							<strong class="am-text-danger am-text-lg">个人资料</strong> / <small>Personal&nbsp;information</small>
						</div>
					</div>

					<!--头像 -->
					<div class="user-infoPic">
							
						<div class="filePic" >
							<a href = "../updatePic">
							<img
								class="am-circle am-img-thumbnail"
								src="${pageContext.request.contextPath}/products/user_img/${user.user_img}"/>
							编辑头像
							</a>
						</div>

						<p class="am-form-help">头像</p>

						<div class="info-m">
							<div>
								<b>用户名：<i>${user.name}</i> </b>
							</div>
							<div class="vip">
								<span></span><a href="#">会员专享</a>
							</div>
						</div>
					</div>

					<!--个人信息 -->
					<div class="info-main">
						<form:form 
						modelAttribute="user" 
						method="post"
						action="../infoUpdate/${user_account}"
							class="am-form am-form-horizontal"
							onsubmit="return checkForm(this)">

							<div class="am-form-group">
								<label for="user-name2" class="am-form-label">商城昵称</label>
								<div class="am-form-content">
								 <form:input path="name" id="receiver_name"
												placeholder="用户名" />
									<small>昵称长度不能超过40个汉字</small>
								</div>
							</div>

							<div class="am-form-group">
								<label class="am-form-label">性别</label>
								<div class="am-form-content sex">
									<label class="am-radio-inline"> <form:radiobutton
											path="user_sex" value='男' />男 </label> <label
										class="am-radio-inline"> <form:radiobutton
											path="user_sex" value='女' />女 </label>
								</div>
							</div>


							<div class="am-form-group">
								<label for="user-phone" class="am-form-label">电话</label>
								<div class="am-form-content">
									 <form:input path="phone" id="phone"
												placeholder="电话" />
								</div>
							</div>
							<div class="am-form-group">
								<label for="user-email" class="am-form-label">电子邮件</label>
								<div class="am-form-content">
									 <form:input path="email" id="email"
												placeholder="邮件" />
								</div>
							</div>
								<div class="info-btn">
									<div class="am-btn am-btn-danger"> <p style="color:white;" >
									<input type="submit" name="" value="保存"
												class="am-btn am-btn-danger"/> </p></div>
								</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="menu.jsp"%>
	</div>
</body>
</html>
