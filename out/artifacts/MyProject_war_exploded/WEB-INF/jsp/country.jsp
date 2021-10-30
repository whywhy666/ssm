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
    <h1 align="center">奖牌榜</h1>
</div>
<div class="s">
    <a  href="ay.html">返回首页>></a>
</div>
<table border="0px" height="1000px" width="100%" align="center" cellspacing="1px">
    <thead >
    <tr bgcolor="#333333" height="50px">
        <th width="100x"><font color="#B0B0B0">排名</font></th>
        <th width="400px"><font color="#B0B0B0">国家</font></th>
        <th><font color="#B0B0B0">🥇金牌</font></th>
        <th><font color="#B0B0B0">🥈银牌</font></th>
        <th><font color="#B0B0B0">🥉铜牌</font></th>
        <th><font color="#B0B0B0">🏅奖牌</font></th>
    </tr>
    </thead>
    <tbody>
    <c:set var="index" value="0" />
    <c:forEach var="Country" items="${requestScope.get('listCountry')}">
        <c:choose>
            <c:when test="${index%2==0}">
                <tr bgcolor="white">
                    <c:set var="index" value="${index+1}" />
                    <td>${index}</td>
                    <td>${Country.getCountryName()}</td>
                    <td>${Country.getCountryAu()}</td>
                    <td>${Country.getCountryAg()}</td>
                    <td>${Country.getCountryCu()}</td>
                    <td>${Country.getCountryAu()+Country.getCountryAg()+Country.getCountryCu()}</td>
                </tr>
            </c:when >
            <c:otherwise>
                <tr bgcolor="#e6e6fa">
                    <c:set var="index" value="${index+1}" />
                    <td>${index}</td>
                    <td>${Country.getCountryName()}</td>
                    <td>${Country.getCountryAu()}</td>
                    <td>${Country.getCountryAg()}</td>
                    <td>${Country.getCountryCu()}</td>
                    <td>${Country.getCountryAu()+Country.getCountryAg()+Country.getCountryCu()}</td>
                </tr>
            </c:otherwise>
        </c:choose>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
