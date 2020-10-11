<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>My JSP 'AddSinger.jsp' starting page</title>

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

        $(document).ready(function () {
            $("#btn").click(function () {
            	$("#singgerFrom").submit();
            })

			/*表单提交成功强制刷新iframe name属性aa*/
			window.parent.frames["aa"].document.location.reload();
        })

        function validateUser() {
            //判断歌手名是否相同 ajax 异步请求
            var url = "${pageContext.request.contextPath }/singernameservlet";
            var singername = $("#singername").val();
            if (singername == null || singername == "") {
                $("#message").html("<font color ='red'>歌手名不可为空</font>");

            } else {
                $.post(url,
                    "singername=" + singername,
                    function (date) {
                        if (date.result) {
                            $("#message").html("<font color ='red'>" + date.message + "</font>");
                            $("#btn").attr("disabled", true);
                        } else {
                            $("#message").html("<font color ='blue'>" + date.message + "</font>");
                            $("#btn").attr("disabled", false);
                        }
                    }
                    ,
                    "json"
                )
            }
        }

        function photourl() {
            //创建表单
            var url = "${pageContext.request.contextPath }/singger/SPhotoUrlUpload";
            $.ajaxFileUpload({
                url: url,
                fileElementId: "spu",
                dataType: 'json',
                success: function (data) {
                    /*console.info(data);*/
                  /*  alert(data);*/
                    $("#spul").val(data);
                }
            });
        }

    </script>

    <link rel="stylesheet" href="css/hou.css"/>

</head>
<body>
<h1> 添加歌手信息</h1>

<form action="${pageContext.request.contextPath }/singger/insertSingger" method="post" id="singgerFrom" >
    歌&nbsp&nbsp&nbsp &nbsp手&nbsp &nbsp&nbsp&nbsp名:
    <input type="text" name="sName" onblur="validateUser()" id="singername"/>
    <span id="message"></span>
    <br>
    歌手照片路径:
    <input onchange="photourl()" type="file" id="spu" name="sPhotoUrls" />
    <input type="hidden" name="sPhotoUrl" id="spul"/>
    <br/>
    歌&nbsp&nbsp手&nbsp &nbsp地&nbsp&nbsp区:
    <input type="text" name="sRegion"/>
    <br/>
    <input type="button" name="btn" id="btn" value="提交">
</form>

<c:if test="${message ne null }">
    <h1> ${message } </h1>
</c:if>
</body>
</html>
