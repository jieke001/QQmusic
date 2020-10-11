<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
<style type="text/css">
	a{
	text-decoration: none;
	color:black;
	}
	tr th{
	width: 140px;
	}
	tr td{
	padding-left: 50px;
	height:30px;
	}
</style>
  </head>
  
  <body>
  
  <table>
  		<tr>
  		
  			<th id="id">专辑id</th>
  			<th>歌手名</th>
  			<th>专辑名</th>
  		
  			
  		</tr>
  		<c:forEach items="${lbumList}" var="lbumList">
  		<tr>
  			<td class="td1" name="aId" style="display: none">${lbumList.aId }</td>
  			<td class="td2">${lbumList.singgerList.get(0).sName}</td>
  			<td class="td3">${lbumList.aName}</td>
			<td><a href="${pageContext.request.contextPath}/lbum/queryLbumById?aId=${lbumList.aId}">修改</a></td>
			<td><a href="${pageContext.request.contextPath}/lbum/delLbumById?aId=${lbumList.aId}">删除</a></td>
  	    </tr>
  		</c:forEach>
  	</table>
  </body>
</html>
