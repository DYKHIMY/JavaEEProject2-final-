<%--
  Created by IntelliJ IDEA.
  User: MACHENIKE
  Date: 2019/5/30
  Time: 21:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>teacherPage</title>
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
        教师页面
    </h1>
    <div class="main">
    </div>
    <div class="login"> <a href="/User/toLogin">返回登录</a></div>
</div>
<input id="userid" type="hidden" value="${userid}">
</body>
<script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
    var userid=$("#userid").val();
    var testid;
    $.ajax({
        url:"/Test/selectAllTest",
        dataType:"json",
        async:true,
        data:{
            pagenum:1
        },
        type:"POST",
        success: function (data) {
            // console.log(data['list']);
            for(var j=0;j<data['list'].length;j++){
                testid=data['list'][j].test_id;
                var item="<tr><td>"+data['list'][j].test_name+"</td><td>"+data['list'][j].test_time+"分钟"+"</td><td><button type='button' class='action'><a href='/Test/selectQuestionByTest?testid="+testid+"&userid="+userid+"'>查看</a></button></td><td><button id='deleteTest' type='button'><a href='/Test/deleteTest?testid="+testid+"&userid="+userid+"'>删除</a></button></tr>";
                $(".main").append(item);
            }
        },
        error: function () {
            alert("异常！");
        }
    });
</script>
</html>
