<%--
  Created by IntelliJ IDEA.
  User: MACHENIKE
  Date: 2019/5/30
  Time: 0:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Main</title>
    <style>
        .main{
            position: absolute;
            top: 15%;
            left:50%;
            margin: -46px 0 0 -175px;
        }
        .login{
            position: absolute;
            top: 7%;
            left:12%;
            margin: -46px 0 0 -175px;
        }
        #div1{
            margin:0px;
            padding:0px;
            width:100%;
            height:100%;
            font-size:14px;
            background-color:lightsteelblue;
            position:absolute;
            text-align: center;
        }
    </style>
</head>
<body>
<div id="div1">
    <h1 align="center">
        在线考试系统
    </h1>
    <div class="main">
    </div>
    <div class="login"> <a href="/User/toLogin">返回登录</a></div>
</div>
<input id="userid" type="hidden" value="${userid}">
</body>
<script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>
<script>
    var userid=$("#userid").val();
    $.ajax({
        url:"/Test/selectAllTest",
        dataType:"json",
        async:true,
        data:{
        },
        type:"POST",
        success: function (data) {
            console.log(data['list']);
            for(var j=0;j<data['list'].length;j++){
                var item="<tr><td>"+data['list'][j].test_name+"</td><td>"+data['list'][j].test_time+"分钟"+"</td><td><button class='action'><a href='/Test/Toksxz?testid="+data['list'][j].test_id+"&userid="+userid+"'"+">开始考试</a></button></td></tr>";
                $(".main").append(item);
            }
        },
        error: function () {
            alert("异常！");
        }
    });
</script>
</html>