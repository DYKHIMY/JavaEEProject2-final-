<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>login</title>
    <link rel="stylesheet" type="text/css" href="/css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="/css/demo.css" />
    <!--必要样式-->
    <link rel="stylesheet" type="text/css" href="/css/component.css" />
    <!--[if IE]>
    <script src="/js/html5.js"></script>
    <![endif]-->
</head>
<body>
<div class="container demo-1">
    <div class="content">
        <div id="large-header" class="large-header">
            <canvas id="demo-canvas"></canvas>
            <div class="logo_box">
                <h3>欢迎你</h3>
                <form action="#" name="f" method="post">
                    <div class="input_outer">
                        <span class="u_user"></span>
                        <input  id="loginname" class="text" style="color: #FFFFFF !important" type="text" placeholder="请输入账户">
                    </div>
                    <div class="input_outer">
                        <span class="us_uer"></span>
                        <input id="loginpassword" class="text" style="color: #FFFFFF !important; position:absolute; z-index:100;"value="" type="password" placeholder="请输入密码">
                    </div>
                    <div class="mb2">
                        <button type="button" class="act-but" style="color: #FFFFFF" id="loginButton">登录</button>
                    </div>
<<<<<<< HEAD
                    <div>
                        <button type="button" class="act-but" style="color: #FFFFFF" id="registerButton">注册</button>
                    </div>
=======
>>>>>>> 740d543031dbe1eef046bf5a53d543c713ca25cd
                </form>
            </div>
        </div>
    </div>
</div><!-- /container -->
<script src="/js/TweenLite.min.js"></script>
<script src="/js/EasePack.min.js"></script>
<script src="/js/rAF.js"></script>
<script src="/js/demo-1.js"></script>

</body>
<script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>
<script>
    $("#loginButton").click(function () {
        $.ajax({
<<<<<<< HEAD
            url:"http://localhost:8080/User/Login",//请求的url地址
=======
            url:"/User/Login",    //请求的url地址
>>>>>>> 740d543031dbe1eef046bf5a53d543c713ca25cd
            dataType:"json",   //返回格式为json
            async:true,//请求是否异步，默认为异步，这也是ajax重要特性
            data:{
                "name": $("#loginname").val(),
                "password": $("#loginpassword").val()
<<<<<<< HEAD
            },   
=======
            },   //参数值
>>>>>>> 740d543031dbe1eef046bf5a53d543c713ca25cd
            type:"POST",   //请求方式
            success: function (data) {
                console.log(data['woord']);
                if (data['woord'] == "12306") {
                    alert("登录成功！")
<<<<<<< HEAD
                    location.href = "/User/toMain?userid="+data['userid'];
=======
                    //location.href = "/User/Main?userid="+data['userid'];
>>>>>>> 740d543031dbe1eef046bf5a53d543c713ca25cd
                } else {
                    alert(data['woord']);
                }
            },
            error: function () {
<<<<<<< HEAD
                alert("登录异常！");
            }
        });
    })
    $("#registerButton").click(function () {
        $.ajax({
            type: "POST",
            dataType: "json",
            url: "http://localhost:8080/User/Register",
            data: {
                "name": $("#loginname").val(),
                "password": $("#loginpassword").val(),
            },
            success: function (data) {
                alert(data['woord']);
                //location.href="/User/toLogin";
            },
            error: function () {
                alert("注册失败");
=======
                alert("异常！");
>>>>>>> 740d543031dbe1eef046bf5a53d543c713ca25cd
            }
        });
    })
</script>
</html>