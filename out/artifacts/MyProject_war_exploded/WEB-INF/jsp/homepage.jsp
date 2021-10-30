<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <meta charset="utf-8">
    <title>奥运咨讯综合平台</title>
    <style>
        * {
            margin: 0px;
            padding: 0px;
        }

        .top {
            width: 100%;
            height: 60px;
            background-attachment: fixed;
            background-image: url("https://iknow-pic.cdn.bcebos.com/2e2eb9389b504fc2019e1a95f7dde71191ef6d59");
        }

        .tips {
            width: 100%;
            height: 40px;
            background-color: #333333;
        }

        .cen {
            width: 1300px;
            height: 40px;
            margin: 0px auto;
        }

        .tips li {
            float: left;
            line-height: 25px;
            list-style: none;
        }

        .tips a {
            color: #B0B0B0;
            text-decoration: none;
            font-size: 15px;
        }

        .tips a:hover {
            color: #ffffff;
        }

        .tips span {
            color: #424242;
            font-size: 22px;
            margin-left: 45px;
            margin-right: 45px;
        }

        .left {
            width: 25%;
            height: 370px;
            float: left;
            background-color: #C0C0C0;

        }

        .lb {
            width: 50%;
            height: 360px;
            float: left;
            background-color: #C0C0C0;
            border: 0.5px solid black;
        }

        .new {
            width: 75%;
            height: 370px;
            float: left;
        }

        .com {
            width: 50%;
            height: 360px;
            float: left;
            background-color: silver;
            border: 0.5px solid black;
        }

        .m {
            width: 55%;
            height: 100%;
            float: left;
            background-color: saddlebrown;
        }

        .news {
            width: 45%;
            height: 100%;
            float: left;
        }

        .n {
            width: 100%;
            height: 94%;
            float: left;
            padding: 40px;
            background-color: ghostwhite;
        }

        .n a {
            color: #333333;
            text-decoration: none;
            font-size: 20px;
            font-weight: bold;
        }

        .n a:hover {
            color: red;
        }

        .k {
            width: 100%;
            height: 12%;
            background-color: #C0C0C0;
            float: left;
            /*border: 0.5px solid black;*/
        }
    </style>
</head>
<body>
<div class="top"></div>
<div class="tips">
    <div class="cen">
        <ul>
            <li><a href="${pageContext.request.contextPath}/shouye/race">赛程查询</a><span>|</span></li>
            <li><a href="${pageContext.request.contextPath}/shouye/country">奖牌榜查询</a><span>|</span></li>
            <li><a href="${pageContext.request.contextPath}/shouye/${News1.getNewsHtml()}?html=${News1.getNewsJsp()}">新闻查询</a><span>|</span></li>
            <li><a href="https://olympics.com/tokyo-2020/zh/games/olympic-games-about/">关于奥运</a><span>|</span></li>
            <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
            <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
            <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
            <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
            <c:set var="user" value="${sessionScope.User}" />
            <c:choose>
                <c:when test="${user==null}">
                    <li><a href="${pageContext.request.contextPath}/shouye/login">登录</a><span>|</span></li>
                    <li><a href="${pageContext.request.contextPath}/shouye/logup">注册</a><span>|</span></li>
                </c:when >
                <c:otherwise>
                    <li style="color: white">欢迎你：${user.userName}</li>
                </c:otherwise>
            </c:choose>

            <c:choose>
                <c:when test="${user.userAdmin==1}">
                    <li><a href="${pageContext.request.contextPath}/shouye/admin"><span>|</span>管理员界面</a></li>
                </c:when >
                <c:otherwise>
                    <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
                </c:otherwise>
            </c:choose>
        </ul>
    </div>
</div>
<div class="left">
    <h4 align="center">奥运奖牌榜</h4>
    <table border="0px" height="250px" width="100%" align="center" cellspacing="0px" >
        <thead>
        <tr bgcolor="#333333">
            <th><font color="#B0B0B0">排名</font></th>
            <th><font color="#B0B0B0">国家</font></th>
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
                    <tr bgcolor="#FFFFFF">
                        <c:set var="index" value="${index+1}" />
                        <td>${index}</td>
                        <td>${Country.getCountryName()}</td>
                        <td>${Country.getCountryAu()}</td>
                        <td>${Country.getCountryAg()}</td>
                        <td>${Country.getCountryCu()}</td>
                        <td>${Country.getCountryAu()+Country.getCountryAg()+Country.getCountryCu()}</td>
                    </tr>
                </c:when>
                <c:otherwise>
                    <tr bgcolor="lavender">
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
    <img width="100%" height="25%" align="middle" src="https://iknow-pic.cdn.bcebos.com/203fb80e7bec54e7f92db08eab389b504ec26a59"/>
