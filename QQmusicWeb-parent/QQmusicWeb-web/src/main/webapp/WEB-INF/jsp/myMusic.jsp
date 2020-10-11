<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>我的音乐</title>
    <link href="${pageContext.request.contextPath}/css/QQMusic2.css" rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/css/My_music.css" rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/layui/css/layui.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript"
            src="${pageContext.request.contextPath }/js/jquery-1.12.4.js"></script>
    <script src="${pageContext.request.contextPath}/layui/layui.js"></script>
    <script type="text/javascript">

        //注意：导航 依赖 element 模块，否则无法进行功能性操作
        layui.use('element', function () {
            var element = layui.element;

            //…
        });
        layui.use('layer', function () {

            $(function () {

                $("#like").click(function () {
                    if (${sessionScope.userSession == null}) {
                        alert("请先登录");
                        layer.open({
                            title: '用户登录',
                            type: 2,
                            content: 'http://localhost:8080/QQmusicWeb/user/translate2login',
                            area: ['500px', '400px']
                        });
                    }/*else{
                        $(this).attr("href","/like/queryByUidLikeList?uId=");

                    }*/
                });

                $("#sub").click(function () {
                    layer.open({
                        title: '用户登录',
                        type: 2,
                        content: 'http://localhost:8080/QQmusicWeb/user/translate2login',
                        area: ['500px', '400px']
                    });
                });

                $("#location").click(function () {
                    $("iframe").attr("src", "${pageContext.request.contextPath }/locationListServlet");
                });
                $("#history").click(function () {
                    $("iframe").attr("src", "${pageContext.request.contextPath }/addHistory");
                });
                $("#collection").click(function () {
                    $("iframe").attr("src", "${pageContext.request.contextPath }/collectionListServlet");
                });

                $("#gedan").click(function () {
                    $("#liadd").show();
                });
                $(".addutype").blur(function () {
                    var utname = $(this).val();
                    if (utname != null && utname != "") {
                        window.location.href = "${pageContext.request.contextPath }/addutypeservlet?utname=" + utname;
                    } else {
                        $("#liadd").hide();
                    }
                });
                $("li#ut").click(function () {
                    var tid = $(this).val();
                    //alert(tid);
                    $("iframe").attr("src", "${pageContext.request.contextPath }/utmusicServlet?tid=" + tid);
                })

                $('.gNeng ul li a').each(function () {
                    /*alert($(this)[0].href);*/
                    if ($(this)[0].href == String(window.location)){
                        $(this).addClass('abc').attr('href', 'javascript:void(0);');
                    }
                });

            })

        })
    </script>
</head>
<style>

    .abc {
        color: #00FF00;
    }

    .gNeng ul li .a1:hover{
        color: #00FF00;
    }
    .gNeng ul li .a2:hover{
        color: #00FF00;
    }
    .gNeng ul li .a3:hover{
        color: #00FF00;
    }
    .gNeng ul li .a4:hover{
        color: #00FF00;
    }

    .header {
        height: 90px;
        margin: 0px auto;
        width: 86%;
    }

    .nva #list li:nth-child(1) {
        margin-left: 20px;
        background-color: #31C27C;
        color: white;
    }

    .nva #list li:nth-child(6) input {
        width: 213px;
    }

    .layui-nav-img {
        width: 35px;
        height: 35px;
        margin-right: 10px;
        margin-top: 2px;
        margin-left: 3px;
        border-radius: 50%
    }

    .nva #list li:nth-child(1) {
        background-color: white;
    }

    .nva #list li:nth-child(1) a {
        color: black;
    }

    .nva #list li:nth-child(2) {
        background-color: #31C27C;
    }

    .nva #list li:nth-child(2) a {
        padding-left: 13px;
        padding-right: 13px;
    }

    .nva #list li:nth-child(2) a {
        color: white;
    }


</style>
<body>
<div id="header">
    <!--导航-->
    <header class="header">
        <div class="nva">
            <div class="nva-img">
                <h1><a href="${pageContext.request.contextPath}/admin/qqMusicMain"><img
                        src="${pageContext.request.contextPath}/img/logo@2x.png" style="width: 180px ;height: 45px"
                        alt="QQ音乐"/></a></h1>
            </div>
            <ul id="list" class="layui-nav">
                <li>
                    <a href="${pageContext.request.contextPath}/admin/qqMusicMain">音乐馆</a>
                </li>
                <li>
                    <a href="${pageContext.request.contextPath}/admin/myMusic2">我的音乐</a>
                </li>
                <li>
                    <a href="#">客户端</a>
                    <dl class="khd">
                        <dt>HQ高品质&nbsp;全员开启</dt>
                        <dt>独家音质&nbsp;全面升级</dt>
                        <dt>轻盈视觉&nbsp;动态皮肤</dt>
                        <dt><a>下载体验</a></dt>
                    </dl>
                </li>
                <li>
                    <a href="#">开放平台</a>
                </li>
                <li>
                    <a href="#">VIP</a>
                </li>
                <li>
                    <input type="text" name="shousuo" placeholder="搜索音乐、MV、歌单、用户"/>
                </li>
                <li class="layui-nav-item">
                    <c:if test="${sessionScope.userSession eq null}">
                        <a href="#" id="sub">登录</a>
                    </c:if>
                    <c:if test="${sessionScope.userSession ne null}">
                        <a href="javascript:;"><img src="${pageContext.request.contextPath}/img/1230131.jpg"
                                                    class="layui-nav-img"/></a>
                        <dl class="layui-nav-child">
                            <!-- 二级菜单 -->
                            <dd>
                                <a href="javascript:;">${sessionScope.userSession.uName}</a>
                            </dd>
                            <dd>
                                <a href="${pageContext.request.contextPath}/user/exitUser">退出</a>
                            </dd>
                        </dl>
                    </c:if>
                </li>
                <li>
                    <a href="#">开通绿钻豪华版</a>
                </li>
                <li>
                    <a href="#">开通付费包</a>
                </li>
            </ul>
        </div>
    </header>
    <div id="myMusic">
        <div class="gNeng">
            <ul>
                <li>
                    <a href="${pageContext.request.contextPath}/like/queryByUidLikeList?uId=${sessionScope.userSession.uId}"
                       id="like" data-anchor="for" class="a1"><p>我喜欢</p></a></li>
                <li><a href="javascript:;" id="location" class="a2"><p>本地下载</p></a></li>
                <li><a href="javascript:;" id="history" class="a3"><p>播放历史</p></a></li>
                <li>
                    <a href="${pageContext.request.contextPath}/collect/queryCollectList?uId=${sessionScope.userSession.uId}"
                       id="collection" class="a4"><p>收藏</p></a></li>
            </ul>
        </div>
    </div>
    <div id="likeMusic">
        <table>
            <tr>
                <td>歌曲</td>
                <td>歌手</td>
                <td>专辑</td>
            </tr>
            <c:forEach items="${likeList}" var="likeList">
                <tr class="table1">
                    <td>${likeList.musicList.get(0).mName}</td>
                    <td>${likeList.singgerList.get(0).sName}</td>
                    <td>${likeList.lbumList.get(0).aName}</td>
                </tr>
            </c:forEach>

            <c:forEach items="${collectList}" var="collectList">
                <tr class="table2">
                    <td>${collectList.musicList.get(0).mName}</td>
                    <td>${collectList.singgerList.get(0).sName}</td>
                    <td>${collectList.lbumList.get(0).aName}</td>
                </tr>
            </c:forEach>

        </table>
    </div>
</div>
</body>
</html>
