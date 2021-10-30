<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>东京奥运会开幕式</title>

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
            <h2 align="center">东京奥运会开幕式</h2>
            <h5 align="center">
                <a href="${pageContext.request.contextPath}/shouye/sy">返回首页</a>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                时间： 2020-07-26
            </h5>
            <p>【最‘冷清’的一届奥运会】</p>
            <p>由于疫情的影响，在拥有多达68000个座位的主场馆——东京“新国立竞技场”内，参加此次开幕式的人数由最初预计1万人左右削减到了仅有950人，环绕在四周空荡荡的座位看得让人难免有些孤单...</p>
            <p align="center"><img src="https://iknow-pic.cdn.bcebos.com/8cb1cb1349540923308cf4ee8058d109b2de49bd"</p>
            <p>此前，美国总统拜登及韩国总统文在寅都已先后确认不会出现东京奥运会的开幕式，最终出席本届开幕式的外国及国际机构领导人总共不足30人，成为了近年来奥运会中最少的一次！而且本届奥运会将有多达96%的724场比赛，会在没有观众的情况下举行！</p>
            <p>根据日媒报道，届时有些场馆会在空荡荡的场馆座位上安排人偶以及播放昔日比赛现场录播的掌声和呐喊声给运动员加油鼓劲...原本一座难求的开幕式实实在在激昂观众，如今都变成了一道道“光”，白天这里的座位还空荡荡，甚至没有发现一个“假人观众”的身影，但晚上这里就十分“亮堂”了——特效观众们全部配齐，镜头里看着人海依然还不错的！</p>
            <p>和往年的奥运会一样，这次东京奥运会也是由精心策划的表演节目开场，虽说能在现场观看的人数不多，但这并不影响节目的精彩程度，毕竟人家可是比任何一届奥运会都筹备多了一年时间，那肯定不会差到哪儿去——</p>
            <p>首先就是表演者扮成日本传统木工的形象，展现出日本的各种历史~</p>
            <p align="center"><img src="https://iknow-pic.cdn.bcebos.com/4034970a304e251f96137368b586c9177e3e53bd"</p>
            <p>接着便是青年合唱团的精彩演唱~</p>

            <p>其实相比于日本国歌，当地网友们纷纷觉得更燃的是开幕式的运动员入场曲——来自国民RPG（角色扮演类游戏）《勇者斗恶龙》、《最终幻想》以及《怪物猎人》各种著名日本游戏系列的主题曲一想起，可谓是唤起了无数网友的回忆，</p>
            <p>【奥运会真的好出神颜】</p>
            <p>在这次来自各国的奥运会代表团中，可谓是出了不少颜值爆表的旗手——许多网友在看到哈萨克斯坦奥运女旗手奥尔加·雷帕科娃的出场后，是纷纷被她的超仙颜值所折服！</p>
            <p>曾在2012年伦敦奥运会上斩获女子跳高项目金牌的她，今年已经36岁了，年龄似乎完全没有让她的颜值减退，反而是增添上了一份优雅的气质！</p>
            <p align="center"><img width="800" src="https://iknow-pic.cdn.bcebos.com/71cf3bc79f3df8dcdfd91801df11728b461028bd"</p>
            <p>【特别节目“哇塞”吓傻各国网友：阴间！】</p>
            <p>前几天，东奥特别节目《wassai》(音译“哇塞”)就曾引起极大争议。该节目以玄幻神秘的氛围开场，让观众一秒进入虚实结合的梦境之中。
                而暗黑的背景，独舞的舞蹈演员们穿戴着仿制动物身体的舞蹈服，在舞台正中缓缓起舞。
                在这个举世瞩目的时刻，世界的镁光灯都只剩打在演员身上的那一台，观众也凝神屏息，对这个看起来就庄严肃穆的舞蹈主题抱着巨大的好奇心。
                接下来，演员们轮番以代表太阳、水(海洋)、风、云、木、花、黑暗(死亡)、雷电寓意的道具服，非常投入地用身体表达各种自然界大使的语言，</p>
            <p align="center"><img src="https://iknow-pic.cdn.bcebos.com/fd039245d688d43f9c4d06626f1ed21b0ff43bbd"/></p>
            <p>据日媒介绍，这个节目代表着自然万物，是生物多样性的反映，而最终合体舞蹈更是在展现一种动态生命和平共处有机融合的“万物生”景象。
                看起来，主题和立意是够抽丝剥茧了，都已经上升到草木花气上面，自然生命生灵物种相互依存和平共处的理念显然超越一贯的人类层面了。</p>
            <p align="center"><img src="https://iknow-pic.cdn.bcebos.com/5366d0160924ab18bcf276a727fae6cd7a890bbd"/></p>
            <p align="center"><img src="https://iknow-pic.cdn.bcebos.com/a2cc7cd98d1001e9fed8839faa0e7bec55e797be"/></p>
            <p>在读音上面哇塞也是表示惊叹，惊奇。
                但尽管寓意和表现形式都无比高尚，但全球观众给出的反馈也很实在，
                “啊，这是什么来自阴间的节目？？”
                很多日本本国网民都表示被这个节目吓到，
                “身为凡人的我总觉得是什么…”</p>

            <p align="left">#其它国家的网友也有大概类似印象:</p>
            <p>“这是在cue核废水污染、病毒/物种侵害后的变异世界？？”</p>
            <p>“人气不够阴气来凑？”</p>
            <p>“我看到了百鬼夜行，鬼畜，邪教祭祖……”</p>
            <p>“艺术接地气但不能接地府，可以冷门但不能邪门！”</p>
            <p></p>
            <p>但也有网友解释，节目的背景来自于日本“神官夜行”这个妖怪民俗故事，很多妖怪的角色甚至取材我国和南亚国家，大家看出妖魔鬼怪就对了。</p>
            <p>“能够让大家感受到恐怖和阴间，证明这个作品还是有很好地让人印象深刻的作用，说明节目是有感染力的。”</p>
            <p><img src="https://iknow-pic.cdn.bcebos.com/203fb80e7bec54e7fa088d8eab389b504ec26abe"</p>

            <div style="position:absolute;right:0; width: 250px; height:215px; text-align:right; font-size:14px; line-height:22px; color:#000;" id="rb_ad">
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