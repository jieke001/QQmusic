<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<style type="text/css">
    *{
        margin: 0 0;
        padding: 0 0;
    }
    #money{
        border-bottom: 1px solid #303030;
        margin: 15px 0px 15px;
        padding-bottom: 20px;
    }
    #money:after{
        content: ".";
        height: 0;
        visibility: hidden;
        display: block;
        clear: both;
    }
    #money ul{
        margin: 0px auto;
        width: 80%;
    }

    ul li{
        float: left;
        list-style-type: none;
        border: 1px solid red;
        margin:10px;
        padding: 20px 17px 15px;
        line-height: 40px;
    }

    #money ul p{
        text-align: center;
    }
    #money .xxian{
        border: 1px dashed #303030;
        width: 80px;
    }
    #zffs .zffs li{
        border: 1px solid red;
        margin:10px;
        padding: 10px 10px;
    }
    #zffs h3{
        clear: left;
    }
    #zffs .zffs{
        margin: 0px auto;
        width: 600px;
    }
    .price{
        font-size: 35px;
    }
    .li a{
        display: inline-block;
    }
</style>
<body>

<div>
    <c:if test="${sessionScope.userSession == null}">
        <h3>开通账号：</h3>
    </c:if>
    <c:if test="${sessionScope.userSession != null}">
        <h3>开通账号：${sessionScope.userSession.uName}+"(${sessionScope.userSession.uNumber})"</h3>
    </c:if>
    <div id="money">
        <ul>
            <c:forEach items="${products}" var="products">
            <li class="li">
                <p style="display: none" class="pId">${products.pId}</p>
                <p><span class="price">${products.pPrice}</span>&nbsp;元</p>
                <p>${products.pYue1}</p>
                <p class="xxian"></p>
                <p>${products.pYue2}</p>
                <a href="${pageContext.request.contextPath}/Product/goConfirm?pId=${products.pId}">购买</a>
            </li>
            </c:forEach>
            <%--<li>
                <p><span>90</span>元</p>
                <p>15元/月</p>
                <p class="xxian"></p>
                <p>6个月</p>
            </li>
            <li>
                <p><span>168</span>元</p>
                <p>15元/月</p>
                <p class="xxian"></p>
                <p>12个月</p>
            </li>
            <li>
                <p><span>15</span><span>元</span></p>
                <p>15元/月</p>
                <p class="xxian"></p>
                <p><span>1</span>个月</p>
            </li>--%>
        </ul>
    </div>
    <div id="zhixian"></div>
    <div id="zffs">
        <h3>支付方式</h3>
        <div class="zffs">
            <ul>
                <li><input type="button" id="btn" name="btn" value="生成ajax表单"/></li>
            </ul>
        </div>
    </div>
</div>

</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.4.js"></script>
<script type="text/javascript">

    $(function () {



    });

</script>

</html>
