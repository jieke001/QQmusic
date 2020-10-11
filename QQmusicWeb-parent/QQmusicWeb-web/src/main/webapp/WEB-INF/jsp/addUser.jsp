<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Login.css" />
</head>
<body>
<form action="${pageContext.request.contextPath }/user/insert" method="post" onsubmit="return choose(this)" class="register_account">
    <input type="text" name="uName" placeholder="昵称：4~10个字符" class="text" required/>
    <input type="password" name="uPwd" placeholder="密码：6~16个字符" pattern="[\dA-Za-z]{6,16}" class="text" required/>
    <input type="text"  name="uNumber" placeholder="电话号码：以13，15，17，18开头" pattern="1[3578]\d{9}" class="text" required/>
    <input type="checkbox" class="radio" required/> 我已阅读并同意相关服务条款和隐私政策
    <input type="submit" value="免费注册" class="text" />
</form>
</body>
</html>
