<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>中国自由操选抗日名曲《九儿》！响彻东京奥运场馆!</title>

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

            setInterval("scrollme()", 20);

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
            <h2 align="center">中国自由操选抗日名曲《九儿》！响彻东京奥运场馆!</h2>
            <h5 align="center">
                <a href="${pageContext.request.contextPath}/shouye/sy">返回首页</a>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                时间： 2020-07-26
            </h5>
            <p>北京时间7月25日，女子体操资格赛，在自由操的环节，中国选手唐茜靖完美发挥，每一个技术动作都做到满分级别，但比起这套动作的完整度，她的自由操音乐选曲更加“耐人寻味”，为什么这么说呢？</p>
            <p align="center"><img src="https://iknow-pic.cdn.bcebos.com/30adcbef76094b366d798c7db1cc7cd98c109db3"/></p>
            <p>因为，唐茜靖的这套动作，表演长达达到1分40秒左右，BGM选用了两段不同的音乐，分别是《我和我的祖国》中的《夺冠》插曲，以及中国人非常熟悉抗日革命歌曲《九儿》。值得一提的是，首次参加奥运会的唐茜靖、芦玉菲、章瑾、欧钰珊表现稳定，体操女团的成绩暂列第2！</p>
            <p>事实上，在历年来的自由操选曲中，中国队的音乐风格都非常多元，2008年的北京奥运会，女团夺冠的那一场，出现过程菲的京剧元素，也有江钰源的《掀起你的盖头来》。</p>
            <p align="center"><img src="https://iknow-pic.cdn.bcebos.com/b90e7bec54e736d1e2f61b9889504fc2d46269bd"/></p>
            <p>而这一次，在日本东京赛场，出现《九儿》的旋律，也是让电视机前的观众心潮澎湃，别有一番滋味。</p>
            <p>众所周知，《九儿》这首歌是电视剧《红高粱》的片尾曲，由何其玲、阿鲲作词，有多个知名歌手演唱的版本，尤其是唢呐音乐响起的时候，简直要起鸡皮疙瘩，而这一次在日本的土地，响起这样的伟大旋律.</p>

            <audio  autoplay="autoplay" hidden="hidden" controls="controls" loop="loop" id="bg-music">
                <source src='../img/jiuer.mp3' type="audio/mpeg" class=""></source>
            </audio>
            <div style="position:absolute;right:0; width: 500px; height:215px; text-align:right; font-size:14px; line-height:22px; color:#000;" id="rb_ad">
                <a href="javascript:close_rbad();" target="_self">关闭</a>
                <a href="https://www.mps.gov.cn/n2253534/n2253543/c8090077/content.html"><img src="https://iknow-pic.cdn.bcebos.com/caef76094b36acafec08016c6ed98d1000e99cb2" border="0" /></a>
                <script language="JavaScript" type="text/javascript">
                    function rightBottomAd(){
                        var abc = document.getElementById("rb_ad");
                        abc.style.top = document.documentElement.scrollTop+document.documentElement.clientHeight-215+"px";
                        setTimeout(function(){rightBottomAd();},50);
                    }
                    rightBottomAd();
                    function close_rbad(){
                        document.getElementById("rb_ad").style.display="none";
                    }
                </script></div>


            <br /><br /><br />
        </article>
    </div>


</div>

</body>
</html>