</div>
<div class="new">
    <div class="m">
        <%--
        --%>
        <div id="myCarousel" class="carousel slide">
            <!-- 轮播（Carousel）指标 -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active">
                <li data-target="#myCarousel" data-slide-to="1">
                <li data-target="#myCarousel" data-slide-to="2">
            </ol>
            <!-- 轮播（Carousel）项目 -->
            <div class="carousel-inner" style="margin: auto; height: auto !important;">
                <div class="item active">
                    <a href="${pageContext.request.contextPath}/shouye/${News1.getNewsHtml()}?html=${News1.getNewsJsp()}"><img style="width: 625px;height: 370px;max-height: 370px;" src="${News1.getNewsUrl()}" style="max-height: 320px;" alt="First slide"  width="100%" height="100%"></a>
                </div>
                <div class="item">
                    <a href="${pageContext.request.contextPath}/shouye/${News2.getNewsHtml()}?html=${News2.getNewsJsp()}"><img style="width: 625px;height: 370px;max-height: 370px;" src="${News2.getNewsUrl()}" style="max-height: 320px;" alt="Second slide"  width="100%" height="100%"></a>
                </div>
                <div class="item">
                    <a href="${pageContext.request.contextPath}/shouye/${News3.getNewsHtml()}?html=${News3.getNewsJsp()}"><img style="width: 625px;height: 370px;max-height: 370px;" src="${News3.getNewsUrl()}" style="max-height: 320px;" alt="Third slide"  width="100%" height="100%"></a>
                </div>
            </div>
            <!-- 轮播（Carousel）导航 -->
            <!--a class="carousel-control left"  href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a-->
            <a class=" carousel-control right" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
        <%--
        --%>
    </div>
    <div class='news'>
        <div class="k"><h4 align="center">奥运热点</h4></div>
        <hr color="#000000"/>
        <div class="n">
            <table border="0.3px" height="172px" width="100%" align="center" cellspacing="0px">
                <tbody>
                <c:forEach var="News" items="${requestScope.get('listNews')}">
                    <tr>
                        <td>●&nbsp;<a href="${pageContext.request.contextPath}/shouye/${News.getNewsHtml()}?html=${News.getNewsJsp()}">${News.getNewsTitle()}</a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
<div class="lb">
    <h4 align="center">赛事推荐</h4>
    <table border="0px" height="330px" width="100%" align="center" cellspacing="0px">
        <thead >
        <tr bgcolor="#333333" >
            <th width="40%"><font color="#B0B0B0">赛事</font></th>
            <th width="30%"><font color="#B0B0B0">日期</font></th>
            <th width="30%"><font color="#B0B0B0">时间</font></th>
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
                    </tr>
                </c:when>
                <c:otherwise>
                    <tr bgcolor="lavender">
                        <c:set var="index" value="${index+1}" />
                        <td>${Race.getRaceName()}</td>
                        <td>${Race.getRaceDay()}</td>
                        <td>${Race.getRaceTime()}</td>
                    </tr>
                </c:otherwise>
            </c:choose>
        </c:forEach>
        </tbody>
    </table>
</div>

<div class="com">
    <h4 align="center">评论区</h4>
    <table border="0px" height="280px" width="100%" align="center" cellspacing="0px" cellpadding="50%">
        <thead>
        <tr bgcolor="#333333">
            <th><font color="#B0B0B0">用户</font></th>
            <th><font color="#B0B0B0">评论</font></th>
            <th><font color="#B0B0B0">时间</font></th>
        </tr>
        </thead>
        <tbody>
        <c:set var="index" value="0" />
        <c:forEach var="Remark" items="${requestScope.get('listRemark')}">
        <c:choose>
        <c:when test="${index%2==0}">
            <tr bgcolor="#FFFFFF">
                <c:set var="index" value="${index+1}" />
                <td>${Remark.getRemarkName()}</td>
                <td>${Remark.getRemarkContent()}</td>
                <td>${Remark.getRemarkTime()}</td>
            </tr>
        </c:when>
        <c:otherwise>
        <tr bgcolor="lavender">
            <c:set var="index" value="${index+1}" />
            <td>${Remark.getRemarkName()}</td>
            <td>${Remark.getRemarkContent()}</td>
            <td>${Remark.getRemarkTime()}</td>
            </c:otherwise>
            </c:choose>
            </c:forEach>
        </tbody>
    </table>
    <form action="${pageContext.request.contextPath}/shouye/remark" method="get">
        <c:set var="user" value="${sessionScope.User}" />
        <c:choose>
            <c:when test="${user==null}">
                <input class="input" type="text" name="content" placeholder="请先登录" style="width:650px" required="required" disabled="disabled"/>
            </c:when >
            <c:otherwise>
                <input class="input" type="text" name="content" placeholder="请发表评论" style="width:650px" required="required"/>
                <input type="submit" value="发表"/>
            </c:otherwise>
        </c:choose>
    </form>
</div>
<p align="center"><img src="https://iknow-pic.cdn.bcebos.com/3801213fb80e7bec9a1ba9713d2eb9389a506b59" height="83px"/></p>

<div class="article" id="artibody" data-sudaclick="blk_content" align="center">
    <script src="http://www.ce.cn/inc/flyad2.js"></script>
    <div id="gg1">
        <p align="right"><a href="javascript:void(0);" target="_self" onClick="close_gg(1);" style="color:#a00;" >关闭</a></p>
        <a href="https://mir2.web.sdo.com/web6/index/index.asp"><img src="https://iknow-pic.cdn.bcebos.com/9e3df8dcd100baa1df1ad22b5510b912c8fc2e6f" border="1"></a>
        <div style="position:absolute; left:0; font-size:12px;"></div>
    </div>
    <script type="text/javascript">
        var ad1=new AdMove("gg1");
        ad1.Run();
    </script>
</div>

</body>
</html>