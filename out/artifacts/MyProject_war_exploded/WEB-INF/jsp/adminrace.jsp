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
        width: 250px;
        height: 20px;
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
<div class="top"></div>
<div class="b">
    <h1 align="center">赛程管理</h1>
</div>
<hr />
<br />
<table border="0px" height="100%" width="100%" align="center"  cellspacing="1px">
    <thead style="height: 40px;">
    <tr bgcolor="#333333">
        <th width="4%"><font color="#B0B0B0">编号</font></th>
        <th width="16%"><font color="#B0B0B0">赛事名称</font></th>
        <th width="16%"><font color="#B0B0B0">日期</font></th>
        <th width="16%"><font color="#B0B0B0">时间</font></th>
        <th width="16%"><font color="#B0B0B0">场馆</font></th>
        <th width="16%"><font color="#B0B0B0">是否完成</font></th>
        <th width="16%"><font color="#B0B0B0">操作</font></th>
    </tr>
    </thead>
    <tbody>
    <c:set var="index" value="0" />
    <c:forEach var="Race" items="${requestScope.get('listRace')}">
        <c:choose>
        <c:when test="${index%2==0}">
            <tr bgcolor="#faebd7">
                <c:set var="index" value="${index+1}" />
                <td>${index}</td>
                <td>${Race.getRaceName()}</td>
                <td>${Race.getRaceDay()}</td>
                <td>${Race.getRaceTime()}</td>
                <td>${Race.getRacePlace()}</td>
                <c:choose>
                    <c:when test="${Race.getRaceIsend()==0}">
                        <td>未开始</td>
                    </c:when>
                    <c:otherwise>
                        <td>已结束</td>
                    </c:otherwise>
                </c:choose>
                <td align="center">
                    <a href="${pageContext.request.contextPath}/shouye/toUpdateRace?id=${Race.getRaceId()}">更改</a> |
                    <a href="${pageContext.request.contextPath}/shouye/delRace?id=${Race.getRaceId()}">删除</a>
                </td>
            </tr>
        </c:when>
        <c:otherwise>
            <tr bgcolor="#f0f8ff">
                <c:set var="index" value="${index+1}" />
                <td>${index}</td>
                <td>${Race.getRaceName()}</td>
                <td>${Race.getRaceDay()}</td>
                <td>${Race.getRaceTime()}</td>
                <td>${Race.getRacePlace()}</td>
                <c:choose>
                    <c:when test="${Race.getRaceIsend()==0}">
                        <td>未开始</td>
                    </c:when>
                    <c:otherwise>
                        <td>已结束</td>
                    </c:otherwise>
                </c:choose>
                <td align="center">
                    <a href="${pageContext.request.contextPath}/shouye/toUpdateRace?id=${Race.getRaceId()}">更改</a> |
                    <a href="${pageContext.request.contextPath}/shouye/delRace?id=${Race.getRaceId()}">删除</a>
                </td>
            </tr>
        </c:otherwise>
        </c:choose>
    </c:forEach>
    </tbody>
</table>
</body>
</html>