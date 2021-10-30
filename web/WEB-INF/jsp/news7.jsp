<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>排球比赛五大难忘瞬间</title>

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
            <h2 align="center">排球比赛五大难忘瞬间</h2>
            <h5 align="center">
                <a href="${pageContext.request.contextPath}/shouye/sy">返回首页</a>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                时间： 2020-08-08
            </h5>
            <h3><strong>1-</strong> 埃尔文·恩加佩瑟带领法国首夺排球金牌</h3>

            <p>如果想在排球比赛中创造历史，拥有一位状态爆棚的主攻绝对非常有帮助。没错，我们要说的这位就是法国男排的主攻手<strong>埃尔文·恩加佩瑟</strong>。</p>

            <p>在竞争白热化的决赛当中，这位30岁的法国男排领军人物贡献26分，其中包括2次拦网得分和3次发球直接得分。</p>
            <p><img width=930px src="https://iknow-pic.cdn.bcebos.com/d4628535e5dde7114536d466b5efce1b9c1661be"/></p>

            <p>首局比赛中，ROC看起来赢面更大一点，但是法国队顽强的反超比分并以25-23拿下了开门红。之后，进攻势头凶猛的蓝衣军团趁势再下一城，拿下第二局。</p>

            <p>此后，ROC强势复苏，扳平总比分，将金牌悬念带入决胜局。</p>

            <p>最终，随着安东尼·布里萨的扣杀得手以及ROC队的扣球出界，法国赢得冠军。</p>

            <p>赛后，整个赛事上表现亮眼的恩加佩瑟被世界排联评选为赛事最有价值球员和最佳主攻。</p>

            <h3><strong>2-</strong> 美国女排终夺奥运金牌</h3>


            <p>奥运金牌是美国女排苦寻多年而未果的荣誉。</p>

            <p>2008年北京奥运会和伦敦奥运会位列亚军，2016年里约奥运会收获铜牌的美国女排在奥运会开始前世界排名位列第一，她们的目标只有一个，就是东京奥运会金牌。</p>

            <p>半决赛中对阵里约奥运会上将自己挡在金牌赛之外的塞尔维亚队，美国女排报了一箭之仇，志在夺冠的态度和状态已经表露无疑。</p>

            <p>三次参加奥运会的美国女排队长<strong>乔丹·拉尔斯</strong>在3-0击败巴西的比赛中贡献了锁定胜局的一记得分。</p>

            <p>两次和金牌擦肩的痛苦经历在那一刻得到补偿，在有可能是自己参加的最后一届奥运会上，终于收获了一枚金牌。</p>


            <h3><strong>3-</strong> 蒂亚娜·博斯科维奇：得分专家</h3>
            <p><img width=930px src="https://iknow-pic.cdn.bcebos.com/a686c9177f3e6709c0e7d26f29c79f3df9dc55be"/></p>


            <p>两次赢得奥运会奖牌的塞尔维亚名将<strong>蒂亚娜·博斯科维奇</strong>在2020年东京奥运会展现了自己为什么能够加入世界最佳排球运动员讨论的原因。</p>

            <p>铜牌赛中，24岁的她独揽33分，帮助自己的球队3-0击败韩国（25-18、25-15、25-15）。</p>

            <p>博斯科维奇在东京不仅收获铜牌，还将得分王的名号收入囊中。整届赛事中，她共砍下192分，包括165次直接得分、15次拦网得分以及12次罚球直接得分。</p>

            <h3><strong>4-</strong> 阿根廷vs巴西：宿敌之争</h3>

            <p>男排赛场再次迎来宿敌对决，双方再次打满五局。</p>

            <p>阿根廷笑到了最后，3-2击败巴西摘得铜牌（25-23、20-25、20-25、25-17、15-13）。</p>
            <p align="center"><img width=930px src="https://iknow-pic.cdn.bcebos.com/7e3e6709c93d70cf301d3d9deadcd100bba12bbe"/></p>

            <p>三次赢得奥运金牌的巴西男排在决胜局开局取得领先，但是阿根廷人没有慌乱，最终反超比分并拿下了关键的一局。</p>

            <h3><strong>5-</strong> 女排卫冕冠军中国队止步小组赛</h3>

            <p>中国女排无缘淘汰赛算得上是本届奥运会排球赛事最大的冷门。</p>

            <p>身为里约奥运会冠军的中国女排在小组赛开始后连续输给土耳其、美国和ROC，失去了晋级可能。</p>

            <p>无缘四分之一决赛也创下了中国女排自1984年奥运会以来的最差战绩。</p>
            <p align="center"><img  width=930px src="https://iknow-pic.cdn.bcebos.com/9e3df8dcd100baa1ddcbd02b5510b912c9fc2ebe"/></p>

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