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

    <title>My JSP 'addsong.jsp' starting page</title>

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
       /* $(function(){
             var url="/chosesingerservlet";
        	$.get(
        			url,
        			function(data){
        				var noObj = $("<option/>").val(-1).text('请选择歌手');
						$("#singer").append(noObj);
        				if(data != null && data.length > 0){
        					for(var i = 0 ; i < data.length;i++){
        						var singer = data[i];
        						var obj = $("<option/>").val(singer.id).text(singer.singerName);
        						$("#singer").append(obj);
        					}
        				}
        			},
        			"json"
        	)
        })*/
	    function photourl()
  		{
  				//创建表单
  				var url = "${pageContext.request.contextPath }/fileUploadServlet";
  		  	    $.ajaxFileUpload({
  		  	        url : url,
  		  	        fileElementId : "spu",
  		  	        dataType : 'text',
  		  	        success : function(data) {
  		  	        	$("#spul").val(data);
  		  	        }
  		  	    })
  		}
  		function url()
  		{
  				//创建表单
  				var url = "${pageContext.request.contextPath }/fileUploadServlet";
  		  	    $.ajaxFileUpload({
  		  	        url : url,
  		  	        fileElementId : "sur",
  		  	        dataType : 'text',
  		  	        success : function(data) {
  		  	        	$("#surl").val(data);
  		  	        }
  		  	    })
  		}
  		function lrcurl()
  		{
  				//创建表单
  				var url = "${pageContext.request.contextPath }/fileUploadServlet";
  		  	    $.ajaxFileUpload({
  		  	        url : url,
  		  	        fileElementId : "slu",
  		  	        dataType : 'text',
  		  	        success : function(data) {
  		  	        	$("#slul").val(data);
  		  	        }
  		  	    })
  		}

  		function chosealbum(){
  		    var url="${pageContext.request.contextPath}/chosealbumservlet";
        	var singerid =$("#singer option:selected").val();
        	$.get(
        			url,
        			"singerid="+singerid,
        			function(data){
        				$("#album").empty();
        				var noObj = $("<option/>").val(-1).text('请选择专辑');
						$("#album").append(noObj);
        				if(data != null && data.length > 0){
        					for(var i = 0 ; i < data.length;i++){
        						var album = data[i];
        						var obj = $("<option/>").val(album.albumId).text(album.albumName);
        						$("#album").append(obj);
        					}
        				}
        			},
        			"json"
        	)
  		}

	</script>

  </head>

  <link rel="stylesheet" href="css/hou.css" />

  <body>
    <h1>修改歌曲</h1>
    <form action="${pageContext.request.contextPath }/music/updateMusic?mId=${music.mId}" method="post">
  			歌&nbsp&nbsp&nbsp&nbsp 曲&nbsp&nbsp&nbsp&nbsp名:
    			<input type="text" name="mName" value="${music.mName}"/> <br>
    	       歌&nbsp&nbsp曲&nbsp&nbsp路&nbsp&nbsp径:
    			<input onchange="url()" type="file" id="sur" name="mMusicurl" ${music.mMusicurl}/>
    			<input type="hidden" name="sul" id="surl"/>
    			<br/>

    		歌&nbsp&nbsp词&nbsp&nbsp路&nbsp&nbsp径:
    			<input onchange="lrcurl()" type="file" id="slu" name="mTexturl" value="${music.mTexturl}"/>
    			<input type="hidden" name="slul" id="slul"/>
    			<br/>
    			歌曲照片路径:
    			<input onchange="photourl()" type="file" id="spu" name="mPhotourl" value="${music.mPhotourl}"/>
    			<input type="hidden" name="spul" id="spul"/>
    			<br/>
    	         歌&nbsp&nbsp&nbsp&nbsp 手&nbsp&nbsp&nbsp&nbsp名
		         <select id="singer" onchange="chosealbum()" name="mSingerid">
						<option value="0">请选择歌手</option>
					 <c:forEach items="${singgers}" var="singgers">
						 <option value="${singgers.sId}" <c:if test="${singgers.sId == music.mSingerid}">selected</c:if>>${singgers.sName}</option>
					 </c:forEach>
    	         	</select>
    				<br>
    		  专&nbsp&nbsp&nbsp&nbsp 辑&nbsp&nbsp&nbsp&nbsp名<select id="album" name="mAid">
    		     <option value="0">请选择专辑</option>
					<c:forEach items="${lbums}" var="lbums">
						<option value="${lbums.aId}" <c:if test="${music.mAid == lbums.aId}">selected</c:if>>${lbums.aName}</option>
					</c:forEach>
    	         </select>
    			<br>
		VIP: 是<input type="radio" name="mVip" value="0" <c:if test="${music.mVip == 0}">checked</c:if>/> 否 <input type="radio" name="mVip" value="1" <c:if test="${music.mVip == 1}">checked</c:if>/>
    			<br>
    			<input type="submit" value="提交">
    			<br/>
    			<c:if test="${message ne null }">
    			<h1> ${message } </h1>
    			</c:if>
    	</form>
  </body>
</html>
