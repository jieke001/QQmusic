<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>后台</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
        <link rel="stylesheet" type="text/css" href="styles.css">
        -->

</head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/ce.css"/>
<script type="text/javascript"
        src="${pageContext.request.contextPath }/js/jquery-1.12.4.js"></script>
<script type="text/javascript">
    $(function () {
        $("#addsinger")
            .click(
                function () {
                    $("#tianjia")
                        .attr("src",
                            "${pageContext.request.contextPath }/singger/addSinger");
                    $("#a")
                        .attr("src",
                            "${pageContext.request.contextPath }/singger/querySinggerList");

                });
        $("#addsong")
            .click(
                function () {
                    $("#tianjia")
                        .attr("src",
                            "${pageContext.request.contextPath }/music/querySinggerSnameList");
                    $("#a")
                        .attr("src",
                            "${pageContext.request.contextPath }/music/queryMusicList");
                });
        $("#addalbum")
            .click(
                function () {
                    $("#tianjia")
                        .attr("src",
                            "${pageContext.request.contextPath}/lbum/querySinggerSnameList");
                    $("#a")
                        .attr("src",
                            "${pageContext.request.contextPath }/lbum/queryLbumList");

                });
    })
</script>
<body>

<div id="xu">
    <h1>后台管理</h1>
    <p>
        <a id="addsinger">添加歌手信息</a>
    </p>
    <p>
        <a id="addsong">添 &nbsp;加 &nbsp;歌 &nbsp; 曲</a>
    </p>
    <p>
        <a id="addalbum">添 &nbsp;加 &nbsp; 专&nbsp; 辑</a>
    </p>
    <p>
        <a id="login" href="${pageContext.request.contextPath}/admin/qqMusicMain">前 &nbsp;台 &nbsp; 登&nbsp; 录</a>
    </p>
</div>
<div id="zhi">
    <iframe id="tianjia"></iframe>
    <iframe id="a" name="aa"></iframe>
</div>
</body>
</html>
