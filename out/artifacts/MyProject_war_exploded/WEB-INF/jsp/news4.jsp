<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>一战封神！苏炳添的9秒83意味着什么？ </title>

    <div >
        <img src="https://iknow-pic.cdn.bcebos.com/2e2eb9389b504fc2019e1a95f7dde71191ef6d59" width=1500px/>
    </div>
    <style>/*滚动新闻框*/
    * {
        margin: 0;
        padding: 0;
    }

    #div_con {
        position: relative;
        width: 95%;
        height: 400px;
        margin: 10px;
        border: 5px solid #aba;
        overflow: hidden;
        border-radius: 5px;

    }
    #div_con:hover {

    }

    #div_msg {
        position: absolute;

        width: 95%;
        height: auto;
        margin: 0;
        padding: 10px;

        border: 0px solid red;
    }

    </style>
    <style type="text/css">/*首行缩进*/
    p{ text-indent:2em;}
    </style>

    </style>

    <style>
        a {
            /* 取消下划线 */
            text-decoration: none;
            /* 取消选中时的背景色 */
            -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
            color:rgba(0,0,0,1);
        }

        /* 已读时的字体颜色 */
        a:visited {
            /*color: red;*/
        }
        a:hover{
            color: dodgerblue;
        }

        /* 点击时的字体颜色 */
        a:active {
            color:blueviolet;
        }
    </style>


</head>

<style>/*分栏*/
.layout{
    width: 100%;
    height: 100vh;
    display: flex;
}
.aside{width: 450px;height: 100%;overflow-y: auto;text-align: center;font-size: 16px;}
.article{flex: 1;height: 100%;overflow-y: auto;}
</style>

<body style="background-color: rgba(247,255,255,0.7);">

