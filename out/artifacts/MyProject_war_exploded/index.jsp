<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>
<html>
<head>
  <title>首页</title>
  <style type="text/css">
    a {
      text-decoration: none;
      color: black;
      font-size: 18px;
    }
    h3 {
      width: 180px;
      height: 38px;
      margin: 100px auto;
      text-align: center;
      line-height: 38px;
      background: deepskyblue;
      border-radius: 4px;
    }
  </style>
</head>
<body>

<%--<form action="${pageContext.request.contextPath}/shouye" method="post">
  书籍名称：<input type="text" name="userName"><br><br><br>
  书籍数量：<input type="text" name="userPwd"><br><br><br>
  <input type="submit" value="登录">
</form>--%>
<h3>
  <a href="${pageContext.request.contextPath}/shouye">点击进入首页</a>
</h3>

</body>
</html>