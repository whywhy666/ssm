<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>用户注册界面</title>
    <script src="http://static.runoob.com/assets/jquery-validation-1.14.0/lib/jquery.js"></script>
    <script src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>


</head>

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





<!--body background="img/wuhuan.png" -->
<!--body style="background-image: url(img/wuhuan.png);
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    background-attachment: fixed;
    background-color: rgba(21,76,34,0.1);">
</body-->

<body>
<div class="bodystyle"/>

<h1 align="center" >用户注册</h1>
<br/>
<br />
<br />

<form action="${pageContext.request.contextPath}/shouye/checklogup" class="form-horizontal"method="get">
    <div class="control-group">
        <h2>
            <div align="center" class="controls">账&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;号&nbsp;
                <input class="input" name="user_Name" placeholder="Num" type="text"
                       style="height: 20px;width: 180px;">
                <c:choose>
                    <c:when test="${flag==0}">
                        <p><h4 align="center" style="color: #FF0000;">该用户名已存在！</h4></p>
                    </c:when>
                </c:choose>
            </div>
        </h2>
    </div>
    <br />
    <div class="control-group">
        <h2>
            <div align="center" class="controls">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码&nbsp;
                <input class="input" name="user_Pwd" placeholder="Password" type="text"
                       style="height: 20px;width: 180px;"/>
            </div>
        </h2>
    </div>
    <br />
    <div class="control-group">
        <h2>
            <div align="center" class="controls">确认密码&nbsp;
                <input class="input" name="user_Pd" placeholder="aPassword" type="text"
                       style="height: 20px;width: 180px;"/>
            </div>
        </h2>
    </div>
    <br>
    <div>
        <c:choose>
            <c:when test="${flag==1}">
                <h4 align="center" style="color: #FF0000;">两次密码不一致</h4>
            </c:when>
        </c:choose>
    </div>

    <div class="control-group">
        <h2>
            <div align="center" class="controls">邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱&nbsp;
                <input class="input" name="user_Email" placeholder="Email" type="email"
                       style="height: 20px;width: 180px;"/>
            </div>
        </h2>
    </div>
    <br />
    <div class="control-group">
        <h2>
            <div align="center" class="controls">联系方式&nbsp;
                <input class="input" name="user_Phone" placeholder="Phone" type="text"
                       style="height: 20px;width: 180px;"/>
            </div>
        </h2>
    </div>
    <br />
    <div class="col-md-4 column" align="center">
        <!--a href="login.html">直接登录</a-->
    </div>
    <div class="control-group">
        <div align="center" class="controls">
            <input class="login-button" onclick="" type="submit" value="注册" style="font-size: 16px;"></input>
        </div>
    </div>



<%--    <!--div>--%>

<%--            <<c:choose>--%>
<%--                   <c:when test="" >--%>
<%--                   	<button name="button1" id="button1" hidden="hidden">按钮</button>--%>
<%--                   </c:when>--%>

<%--                   <c:otherwise>--%>
<%--                   	  <p onclick="xx()" value="提示" />--%>
<%--                   </c:otherwise>--%>
<%--        </c:choose>--%>
<%--            </div-->--%>

</form>
<br /><br /><br /><br /><br /><br /><br /><br /><br />


</body>
</html>