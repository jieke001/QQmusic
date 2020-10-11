<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <link href="${pageContext.request.contextPath}/css/QQMusic2.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/allmusic.css"/>
    <link href="${pageContext.request.contextPath}/layui/css/layui.css" rel="stylesheet" type="text/css"/>
</head>
<script type="text/javascript" src=" ${pageContext.request.contextPath }/js/jquery-1.12.4.js"></script>
<script src="${pageContext.request.contextPath}/layui/layui.js"></script>
<script type="text/javascript">

    //注意：导航 依赖 element 模块，否则无法进行功能性操作
    layui.use('element', function () {
        var element = layui.element;

        //…
    });

    layui.use('layer', function () {
        $(function () {
            //展示歌单
            //添加喜欢歌曲
            $("img#like").click(function () {

                var this2 = $(this);

                if (${sessionScope.userSession == null}) {
                    alert("请先登录");
                    layer.open({
                        title: '用户登录',
                        type: 2,
                        content: 'http://localhost:8080/QQmusicWeb/user/translate2login',
                        area: ['500px', '400px'],
                        offset: ['160px', '500px']
                    });
                } else {
                    /*var lUid = $("input[name='lUid']").val();
                    var lMid = $("input[name='lMid']").val();
                    var lSid = $("input[name='lSid']").val();*/

                    var lUid = $(this).parent().siblings(".id1").text();
                    var lMid = $(this).parent().siblings(".id2").text();
                    var lSid = $(this).parent().siblings(".id3").text();
                    var lAid = $(this).parent().siblings(".id4").text();

                    console.log(lUid);
                    console.log(lMid);
                    console.log(lSid);
                    console.log(lAid);

                    var reqData = {"lUid": lUid, "lMid": lMid, "lSid": lSid, "lAid": lAid};

                    $.ajax({
                        type: "POST",
                        url: "${pageContext.request.contextPath }/like/queryByUidMidSid",
                        data: JSON.stringify(reqData),
                        contentType: "application/json;charset=utf-8",
                        dataType: "json",
                        success: function (reqData2) {
                            console.log(reqData2.num);
                            if (reqData2.num == 1) {
                                alert("歌曲已存在");
                            } else {
                                $.ajax({
                                    type: "POST",
                                    url: "${pageContext.request.contextPath}/like/addLikeMusic",
                                    data: JSON.stringify(reqData),
                                    contentType: "application/json;charset=utf-8",
                                    dataType: "json",
                                    success: function (reqData2) {
                                        console.log(reqData2.num);
                                        if (reqData2.num == 1) {
                                            alert("添加成功");
                                        } else {
                                            alert("添加失败");
                                        }
                                    }
                                });
                            }
                        }
                    });
                }
            })

            $(".myMusic").click(function () {
                if (${sessionScope.userSession == null}) {
                    alert("您还未登录，请先登录");
                    layer.open({
                        title: '用户登录',
                        type: 2,
                        content: 'http://localhost:8080/QQmusicWeb/user/translate2login',
                        area: ['500px', '400px'],
                        offset: ['160px', '500px']
                    });
                } else {
                    $(this).attr("href", "${pageContext.request.contextPath}/like/queryByUidLikeList?uId=${sessionScope.userSession.uId}");
                }
            });

            //添加收藏
            $("img#collection").click(function () {

                if (${sessionScope.userSession == null}) {
                    alert("您还未登录，请先登录");
                    layer.open({
                        title: "用户登录",
                        type: 2,
                        content: 'http://localhost:8080/QQmusicWeb/user/translate2login',
                        area: ['500px', '400px'],
                        offset: ['160px', '500px']
                    });
                } else {
                    var cUid = $(this).parent().siblings(".id1").text();
                    var cMid = $(this).parent().siblings(".id2").text();
                    var cSid = $(this).parent().siblings(".id3").text();
                    var cAid = $(this).parent().siblings(".id4").text();

                    console.log(cUid);
                    console.log(cMid);
                    console.log(cSid);
                    console.log(cAid);

                    var reqData = {"cUid": cUid, "cMid": cMid, "cSid": cSid, "cAid": cAid};

                    $.ajax({
                        type: "POST",
                        url: "${pageContext.request.contextPath }/collect/queryByUidMidSid2",
                        data: JSON.stringify(reqData),
                        contentType: "application/json;charset=utf-8",
                        dataType: "json",
                        success: function (reqData3) {
                            console.log(reqData3.num);
                            if (reqData3.num == 1) {
                                alert("歌曲已存在");
                            } else {
                                $.ajax({
                                    type:"POST",
                                    url:"${pageContext.request.contextPath}/collect/addByCollect",
                                    data:JSON.stringify(reqData),
                                    contentType:"application/json;charset=utf-8",
                                    dataType:"json",
                                    success:function (reqData) {
                                        console.log(reqData);
                                        if(reqData.num==1){
                                            alert("添加成功");
                                        }else{
                                            alert("添加失败");
                                        }
                                    }
                                });
                            }
                        }
                    });
                }
            })

            /*点击下载*/
            $("img#downLoad").click(function () {
                    var mId = $(this).next().children(".mId").val();
                    window.location.href = "${pageContext.request.contextPath}/music/musicDownload?mId=" + mId;
            });

            //点击下载
            /*var sid;
            var span;
            $("img#downLoad").click(function () {
                name = $("#U").text();
                if (name == "登录") {
                    window.location.href = "/UserRegister.jsp"
                }
                sid = $(this).parent().siblings(".id").text();
                span = $(this).siblings(".message");

                $(".utype").show();
            })
            $("#ut li").click(function () {
                sid;
                span;
                var tid = $(this).val();

                $(".utype").hide();
                // alert(sid)
                // alert(tid)
                var message = {"songid": sid, "tid": tid};

                url = "/adddownloadservlet";
                $.post(
                    url,
                    message,
                    function (date) {
                        //alert("fskl")
                        span.html(date.message);
                    }
                    , "json"
                );
            })*/
            //鼠标移到当前行变色
            $("td").bind("mouseover mouseout", function () {
                $(this).parent().toggleClass("color");
            });


        $("#sub").click(function () {
            layer.open({
                title: '用户登录',
                type: 2,
                content: 'http://localhost:8080/QQmusicWeb/user/translate2login',
                area: ['500px', '400px'],
                offset: ['160px', '500px']
            });
        });
        });
    })
