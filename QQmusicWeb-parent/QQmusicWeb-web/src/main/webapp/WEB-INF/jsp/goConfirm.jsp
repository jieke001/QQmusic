<%--
  Created by IntelliJ IDEA.
  User: 邵杰
  Date: 2020/1/6
  Time: 19:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="${pageContext.request.contextPath}/alipay/createOrder" method="post">
    <input type="hidden" id="productId" name="productId" value="${product.pId }"/>
    <table>
        <tr>
            <td>价格：${product.pPrice}</td>
        </tr>
        <tr>
            <td>多少钱一个月(15元/月)：${product.pYue1}</td>
        </tr>
        <tr>
            <td>一次订多少几月：${product.pYue2}</td>
        </tr>
        <tr>
            <td>
                <input type="submit" name="sub" value="form提交，生成订单"/><input type="button" name="but"
                                                                            value="ajax提交，生成订单" onclick="createOrder()"/>
            </td>
        </tr>
    </table>
</form>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.js"></script>
<script type="text/javascript">

    $(function () {



    });

</script>
</html>
