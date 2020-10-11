<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  Created by IntelliJ IDEA.
  User: Mr.Song
  Date: 2019/12/17
  Time: 23:00
  To change this template use File | Settings | File Templates.
--%>

<html>
<head>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
    <style>

    </style>

    <title>注册</title>
</head>
<body>

<script src="${pageContext.request.contextPath}/js/jquery-1.12.4.js"></script>
<script src="${pageContext.request.contextPath}/layui/layui.js"></script>

<script>

    //注意：选项卡 依赖 element 模块，否则无法进行功能性操作
    layui.use('element', function(){
        var element = layui.element;

        layui.use('form', function () {
            var form = layui.form;
                form.on('submit(formDemo2)',function(data){
                    // 1.获取表单数据
                    var uName = $("input[name='uName']").val();
                    var uPwd = $("input[name='uPwd']").val();

                    //2、构造json格式的字符串
                    var requestData = {"uName":uName,"uPwd":uPwd};
                $.ajax({
                    url:"${pageContext.request.contextPath}/user/login",
                    type:"POST",
                    data:JSON.stringify(requestData),
                    contentType:"application/json;charset=utf-8",
                    dataType:"json",
                    success:function (respData) {

                        console.log(respData.user2);

                        /*console.log(respData.user2.uName);*/
                        if(respData.user2!=null){
                            window.parent.location.href="${pageContext.request.contextPath}/user/QQMusicManin2";
                            alert("登录成功");
                        }else{
                            alert("登录失败");
                        }
                    }
                })
                    return false;
            })

            form.on('submit(formDemo3)',function (data) {

                var username = $("input[name='username']").val();
                var password = $("input[name='password']").val();

                var reqData = {"username":username,"password":password};

                $.ajax({
                    url:"${pageContext.request.contextPath}/admin/queryAdminLogin",
                    type:"POST",
                    data:JSON.stringify(reqData),
                    contentType:"application/json;charset=utf-8",
                    dataType:"json",
                    success:function (reqData) {
                        console.log(reqData.num);

                        /*console.log(respData.user2.uName);*/
                        if(reqData.num!=null){
                            window.parent.location.href="${pageContext.request.contextPath}/admin/houtai";
                            alert("登录成功");
                        }else{
                            alert("登录失败");
                        }
                    }
                });

                return false;
            })

            layui.use('layer',function () {

                $(function () {
                    $("#zc").click(function () {
                        window.location.href="${pageContext.request.contextPath}/user/test";
                    });

                });
            });

        });
        //…
    });




</script>

<div class="layui-tab">
    <ul class="layui-tab-title">
        <li class="layui-this">QQ登录</li>
        <li>管理员登录</li>
    </ul>
    <div class="layui-tab-content">
        <div class="layui-tab-item layui-show">
            <div class="form">
                <form class="addvoteform layui-form">
                    <div class="layui-form-item">
                        <label class="layui-form-label">账户</label>
                        <div class="layui-input-block">
                            <input type="text" name="uName" required lay-verify="required" placeholder="请输入账户" autocomplete="off" value="${username}"
                                   class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label" name="password">密码</label>
                        <div class="layui-input-inline">
                            <input type="password" name="uPwd" required lay-verify="required" placeholder="请输入密码"
                                   autocomplete="off" class="layui-input">
                        </div>
                        <div class="layui-form-mid layui-word-aux">请输入6~18位字符</div>
                    </div>

                    <div class="layui-form-item">
                        <div class="layui-input-block">
                            <button class="layui-btn layui-btn-sm" lay-submit lay-filter="formDemo2" >确定</button>
                            <button type="reset" class="layui-btn layui-btn-sm layui-btn-primary">重置</button>
                        </div>
                    </div>
                </form>
                <div class="register_account"><a href="${pageContext.request.contextPath}/user/test" id="zc">前往注册</a></div>
            </div>
        </div>
        <div class="layui-tab-item">
            <div class="form">
                <form class="addvoteform layui-form">
                    <div class="layui-form-item">
                        <label class="layui-form-label">账户</label>
                        <div class="layui-input-block">
                            <input type="text" name="username" required lay-verify="required" placeholder="请输入账户" autocomplete="off" value="${username}"
                                   class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label" name="password">密码</label>
                        <div class="layui-input-inline">
                            <input type="password" name="password" required lay-verify="required" placeholder="请输入密码"
                                   autocomplete="off" class="layui-input">
                        </div>
                        <div class="layui-form-mid layui-word-aux">请输入6~18位字符</div>
                    </div>

                    <div class="layui-form-item">
                        <div class="layui-input-block">
                            <button class="layui-btn layui-btn-sm" lay-submit lay-filter="formDemo3" >确定</button>
                            <button type="reset" class="layui-btn layui-btn-sm layui-btn-primary">重置</button>
                        </div>
                    </div>
                </form>
               <%-- <div class="register_account"><a href="${pageContext.request.contextPath}/user/test" id="zc2">前往注册</a></div>--%>
            </div>
        </div>
        <div class="layui-tab-item">内容3</div>
        <div class="layui-tab-item">内容4</div>
        <div class="layui-tab-item">内容5</div>
    </div>
</div>

</body>
</html>