<div class="layout">
    <aside class="aside" >
        <h2>最热新闻</h2>
        <div id='div_con'>
            <!--消息div-->
            <div id='div_msg'>
            </div>
        </div>
        <script src="//cdn.bootcss.com/jquery/2.2.2/jquery.js"></script>
        <script>

            var msg1 = '<br/><h2>一战封神！苏炳添的9秒83意味着什么？</h2> ' +
                '2021-08-02 09:12 <br/>' +
                '<a href=""><img style="width:100%" src="https://iknow-pic.cdn.bcebos.com/b812c8fcc3cec3fdebd830e5c488d43f869427bf" /><a/>' +
                '苏炳添在100米半决赛中跑出9秒83的好成绩后，一战封神！<br/>' +
                '苏炳添的出现“彻底粉碎了长期笼罩在短跑运动中的民族学，为中国短跑乃至中国体育积累了宝贵的经验财富，为停滞数十年的中国短跑探索出一条充满自信的新路。”<br/><br/><HR> ';

            var msg2 = '<br/><h2>凯文·杜兰特成为美国男篮奥运历史得分王 </h2> ' +
                '2021-08-08 13:32 <br/>' +
                '<a href=""><img style="width:100%" src="https://iknow-pic.cdn.bcebos.com/9825bc315c6034a8b6072f11d9134954082376bd" /><a/>' +
                '在奥运金牌数量上也追平了安东尼，成为男篮历史上仅有的两位赢得三枚男篮奥运金牌的运动员。<br/>' +
                '对阵法国的决赛结束后，杜兰特的奥运总得分来到435分，成为首位在三届奥运会上单届得分破百的运动员。<br/><br/><HR>';


            var msg3 = '<br/><h2>东道主日本队首夺奥运乒乓球金牌</h2> ' +
                '2021-07-26 23:00 <br/>' +
                '<a href=""><img style="width:100%" src="https://iknow-pic.cdn.bcebos.com/f7246b600c3387447d2eb8ec430fd9f9d62aa0b3"  /><a/>' +
                '水谷隼和伊藤美诚令中国队再次包揽全部项目金牌的目标破灭。<br/>' +
                '本届奥运会上，混双项目首次入奥。决赛由水谷隼/伊藤美诚组合对阵世锦赛冠军许昕/刘诗雯。日本组合在大比分落后的情况下发起绝地反攻，最终实现惊天逆转，登上了最高领奖台。<br/><br/><HR> ';

            var msg = msg1 + msg2 + msg3;

            //先赋值div
            $('#div_msg').html(msg);
            //获取div的高度
            var msg_height = $('#div_msg').height()+$('#div_msg').height();

            //加2次，这样完全移动完的时候不至于出现空白
            $('#div_msg').html(msg + msg);

            var con_height = $('#div_con').height();

            var sub_height = con_height - msg_height;
            console.log('msg_height=' + msg_height + ', con_height=' + con_height + ",sub_height=" + sub_height);

            //当前顶部坐标
            var cur_top = 0;

            function scrollme() {
                cur_top--;

                //如果整个消息都已经上移完了，则重新赋值消息，及移动距离
                if (0 == cur_top + msg_height) {
                    console.log('已经移完了,开始下一次')
                    cur_top = 0;
                }

                $('#div_msg').css('top', cur_top + 'px');
            }

            setInterval("scrollme()", 17);

        </script>

        <HR style="FILTER:progid:DXImageTransform.Microsoft.Glow(color=#987cb9,strength=10)"width="100%" color="saddlebrown" SIZE=3>
        <a href="${pageContext.request.contextPath}/shouye/news1?html=news1" ><h3>1.震惊！这些00后竟当众做出这样的事！结局令人感叹。</h3></a><br />
        <HR style="FILTER:progid:DXImageTransform.Microsoft.Shadow(direction:145,strength:15)"width="98%" color="dimgrey" SIZE=2>
        <a href="${pageContext.request.contextPath}/shouye/news2?html=news2"><h3>2.凯文·杜兰特成为美国男篮奥运历史得分王 </h3></a><br />
        <HR style="FILTER:progid:DXImageTransform.Microsoft.Shadow(direction:145,strength:15)"width="98%" color="dimgrey" SIZE=2>
        <a href="${pageContext.request.contextPath}/shouye/news3?html=news3"><h3>3.东道主日本队首夺奥运乒乓球金牌</h3></a><br />
        <HR style="FILTER:progid:DXImageTransform.Microsoft.Shadow(direction:145,strength:15)"width="98%" color="dimgrey" SIZE=2>
        <a href="${pageContext.request.contextPath}/shouye/news4?html=news4"><h3>4.一战封神！苏炳添的9秒83意味着什么？</h3></a><br />
        <HR style="FILTER:progid:DXImageTransform.Microsoft.Shadow(direction:145,strength:15)"width="98%" color="dimgrey" SIZE=2>
        <a href="${pageContext.request.contextPath}/shouye/news5?html=news5"><h3>5.射箭选手走红网络 网友:被她射中了心!^_^</h3></a><br />
        <HR style="FILTER:progid:DXImageTransform.Microsoft.Shadow(direction:145,strength:15)"width="98%" color="dimgrey" SIZE=2>
        <a href="${pageContext.request.contextPath}/shouye/news6?html=news6"><h3>6.中国自由操选抗日名曲《九儿》！响彻东京奥运场馆!</h3></a><br />
        <HR style="FILTER:progid:DXImageTransform.Microsoft.Shadow(direction:145,strength:15)"width="98%" color="dimgrey" SIZE=2>
        <a href="${pageContext.request.contextPath}/shouye/news7?html=news7"><h3>7.排球比赛五大难忘瞬间</h3></a><br />
        <HR style="FILTER:progid:DXImageTransform.Microsoft.Shadow(direction:145,strength:15)"width="98%" color="dimgrey" SIZE=2>
        <a href="${pageContext.request.contextPath}/shouye/news8?html=news8"><h3>8.东京奥运会开幕式</h3></a><br />
        <HR style="FILTER:progid:DXImageTransform.Microsoft.Shadow(direction:145,strength:15)"width="98%" color="dimgrey" SIZE=2>
        <a href="${pageContext.request.contextPath}/shouye/news9?html=news9"><h3>9.IOC主席巴赫参观东京奥运会运动员村+国家体育场</h3></a><br />
    </aside>


    <!-- 正文 start -->
    <div class="article" id="artibody" data-sudaclick="blk_content" style="line-height: 50px;">
        <article class="article" id="mp-editor">
            <h2 align="center">一战封神！苏炳添的9秒83意味着什么？</h2>
            <h5 align="center">
                <a href="${pageContext.request.contextPath}/shouye/sy">返回首页</a>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                时间： 2020-08-01
            </h5>
            <script src="http://www.ce.cn/inc/flyad2.js"></script>
            <div id="gg1">
                <p align="right"><a href="javascript:void(0);" target="_self" onClick="close_gg(1);" style="color:#a00;" >关闭</a></p>
                <a href="https://mir2.web.sdo.com/web6/index/index.asp"><img src="https://iknow-pic.cdn.bcebos.com/71cf3bc79f3df8dcdfda1801df11728b461028be" border="1"></a>
                <div style="position:absolute; left:0; font-size:12px;"></div>
            </div>
            <script type="text/javascript">
                var ad1=new AdMove("gg1");
                ad1.Run();
            </script>

            <p>9秒83！8月1日，在东京奥运会男子100米半决赛中，32岁的中国运动员苏炳添小组第一的成绩成功闯入决赛并打破亚洲纪录，创造历史，成为中国首位闯入奥运男子百米决赛的运动员，他也是电子计时时代第一位闯入奥运百米决赛的亚洲选手。</p>
            <p>男子百米决赛将于北京时间8月1日20:50左右开始，苏炳添位于第6道。</p>
            <p align="center">
                <span style="color:#666666;"><img src="https://iknow-pic.cdn.bcebos.com/fd039245d688d43f9c4f06626f1ed21b0ff43bbf" /></span>
            </p>
            <p>
                据东京奥运会官方网站介绍，在一百米这项被黑人运动员统治的运动当中，亚洲本土运动员进入10秒非常困难。而被称为“跑得最快的亚洲人”的苏炳添，却一次又一次挑战所谓的极限。
            </p>
            <p>2015年国际田联钻石联赛尤金站，苏炳添以9秒99的成绩成为第一位突破10秒大关的亚洲本土选手，同年北京世锦赛半决赛，他以9秒99的成绩成为首位登上世锦赛男子百米决赛舞台的亚洲百米运动员。三年后在国际田联马德里挑战赛，28岁的他以9秒91追平亚洲纪录，那一赛季他还以6秒42刷新男子60米亚洲纪录，成为名副其实的“苏神”。
            </p>
            <p>在2018年国际田联马德里挑战赛上，28岁的苏炳添在男子100米决赛中，以9秒91夺冠，追平了卡塔尔归化选手奥古诺德保持的亚洲纪录。苏炳添成为了跑得最快的亚洲本土选手。
            </p>
            <p>苏炳添曾七次跑进10秒，<strong>今天苏炳添9秒83的成绩，更是突破了9秒85这一曾被一度认为是黄种人的百米“极限时间”。</strong>
            </p>
            <p>之前，每当苏炳添有所突破的时候，都有人说，这是他的极限了。而他却一次又一次的证明，“极限”就是用来被打破的。
            </p>
            <p>继2015年在国际田联钻石联赛美国尤金站首次跑进10秒后，不到三个月，在北京世界田径锦标赛男子百米半决赛中，苏炳添又有了微小的进步，以9秒987的成绩进入决赛。仅一个月后，在2018年6月23日，苏炳添在马德里跑出了创造历史的9秒91。七天后在国际田联钻石联赛巴黎站的比赛中，他再次复制了9秒91的奇迹。
            </p>
            <p>2018年，他的辉煌仍在继续，在8月26日的雅加达亚运会上，苏炳添以9秒92的成绩打破了亚运会纪录。在经历了被伤病和疫情困扰的2019和2020，在今年4月24日举行的中国田径邀请赛华东赛区男子100米的比赛上，他以9.98秒的成绩夺冠 ，而这也是2021年赛季世界第六好成绩，亚洲第一。
            </p>
            <p>最近一次跑进10秒，是在今年6月份举行的2021年全国田径冠军赛暨奥运选拔赛上。在男子100米决赛，苏炳添再次跑出9秒98的成绩夺冠，这也是他第七次跑进10秒。
            </p>
            <p align="center"><img src="https://iknow-pic.cdn.bcebos.com/b812c8fcc3cec3fdebd830e5c488d43f869427bf" /></p>
            <p>今天（8月1日），苏炳添在东京奥运会男子100米半决赛跑出的9秒83，更是再次创造了多项历史。</p>
            <p>现年32岁的苏炳添，依然在进步，也依然在改变。中国田径队外籍教练兰迪·亨廷顿说，在32岁这样的年龄作出改变，非常不容易。他所做的是很多职业运动员在整个职业生涯中都无法达成的。对于苏炳添来说，当意志足够强大的时候，32不是极限，只是一个数字而已。“中国人在32岁，或者是在33岁，也可能跑得很快”，苏炳添说。
            </p>
            <p>此前，他在采访中明确表示，自己的目标从上一届奥运会到现在一直没有改变过，“就是一直想要成为整个亚洲第一个进入100米决赛的运动员”，并表示自己已经无限地接近这一目标。
            </p>
            <p>今天，这一目标已被“中国飞人”成功实现。</p>
            <br /><br /><br />
        </article>
    </div>


</div>

</body>
</html>