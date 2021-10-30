<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改信息</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改信息</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/shouye/updateRace" method="post">
        <input type="hidden" name="raceId" value="${race.getRaceId()}"/>
        <input type="hidden" name="raceDay" value="${race.getRaceDay()}"/>
        <input type="hidden" name="raceTime" value="${race.getRaceTime()}"/>
        比赛名称：<input type="text" name="raceName" value="${race.getRaceName()}"/>
        比赛地点：<input type="text" name="racePlace" value="${race.getRacePlace()}"/>
        比赛状态：
        未结束：<input type="radio" name="raceIsend" value=0>
        已结束：<input type="radio" name="raceIsend" value=1>
        <input type="submit" value="提交"/>
    </form>
</div>