<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    </style>
    <script type="text/javascript">
		/*/!*var billObj;
        $(document).ready(function () {
        	$(".deleteSingger").click(function () {
        		billObj = $(this);
				delSingger(billObj);
			})
		})*!/
            function delSingger(obj) {
                $.ajax({
                    type: "POST",	//请求的类型
                    url: "/singger/delSinggerId", //请求的url
                    data: {sId: obj.attr("sId")},	//请求的参数
                    dateType: "json",//ajax接口（请求url）返回的数据类型
                    success: function (data) {	//data：返回数据（json对象）
                        if (data.delSingger == 1) {	//删除成功：移除删除行
                            obj.parents("tr").remove();
                        } else if (data.delSingger == -1) {	//删除失败
                        	alert("对不起，删除【" + obj.attr("sName") + "】歌手信息失败");
                            //changeDLGContent();
                        } else {
                        	alert("对不起，歌手【" + obj.attr("sName") + "】信息不存在");
                            //changeDLGContent();
                        }
                    },
                    error: function (data) {
                        alert("对不起删除失败")
                    }
                })
            }*/
        
    </script>
</head>
	
<body>
    <table>
        <tr>
            <th>歌手id</th>
            <th class="info">歌手姓名</th>
            <th class="info">地区</th>
        </tr>
        <c:forEach items="${singgers}" var="singgers">
            <tr>
                <td name="sId">${singgers.sId}</td>
                <td name="sName">${singgers.sName}</td>
                <td name="sRegion">${singgers.sRegion}</td>
                <td><a href="${pageContext.request.contextPath}/singger/querySinggerById?sId=${singgers.sId}">修改</a></td>
				<td><a href="${pageContext.request.contextPath}/singger/delSinggerId?sId=${singgers.sId}" id="delSinggers">删除</a>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