</script>
<style>
    .header {
        height: 90px;
        margin: 0px auto;
        width: 87%;
    }

    #table {
        width: 58%;
        margin: 0px auto;
    }

    .layui-nav-img {
        width: 35px;
        height: 35px;
        margin-right: 10px;
        margin-top: 3px;
        margin-left: 3px;
        border-radius: 50%
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
                    <a href="#">音乐馆</a>
                </li>
                <li>
                    <a href="javascript:;" class="myMusic">我的音乐</a>
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
    <table id="table">
        <tr>
            <th id="song">歌曲</th>
            <th id="operations"></th>
            <th id="singers">歌手</th>
            <th id="albums">专辑</th>
        </tr>

        <c:forEach items="${songList}" var="songList">
            <tr>
                <td style="display: none" class="id1" name="lUid">${sessionScope.userSession.uId}</td>
                <!-- 歌曲id -->
                <td style="display: none" class="id2" name="lMid">${songList.mId}</td>
                <!-- 歌手id -->
                <td style="display: none" class="id3" name="lSid">${songList.singgerList.get(0).sId}</td>
                <!-- 歌手id -->
                <td style="display: none" class="id4" name="lAid">${songList.lbumList.get(0).aId}</td>

                <!-- 歌曲名称 -->
                <td id="songName">${songList.mName}</td>

                <td id="operation">
                    <img src="${pageContext.request.contextPath}/img/like.png" id="like"/>
                    <img src="${pageContext.request.contextPath}/img/downLoad.png " id="downLoad"/>
                    <form action="${pageContext.request.contextPath}/music/playMusic" method="post">
                        <input type="image" src="${pageContext.request.contextPath }/img/bofang.png" id="image"
                               class="image">
                            <%--歌曲id--%>
                        <input type="hidden" name="mId" value="${songList.mId}" class="mId">
                            <%--歌曲名称--%>
                        <input type="hidden" name="mName" value="${songList.mName }">
                            <%--歌曲路径--%>
                        <input type="hidden" name="mMusicurl" value="${songList.mMusicurl}" class="mMusicurl">
                            <%--歌词路径--%>
                        <input type="hidden" name="mTexturl" value="${songList.mTexturl}">
                            <%--照片路径--%>
                        <input type="hidden" name="mPhotourl" value="${songList.mPhotourl}">
                            <%--歌手名称--%>
                        <input type="hidden" name="sName" value="${songList.singgerList.get(0).sName}">
                            <%--专辑名称--%>
                        <input type="hidden" name="aName" value="${songList.lbumList.get(0).aName}">

                    </form>
                    <img src="${pageContext.request.contextPath}/img/collection.png" id="collection"/>
                    <span class="message"> </span>
                </td>
                <!-- 歌手名称 -->
                <td id="singer">${songList.singgerList.get(0).sName}</td>
                <!-- 专辑名称 -->
                <td id="albumName">${songList.lbumList.get(0).aName}</td>
            </tr>
        </c:forEach>

    </table>
    <div class="utype">


        <ul id="ut">
            <li style="display: none;" id="tlist">${tlist}</li>
            <c:forEach items="${tlist}" var="ut">
                <li value="${ut.id }">${ut.name }</li>
            </c:forEach>
        </ul>
    </div>


</body>
</html>
