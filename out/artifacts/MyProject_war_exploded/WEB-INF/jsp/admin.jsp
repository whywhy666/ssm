<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>奥运咨讯综合平台(管理员界面)</title>
    <style>
        *{margin: 0px;padding: 0px;}
        .top{
            width: 100%;
            height: 60px;
            border: 1px solid green;
            background-image: url("https://iknow-pic.cdn.bcebos.com/2e2eb9389b504fc2019e1a95f7dde71191ef6d59");
        }
        .tips{border: 1px solid green;
            width: 100%;
            height: 40px;
            background-color: #333333;
        }
        .cen{
            width:1300px;
            height: 40px;
            margin: 0px auto;
        }
        li{
            list-style: none;
        }
        .tips li{
            float:left;
            line-height: 25px;
        }
        .tips a{
            color:#B0B0B0;
            text-decoration: none;
            font-size:15px;
        }
        .tips a:hover{
            color: #ffffff;
        }
        .tips span{
            color:#424242;
            font-size: 32px;
            margin-left: 45px;
            margin-right: 45px;
        }
    </style>
</head>
<body>
<div class="top"></div>
<div class="tips">
    <div class="cen">
        <ul>
            <li><a href="${pageContext.request.contextPath}/shouye/adminrace" target="c">赛程管理</a><span>|</span></li>
            <li><a href="${pageContext.request.contextPath}/shouye/admincountry" target="c">奖牌榜管理</a><span>|</span></li>
            <li><a href="${pageContext.request.contextPath}/shouye/adminuser" target="c">用户管理</a><span>|</span></li>
            <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>|</span></li>
            <li><a href="${pageContext.request.contextPath}/shouye/sy" >返回首页</a><span>|</span></li>

        </ul>
    </div>
</div>
<iframe src="" width="100%" height="550px" name="c"></iframe>
</body>
</html>