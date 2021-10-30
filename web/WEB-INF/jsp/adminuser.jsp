<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html ng-app="App">
<head>
    <meta charset="UTF-8">
    <title></title>



    <style>
        .css1{
            background-color: red;
        }

        .css2{
            background-color: brown;
        }

    </style>
</head>
<h1 align="center">用户管理界面</h1>

<body  >
<div align="center">
    <hr style="color: #696969; width: 90%;" />
    <br />
    <form>
        <table border="2px" cellspacing="0" style="border-color: cadetblue;">
            <thead bgcolor="#AABBAA" style="font-size: 18px;height: 60px; ">
            <!--<td><input type="checkbox" ng-model="selectAll" ng-click="selectAllFun()"/></td>-->
            <td align="center">是否是管理员</td>
            <td align="center">用户账号</td>
            <td align="center">用户密码</td>
            <td align="center">用户邮箱</td>
            <td align="center">联系方式</td>
            <td align="center">操作</td>
            </thead>

            <tbody>
            <c:set var="index" value="0" />
            <c:forEach var="User" items="${requestScope.get('listUser')}">
                <c:choose>
                    <c:when test="${index%2==0}">
                        <tr bgcolor="#faebd7">
                            <c:set var="index" value="${index+1}" />
                            <c:choose>
                                <c:when test="${User.getUserAdmin()==0}">
                                    <td>否</td>
                                </c:when>
                                <c:otherwise>
                                    <td>是</td>
                                </c:otherwise>
                            </c:choose>
                            <td>${User.getUserName()}</td>
                            <td>${User.getUserPwd()}</td>
                            <td>${User.getUserEmail()}</td>
                            <td>${User.getUserPhone()}</td>
                            <td align="center">
                                <a href="${pageContext.request.contextPath}/shouye/toUpdateUser?name=${User.getUserName()}">更改</a> |
                                <a href="${pageContext.request.contextPath}/shouye/delUser?name=${User.getUserName()}">删除</a>
                            </td>
                        </tr>
                    </c:when>
                    <c:otherwise>
                        <tr bgcolor="#f0f8ff">
                            <c:set var="index" value="${index+1}" />
                            <c:choose>
                                <c:when test="${User.getUserAdmin()==0}">
                                    <td>否</td>
                                </c:when>
                                <c:otherwise>
                                    <td>是</td>
                                </c:otherwise>
                            </c:choose>
                            <td>${User.getUserName()}</td>
                            <td>${User.getUserPwd()}</td>
                            <td>${User.getUserEmail()}</td>
                            <td>${User.getUserPhone()}</td>
                            <td align="center">
                                <a href="${pageContext.request.contextPath}/shouye/toUpdateUser?name=${User.getUserName()}">更改</a> |
                                <a href="${pageContext.request.contextPath}/shouye/delUser?name=${User.getUserName()}">删除</a>
                            </td>
                        </tr>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
            </tbody>
    </table>
    </form>

    <br />


</div>



</body>
</html>