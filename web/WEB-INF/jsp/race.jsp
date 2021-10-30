<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>奖牌榜</title>
</head>
<style>
    .top{
        width: 100%;
        height: 60px;
        background-attachment: fixed;
        background-image: url("https://iknow-pic.cdn.bcebos.com/2e2eb9389b504fc2019e1a95f7dde71191ef6d59");
    }
    .b{
        width: 100%;
        height: 40px;
    }
    .s{
        width:10%;
        height: 20px;
        float:right;
    }
    .s a{
        color:blue;
        text-decoration: none;
        font-size:10px;
        font-weight: bold;
    }
    .s a:hover{
        color:red;
    }
</style>
<body>
<div class="top"></div>
<div class="b">
    <h1 align="center">赛程查询</h1>
</div>
<div class="s">
    <a  href="ay.html">返回首页>></a>
</div>
<hr />
<br />
<form action="${pageContext.request.contextPath}/shouye/queryRace" method="get">
    未结束：<input type="radio" name="isend" value=0>
    已结束：<input type="radio" name="isend" value=1>
    <input type="submit" value="查询"/>
</form>
<table border="0px" height="100%" width="100%" align="center"  cellspacing="1px">
    <thead>
    <tr bgcolor="#333333">
        <th width="40%"><font color="#B0B0B0">赛事名称</font></th>
        <th width="20"><font color="#B0B0B0">日期</font></th>
        <th width="20%"><font color="#B0B0B0">时间</font></th>
        <th width="20%"><font color="#B0B0B0">是否结束</font></th>
    </tr>
    </thead>
    <tbody>
    <c:set var="index" value="0" />
    <c:forEach var="Race" items="${requestScope.get('listRace')}">
        <c:choose>
            <c:when test="${index%2==0}">
                <tr bgcolor="#FFFFFF">
                    <c:set var="index" value="${index+1}" />
                    <td>${Race.getRaceName()}</td>
                    <td>${Race.getRaceDay()}</td>
                    <td>${Race.getRaceTime()}</td>
                    <c:choose>
                        <c:when test="${Race.getRaceIsend()==0}">
                            <td>未开始</td>
                        </c:when>
                        <c:otherwise>
                            <td>已结束</td>
                        </c:otherwise>
                    </c:choose>
                </tr>
            </c:when>
            <c:otherwise>
                <tr bgcolor="lavender">
                    <c:set var="index" value="${index+1}" />
                    <td>${Race.getRaceName()}</td>
                    <td>${Race.getRaceDay()}</td>
                    <td>${Race.getRaceTime()}</td>
                    <c:choose>
                        <c:when test="${Race.getRaceIsend()==0}">
                            <td>未开始</td>
                        </c:when>
                        <c:otherwise>
                            <td>已结束</td>
                        </c:otherwise>
                    </c:choose>
                </tr>
            </c:otherwise>
        </c:choose>
    </c:forEach>
    </tbody>
</table>
</body>
</html>