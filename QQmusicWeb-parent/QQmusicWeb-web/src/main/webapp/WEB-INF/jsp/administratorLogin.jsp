<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
<head>
<link href="${pageContext.request.contextPath}/css/administratorLogin.css" rel="stylesheet" type="text/css"/>

<script type="text/javascript" src=" ${pageContext.request.contextPath }/js/jquery-1.12.4.js"></script>
<script type="text/javascript">
$(function(){
	$("#account").blur(function(){
		 var account = $("#account").val();
		if (account==null||account=="") {
			 	$("#account").focus();
		        $("#formtip").css({"color":"red","font-size":"15px"});
		        $("#formtip").html("账号不能为空");
		        $ ("#formtip").show().delay(3000).fadeOut();
		}
	})
	$("#password").blur(function(){
		 var account = $("#password").val();
		if (account==null||account=="") {
			 	$("#password").focus();
		        $("#passwordFormtip").css({"color":"red","font-size":"15px"});
		        $("#passwordFormtip").html("密码不能为空");
		        $ ("#passwordFormtip").show().delay(3000).fadeOut();
		}
	})
})

</script>
</head>

<body>
	<div id="loginArea">
		<form action="${pageContext.request.contextPath }/admin/queryAdminLogin" method="post">
			<table>
				<tr>
					<td><h1>管理员登录</h1></td>
				</tr>
				<tr>
					<td>账号:<input type="text" name = "username" id="account"  placeholder="请输入管理员账号"/><span id="formtip"></span></td>
				</tr>
				<tr>
					<td>密码:<input type="password" name = "password"  id="password"  placeholder="请输入密码"/><span id="passwordFormtip"></span></td>
				</tr>
				<tr>
					<td><input type="submit" value="登录" id="button" /></td>
				</tr>
			</table>

		</form>
	</div>
	
</body>
</html>
