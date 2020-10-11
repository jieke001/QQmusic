<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改歌手</title>
</head>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/hou.css"/>
<body>
<h1> 修改歌手信息</h1>

<form action="${pageContext.request.contextPath }/singger/updateSingger?sId=${singger.sId}" method="post" id="singgerFrom">
    歌&nbsp&nbsp&nbsp &nbsp手&nbsp &nbsp&nbsp&nbsp名:
    <input type="text" name="sName" onblur="validateUser()" id="singername" value="${singger.sName}"/>
    <span id="message"></span>
    <br>
    歌手照片路径:
    <input onchange="photourl()" type="file" id="spu" name="sPhotoUrl"/>
    <%--<input type="hidden" name="sPhoto" id="spul" value="${singger.sPhotoUrl}"/>--%>
    <br/>
    歌&nbsp&nbsp手&nbsp &nbsp地&nbsp&nbsp区:
    <input type="text" name="sRegion" value="${singger.sRegion}"/>
    <br/>
    <input type="submit" name="btn" id="btn" value="提交" onclick="btnIframe()">
</form>

<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/ajaxfileupload.js"></script>
</body>
</html>
