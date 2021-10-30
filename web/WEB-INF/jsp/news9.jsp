<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>IOC主席巴赫参观东京奥运会运动员村与国家体育场</title>


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
                    console.log('开始下一次')
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
        <h2 align="center">IOC主席巴赫参观东京奥运会运动员村与国家体育场</h2>
        <h5 align="center">
            <a href="${pageContext.request.contextPath}/shouye/sy">返回首页</a>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            时间： 2020-11-19
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

        <article class="article" id="mp-editor">
            <!--p data-role="original-title" style="display:none">原标题：IOC主席巴赫参观东京奥运会运动员村+国家体育场</p-->
            <p>北京时间11月18日，国际奥委会（IOC）主席托马斯-巴赫参观了推迟举行的东京奥运会的国家体育场和运动员村。</p>
            <p class="ql-align-center" align="center"><img src="http://p1.itc.cn/images01/20201117/d59b8468b3424233a2dcb392602ff75e.jpeg" max-width="600" /></p>

            <p>这是巴赫在日本逗留四天的第三天，他参观了新建的国家体育场，该体育场是东京奥运会和残奥会开闭幕式以及田径比赛和足球比赛的场地。</p>
            <p>巴赫戴着口罩，在运动员村受到了奥运会铁人三项运动员上田爱和去年羽毛球世界冠军佐里奈里美的欢迎。巴赫说：“9个月后，我们会来这里参加这些比赛，这里已经很有气氛了。”</p>
            <p>村长、前日本足协主席川渊三郎带着巴赫参观了位于晴海海滨区的住宅区，明年夏天奥运会期间，约1万名运动员和教练员将被安置在这里。</p>
            <p>除了在现有的普通诊所内设立门诊部外，一个由政府主导的小组也在考虑新型冠状病毒的对策，如减少村里餐厅的椅子数量。</p>
            <p class="ql-align-center" align="center"><img src="https://iknow-pic.cdn.bcebos.com/c2fdfc039245d688cee42534b6c27d1ed31b24bf"  width="600" /></p>
            <p>可容纳6万人的国家体育场，采用木质屋顶和外墙，去年11月在1964年举办夏季奥运会时使用的旧体育场原址上竣工。</p>
            <p>巴赫还参观了附近的日本奥林匹克博物馆，在那里他与2016年里约热内卢奥运会男子73公斤级金牌得主小野昌平进行了交谈。在巴赫访问体育场辖区期间，附近聚集了十几名抗议者，并使用扩音器呼吁立即取消比赛。</p>
            <p>巴赫计划在明年春天火炬传递开始前后再次访问日本。周二上午，巴赫在澳大利亚驻东京大使馆会见了澳大利亚总理斯科特-莫里森。据国际奥委会透露，莫里森重申了澳大利亚政府对澳大利亚昆士兰州申办2032年夏季奥运会的支持。</p>
            <br /><p data-role="editor-name">责任编辑：无名氏<span></span></p>
            <br /><br />
        </article>

    </div>
</div>

</body>
</html>
