<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>用户登录界面</title>







    <style type="text/css">
        .bodystyle{
            background-position: center;
            filter:alpha(opacity=100);
            -moz-opacity:0.5;
            -khtml-opacity:0.5;
            opacity:1;
            background-image:url(img/wh2.png) ;
            background-repeat: no-repeat;
            background-size: cover;
            background-attachment: fixed;
            z-index:1;

        }
    </style>

    <style>
        .login-button { /* 按钮 */
            width: 90px;
            height: 50px;
            border-width: 2px;
            border-radius: 3px;

            background-color: rgba(0,0,0,0.4);
            cursor:pointer; /* 鼠标移入按钮范围时出现手势 */
            outline: none; /* 不显示轮廓线 */
            font-family: Microsoft YaHei; /* 设置字体 */
            color: white; /* 字体颜色 */
            font-size: 13px; /* 字体大小 */
        }
        .login-button:hover { /* 鼠标移入按钮范围时改变颜色 */
            background: #5599FF;
        }
    </style>

    <style>
        .input{/*输入框*/
            border: 1px solid #ccc;
            padding: 7px 0px;
            border-radius: 3px;
            padding-left:5px;
            box-shadow: inset 0 2px 1px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s
        }
        .input:focus{
            border-color:rgb(200,200,255);
            outline: 0;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6)
        }
    </style>

    <style>
        .text_tx{
            color: rgb(235,100,70);
            text-emphasis-style: h4;

        }
    </style>

    <!--是否为管理员复选框函数-->
    <script>
        function admi()
        {
            var items = document.getElementsByName("confirm");
            if(items[0].checked==true)
                document.getElementById("node" + String(1)).innerHTML = "当前身份选择" + ": " + "管理员";
            else document.getElementById("node" + String(1)).innerHTML = "当前身份选择" + ": " + "普通用户"
        }
    </script>


</head>

<body>
<div class="bodystyle"/>

<h1 align="center" >用户登录</h1>

<br /><br/>
<br />
<form  action="${pageContext.request.contextPath}/shouye/checklogin" method="get">

    <h2 align="center">账号：<input class="input" name="userName" placeholder="Num" type="text"
                                 style="height: 20px;width: 180px;"/><br /><br /><br />
        <h2 align="center">密码：<input class="input" name="userPwd" placeholder="Password" type="password"
                                     style="height: 20px;width: 180px;"/></h2><br />
<%--        <div class="col-md-4 column" align="center">--%>
<%--            <a href="register.html">我要注册</a>--%>
<%--        </div>--%>
        <div align="center">
            <input align="center" class="login-button" type="submit" value="登录" ></input>
        </div>
</form>





<br />
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
</form>

</body>
</html>


