<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'addalbum.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.12.4.js"></script>
  	<script type="text/javascript" src="${pageContext.request.contextPath }/js/ajaxfileupload.js"></script>
    <script type="text/javascript">
     /*   $(function(){
            var url="${pageContext.request.contextPath}/singger/querySinggerList";
        	$.get(
        			url,
        			function(data){
        				var noObj = $("<option/>").val(-1).text('请选择歌手');
						$("#singer").append(noObj);
        				/!*if(data != null && data.length > 0){
        					for(var i = 0 ; i < data.length;i++){
        						var singer = data[i];
        						var obj = $("<option/>").val(singer.singgerList.get(0).sId).text(singer.singgerList.get(0).sName);
        						$("#singer").append(obj);
        					}
        				}*!/
        			},
        			"json"
        	)
        })*/
	    function photourl()
  		{
  				//创建表单
  				var url = "${pageContext.request.contextPath }/lbum/lbumUpload";
  		  	    $.ajaxFileUpload({
  		  	        url : url,
  		  	        fileElementId : "spu",  
  		  	        dataType : 'json',
  		  	        success : function(data) {
		/*				alert(data);*/
  		  	        	$("#spul").val(data);
  		  	        }
  		  	    })
  		}
		$(document).ready(function () {
			/*表单提交成功后强制刷新内联框架iframe name属性aa刷新*/
			window.parent.frames["aa"].document.location.reload();
		})
	</script>
  </head>
  
  <link rel="stylesheet" href="css/hou.css" />
  
  <body>
    <h1>添加专辑</h1>
  <form action="${pageContext.request.contextPath }/lbum/addLbum" method="post">
    		专&nbsp&nbsp&nbsp &nbsp辑&nbsp &nbsp&nbsp&nbsp名:
    			<input type="text" name="aName"/> <br>
    		专辑照片路径:
    			<input onchange="photourl()" type="file" id="spu" name="aUrls"/>
    			<input type="hidden" name="aUrl" id="spul"/>
    			<br/>
    		歌&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp手:
    		<select id="singer" name="aSid">
				<option value="0">请选择歌手</option>
				<c:forEach items="${singgers}" var="singgers">
					<option value="${singgers.sId}">${singgers.sName}</option>
				</c:forEach>
    		</select>
    		<br>
    		<input type="submit" value="提交">
    	</form>
    			<c:if test="${message ne null }">
    			<h1> ${message } </h1>
    			</c:if>

  </body>
</html>
