<%--
  Created by IntelliJ IDEA.
  User: Mr.Song
  Date: 2019/12/18
  Time: 9:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/layui/css/layui.css"/>
<script src="${pageContext.request.contextPath}/layui/layui.js"></script>
<script>
    layui.use('layer', function(){
        var layer = layui.layer;

        layer.open({
            title:'用户登录',
            type: 2,
            content: 'http://localhost:8080/QQmusicWeb/user/translate2login',
            area:['500px','400px']
        });

    });
</script>

</body>
</html>
