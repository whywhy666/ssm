<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
</head>
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

<body>
<h1 align="center">奖牌榜管理</h1>
<hr />
<div align="center">
    <form action="/shouye/updateCountry" method="post">
        <h4 align="center">选择国家</h4>
        <select name="countryName">
            <option>--请选择--</option>
            <c:forEach var="country" items="${requestScope.get('listCountry')}">
                <option>${country.getCountryName()}</option>
            </c:forEach>
        </select>
        <h4 align="center">更改奖牌</h4>
        🥇金牌：<input class="input" type="number" name="countryAu" value="0"/>
        🥈银牌：<input class="input" type="number" name="countryAg" value="0"/>
        🥉铜牌：<input class="input" type="number" name="countryCu" value="0"/>
        <input type="submit" value="提交" />
        <input type="reset"  value="重置" />
    </form>
    <br>
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
                    <tr bgcolor="#faebd7">
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
                    <tr bgcolor="#f0f8ff">
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
</div>
</body>
</html>