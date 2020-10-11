<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

	  <meta http-equiv=“Content-Type” content=“text/html; charset=UTF-8″>
		<title>登录</title>
		<link href="${pageContext.request.contextPath}/css/QQDeconnexion.css" rel="stylesheet" type="text/css" />
			<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.12.4.js" ></script>
		<script>
				setInterval("refresh()", 3000);

			function refresh() {

				size = $("img").size();
				var oldIndex; //当前图标
				var nowIndex;
				for(i = 0; i < size; i++) {
					if($("img").eq(i).css("display") == "block") {
						oldIndex = i; //确定当前显示的下标
					}
				}
				if(oldIndex == 0) {
					nowIndex = size - 1;
				} else {
					nowIndex = oldIndex - 1;
				}
				//更新轮播图状态
				for(i = 0; i < size; i++) {
					if(i == nowIndex) {
						$("img").eq(i).css("display", "block");

					} else {
						$('img').eq(i).css("display", "none");

					}
				}

			}
			$(function(){
				$("a").click(function(){
					$("#all_Deconnexion_area").css("display","none")
					$("#deng").css("display","block")
				})
				 $("#btn").click(function(){
					 $("#all_Deconnexion_area").css("display","block")
						$("#deng").css("display","none");
		 })
			})
			
		</script>
	</head>
	<body>
		<!--照片区-->
		<div id="all_picture" >
			<div id="picture_area" class="play">
				<img src="${pageContext.request.contextPath}/img/denglu1.jpg" style="display: none;"/>
				<img src="${pageContext.request.contextPath}/img/denglu2.jpg" style="display: block;"/>
				<img src="${pageContext.request.contextPath}/img/denglu3.jpg" style="display: none;" />
			</div>
		</div>
		
		
		<div id="deng">
			<h1>账号登录</h1>
			<form action="${pageContext.request.contextPath }/selectuserservlet" method="post">
			<span>账号:</span>
			    <c:if test="${requestScope.user eq null }">
			 <input type="text"  name="number" class="text" placeholder="账号"/><br>
			    </c:if>
				<c:if test="${requestScope.user  ne null }">
				 <input type="text"  name="number" class="text" placeholder="账号" value="${requestScope.user.number}"/><br>
				 </c:if>
				<span>密码:</span> 
			    <input type="password"  name="pwd" class="text" placeholder="密码"/><br>
				<input type="button" value="返回" class="button"  id="btn"/>
				<input type="submit" value="登录" class="button" id= "login"/>
			</form>
		</div>
		
		
		<!--登录区-->
		<div id="all_Deconnexion_area">
			<div id="Deconnexion">
				<div id="title_area">
					<h2>
						欢迎登录QQ音乐
					</h2>
					<h3>
						每一天，乐在其中
					</h3>
				</div>
				<div id="Deconnexion_area">
					<hr />
					<ul>
						<li><a href="#" id="wo">QQ登录</a></li>
						<li><a href="${pageContext.request.contextPath}/admin/administratorLogin">后台管理</a></li>
						<li><a href="addUser.jsp">注册账号</a></li>
					</ul>
					<div id="iframe_area">
						<iframe src="${pageContext.request.contextPath}/html/QQDialog_area.html"></iframe>
					</div>
				</div>
				<p class="lastText">下载客户端，体验更多内容</p>
			</div>
		</div>
		
	
	</body>
</html>
