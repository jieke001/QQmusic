<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css"/>

<head>
    <script type="text/javascript"
            src="${pageContext.request.contextPath }/js/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/layui/layui.js"></script>

    <script type="text/javascript">
        $(function () {
            var text = $("#lrcText").val();
            console.log(text);
            var lrc = text.split("["); //将歌词在[处切割
            console.log(lrc);
            for (var i = 0; i < lrc.length; i++) {
                var lrcs = lrc[i].split("]"); //将切割后的歌词在]处切割，每一行成为一个数组，数组第一个是时间，第二个是歌词
                console.log(lrcs[0]);
                console.log(lrcs[1]);


                var time = lrcs[0].split("."); //将每句歌词的时间在.处切割
                console.log(time);

                var times = time[0].split(":"); //将每句时间在:处切割，成为一个数组
                console.log(times);

                var t = times[0] * 60 + times[1] * 1; //每一句歌词的时间，变为秒钟
                console.log(t);

                var content = null;
                if (lrcs[1]) {
                    content = $("#content").get(0);
                    console.info("iii---" + i);
                    content.innerHTML += "<p id = " + t + ">" + lrcs[1] + "</p>";
                }
            }

            console.info(lrc.length + "----lrc.length");

            var ap = document.getElementsByTagName("p");
            var n = 0;
            //监听歌曲播放的进度
            var musicPlay = $("#musicPlay").get(0);
            musicPlay.addEventListener(
                //监听事件
                "timeupdate",
                function () {
                    /*console.log(this.currentTime);*/
                    var currentTime = parseInt(this.currentTime); //将当前时间取整
                    /*console.info(currentTime);*/
                    var cur = $(currentTime).get(0);
                    /*console.info(cur);*/
                    if (document.getElementById(cur)) {

                        for (var i = 0; i < ap.length; i++) {
                            /*console.info(ap[i]);*/
                            ap[i].style.cssText = "color:#9A9FA2;font-size:14px";
                        }
                        /*到歌词的几秒后让字体变红字体变大*/
                        document.getElementById(cur).style.cssText = "color:red;font-size:18px";
                      /*  console.info(document.getElementById(cur).style.cssText = "color:red;font-size:18px");*/
                       /* console.info(cur);*/
                        if ((ap[10 + n].id == cur)) {
                            console.info(ap[10 + n].id);
                            console.info(cur);
                            console.info(content.style.top = -n * 17 + "px");
                            content.style.top = -n * 17 + "px";
                            n++;
                        }
                    }

                });

            $("p").click(function () {
                console.info(this.id);
                var id = this.id; // 195
                $("#musicPlay").get(0).currentTime = id;
                // 播放
                $("#musicPlay").get(0).play();

            });
        })

    </script>

</head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/music_lrc.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}"/>
<body style="background-color: #283A3E">

<div id="imgMain"><a href="${pageContext.request.contextPath}/admin/qqMusicMain"><img src="${pageContext.request.contextPath}/img/logo@2x.png" width="180px" height="45px" id="img"/></a>
    <a id="return" href="javascript:history.go(-1);" class="layui-bg-blue"><i class="layui-icon layui-icon-return" style="font-size: 25px;"></i></a>
 <%--   <i class="layui-icon layui-icon-face-smile" style="font-size: 30px; color: #1E9FFF;"></i>--%>
</div>

<div id="whole"
     style="background-image: url('http://localhost:8080/${pageContext.request.contextPath }/upload/${photourl}') ;">
</div>

<div id="whole2">
    <div id="whole3">
        <div class="title">歌曲名：${mName }</div>
        <div class="singer">歌手名：${getsName }</div>
        <div>专辑名：${getaName}</div>
    </div>
    <div class="lrc">
        <div id="content"><textarea id="lrcText" style="display:none">${lrc}</textarea></div>
    </div>
    <!--HTML5音频标签  -->
    <div id="myMusic">
        <audio
                src="http://localhost:8080${pageContext.request.contextPath}/upload/${musicurl}"
                controls="controls" id="musicPlay"></audio>
    </div>

</div>
</body>
</html>
