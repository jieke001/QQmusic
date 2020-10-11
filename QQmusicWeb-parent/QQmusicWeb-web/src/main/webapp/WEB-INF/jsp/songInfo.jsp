<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>

<head>
<style type="text/css">
tr th {
	padding: 5px 50px 5px 10px;
}

tr td {
	padding: 5px 50px 5px 10px;
}

a {
	text-decoration: none;
	color: black;
}

#songName {
	padding-right: 130px;
}

#albumName {
	padding-right: 90px;
}
</style>


<script type="text/javascript"
	src=" ${pageContext.request.contextPath }/js/jquery-1.12.4.js"></script>
<script type="text/javascript">
	$(function() {
		/*$(".delete").click(function(){
			var id=$(this).children("span").text();
			window.location.href="${pageContext.request.contextPath }/deleteSongServlet?sid="+id;

		})*/
	})
</script>
</head>

<body>

	<table>
		<tr>
			<th>歌手名</th>
			<th id="songName">歌曲名</th>
			<th id="albumName">专辑名</th>
			<th>操作</th>
		</tr>
		<c:forEach items="${musicList }" var="musicList">
			
			<tr>
				<td name="mId" style="display: none">${musicList.mId}</td>
				<td>${musicList.singgerList.get(0).sName}</td>
				<td>${musicList.mName}</td>
				<td class="td2">${musicList.lbumList.get(0).aName}</td>
				<td><a href="${pageContext.request.contextPath}/music/queryMusicById?mId=${musicList.mId}">修改</a></td>
				<td><a href="${pageContext.request.contextPath}/music/delMusicById?mId=${musicList.mId}">删除</a></td>
			</tr>
			
		</c:forEach>

	</table>


</body>
</html>
