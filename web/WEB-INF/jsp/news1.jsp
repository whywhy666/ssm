<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>震惊！这些00后竟当众做出这样的事！结局令人感叹。</title>

    <div >
        <img src="https://iknow-pic.cdn.bcebos.com/2e2eb9389b504fc2019e1a95f7dde71191ef6d59" width=1500px/>
    </div>
    <style>
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

</head>

<style>
    .layout{
        width: 100%;
        height: 100vh;
        display: flex;
    }
    .aside{width: 450px;height: 100%;overflow-y: auto;text-align: center;font-size: 16px;}
    .article{flex: 1;height: 100%;overflow-y: auto;}
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
    <!--广告-->
    <div class="article" id="artibody" data-sudaclick="blk_content" align="center">
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

        <h2 align="center">震惊！这些00后竟当众做出这样的事！结局令人感叹。</h2>
        <h5 align="center">
            <a href="${pageContext.request.contextPath}/shouye/sy">返回首页</a>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            时间： 2021-8-7
        </h5>
        <br />

        <p cms-style="font-L">　　新华社东京8月7日电（记者马锴、王浩宇、卢羡婷）体坛代有人才出是不变的奥运旋律。在竞技体育的最高殿堂上，“后浪”翻腾、新星闪耀，他们将奥林匹克的精神代代传递。</p>
        <p cms-style="font-L" align="right">　　<font cms-style="font-L strong-Bold" >——杨倩（中国女子射击运动员）</font></p>
        <p cms-style="font-L">　　凭借超乎常人的沉稳，出生于千禧年的杨倩在决赛最后一枪时完成逆转，摘得了东京奥运会首枚金牌。颁奖仪式上，她双手举过头顶比心的形象被印在千万中国体育迷的记忆里。</p>
        <p cms-style="font-L">　　在女子10米气步枪的比赛中，首次参加奥运会的杨倩资格赛一度跌出排名前10，决赛又被对手先声夺人，可谓压力空前。但决胜时刻，她宁心静气打出9.8环，力压出现失误的对手，实现了令人振奋的“超级逆转”。仅几天后，她又与搭档杨皓然再夺10米气步枪混合团体赛金牌，成为中国第一位“00后”奥运双金得主。</p>
        <div class="img_wrapper">
            <div class="img_wrapper"><img id="0" src="//n.sinaimg.cn/sports/crawl/434/w550h684/20210808/2e8f-bf886e22c5339bb7eda685f6afd4f089.jpg" alt=""></div>
        </div>
        <p cms-style="font-L">　　7月24日，杨倩在颁奖仪式上。新华社记者鞠焕宗摄</p>
        <p cms-style="font-L">　　<font cms-style="font-L strong-Bold">——雅各布（意大利男子短跑运动员）</font></p>
        <p cms-style="font-L">　　东京奥运会的男子百米飞人大战中，意大利选手雅各布以9秒80的成绩将金牌收入囊中，同时刷新了该项目的欧洲纪录。在“后博尔特时代”，26岁的雅各布可谓一鸣惊人，他是自1992年巴塞罗那奥运会以来首位在田径男子百米战中夺冠的欧洲选手。</p>
        <p cms-style="font-L">　　值得一提的是，他曾是一名跳远运动员，在2018年才转到百米项目。在此前的一次采访中，他曾表达了对东京奥运会的期待，“没有绝对的夺冠热门，所以东京奥运会有得一拼”。如今，他用短短三年时间就实现了自己的梦想，也书写了一段奥运会短跑项目的传奇。</p>
        <div class="img_wrapper">
            <div class="img_wrapper"><img id="1" src="//n.sinaimg.cn/sports/crawl/137/w550h387/20210808/d929-2f45daf2752f0d025e97c200259d9e37.jpg" alt=""></div>
        </div>
        <p cms-style="font-L">　　8月1日，意大利选手雅各布斯在比赛后。新华社记者鞠焕宗摄</p>
        <p cms-style="font-L">　　<font cms-style="font-L strong-Bold">——蒂特马斯（澳大利亚游泳运动员）</font></p>
        <p cms-style="font-L">　　在女子200米自由泳决赛中，20岁的蒂特马斯以1分53秒50的成绩力压卫冕冠军、美国名将莱德茨基，用刷新奥运会纪录的表现摘得该项目金牌。此前，她还在女子400米自由泳项目中夺冠。</p>
        <p cms-style="font-L">　　本届奥运会上，澳大利亚游泳队夺得9金3银8铜，创下历史最佳战绩。20岁的蒂特马斯在短、中距离自由泳上异军突起，功不可没。她也已经被视为新一代的“自由泳女王”。</p>
        <div class="img_wrapper">
            <div class="img_wrapper"><img id="2" src="//n.sinaimg.cn/sports/crawl/86/w550h336/20210808/bab5-d1f7b02a6abcb095ae6f924a9c68aab5.jpg" alt=""></div>
        </div>
        <p cms-style="font-L">　　7月28日，澳大利亚选手蒂特马斯在比赛中。新华社记者许畅摄</p>
        <p cms-style="font-L">　　<font cms-style="font-L strong-Bold">——全红婵（中国女子跳水运动员）</font></p>
        <p cms-style="font-L">　　年仅14岁便以奥运会跳水比赛历史最高分夺冠，中国小丫全红婵出道即创下纪录。在女子10米跳台决赛中，她五个动作有三个获得满分，以466.20的总分打破陈若琳在北京奥运会时447.70分的纪录。</p>
        <p cms-style="font-L">　　“下饺子都比她水花大”，网友这一评论形象地描述了全红婵的惊艳表现，“天才少女”名号不胫而走。面对前所未有的关注，她的回应朴实且自带“凡尔赛”：第一次参加大赛有点紧张，但慢慢就适应了，“奥运会和全国比赛相比，好像没有什么不一样”。</p>
        <p cms-style="font-L">　　站在领奖台上，全红婵举起金牌比了比自己的脸，顽皮地挡住了眼睛，“金牌好重啊，好像比我的脸还大”。童心未泯的她面前还有很长的路。</p>
        <div class="img_wrapper">
            <div class="img_wrapper"><img id="3" src="//n.sinaimg.cn/sports/crawl/117/w550h367/20210808/0ac6-8c0769a70f25d04c29ede945d967512a.jpg" alt=""></div>
        </div>
        <p cms-style="font-L">　　8月5日，中国选手全红婵在颁奖仪式上。新华社记者许畅摄</p>
        <p cms-style="font-L">　　<font cms-style="font-L strong-Bold">——开心那（日本女子碗池滑板运动员）</font></p>
        <p cms-style="font-L">　　12岁的年纪能做些什么？日本女孩开心那的答案是摘得奥运会银牌，成为目前为止本届奥运会最年轻的奖牌获得者。在女子碗池滑板的比赛中，一脸稚气的开心那无论是动作难度还是完成水准都有着世界级的表现。</p>
        <p cms-style="font-L">　　为吸引更多年轻人关注奥运会，国际奥委会将滑板、攀岩、冲浪等项目列为正式比赛项目，它们也成为“Z世代”崭露头角的舞台。以滑板为例，12位奖牌获得者平均年龄不到19岁，年纪最大的也不过22岁。</p>
        <div class="img_wrapper">
            <div class="img_wrapper"><img id="4" src="//n.sinaimg.cn/sports/crawl/87/w550h337/20210808/0091-5478067367f3051a10904b451dc48cdf.jpg" alt=""></div>
        </div>
        <p cms-style="font-L">　　8月4日，日本选手开心那在比赛中。新华社记者李尕摄</p>
        <p cms-style="font-L">　　<font cms-style="font-L strong-Bold">——孙颖莎（中国女子乒乓球运动员）</font></p>
        <p cms-style="font-L">　　20岁的“奥运新兵”在东京奥运会上斩获一金一银。比奖牌更有价值的是，在中国乒乓球队遇挫、需要稳定军心和平息外界质疑时，她成为那个挺身而出的人。</p>
        <p cms-style="font-L">　　混双决赛战胜中国队后，日本球员伊藤美诚受到外界热捧。但在女单半决赛中，孙颖莎以4：0干脆利落地击败伊藤，不仅为中国队提前锁定冠、亚军，也扭转了两队气势对比。尽管在决赛中不敌队友陈梦，但她的奥运首秀得到了中国乒协主席刘国梁的极高评价：“女单没拿冠军却已产生超出冠军的影响力。”</p>
        <p cms-style="font-L">　　女团决赛又是中日对决，孙颖莎3：1再胜伊藤美诚，被网友冠以“人间止藤片”的名号。当她和队友站上最高领奖台的一刻，国乒新一代偶像就此诞生。</p>
        <div class="img_wrapper">
            <div class="img_wrapper"><img id="5" src="//n.sinaimg.cn/sports/crawl/131/w550h381/20210808/1606-0b6d6371398e62cdb05f805d86d486bc.jpg" alt=""></div>
        </div>
        <p cms-style="font-L">　　8月5日，中国队选手孙颖莎在比赛中。新华社记者王东震摄</p>
        <p cms-style="font-L">　　<font cms-style="font-L strong-Bold">——管晨辰（中国女子体操运动员）</font></p>
        <p cms-style="font-L">　　在女子平衡木的决赛场上，16岁的管晨辰战胜了美国名将拜尔斯，为志在打赢翻身仗的中国体操队画下圆满的句号。而她在平衡木上“袋鼠摇手”的动作，更是让人记住了她的可爱。</p>
        <p cms-style="font-L">　　“之前拜尔斯在比赛时，我们这些小队员在电视机前面看，就觉得她好厉害啊。”管晨辰说。如今，以她为代表的“00后”一代用出众的实力、独特的美丽，在女子体操界掀起了“青春风暴”。</p>
        <div class="img_wrapper">
            <div class="img_wrapper"><img id="6" src="//n.sinaimg.cn/sports/crawl/136/w550h386/20210808/4951-5fb295f348c49b7b752131e2d41213f1.jpg" alt=""></div>
        </div>
        <p cms-style="font-L">　　8月3日，中国选手管晨辰在比赛中。新华社记者程敏摄</p>
        <p cms-style="font-L">　　<font cms-style="font-L strong-Bold">——杜普兰蒂斯（瑞典男子撑杆跳高运动员）</font></p>
        <p cms-style="font-L">　　摘得东京奥运会男子撑杆跳高的金牌，21岁的杜普兰蒂斯不仅展示了绝对实力，更让人们看到他挑战“更高”的奥运精神。</p>
        <p cms-style="font-L">　　当横杆升到6米02的高度后，杜普兰蒂斯的对手均未能成功跃过。已锁定金牌的他没有选择就此收工，而是选择冲击新的世界纪录6米19，这比他自己创造的世界纪录高出1厘米。</p>
        <p cms-style="font-L">　　尽管三次试跳均未成功，但他向纪录发起冲击的精神令人动容，这正是奥林匹克格言的要义。</p>
        <div class="img_wrapper">
            <div class="img_wrapper"><img id="7" src="//n.sinaimg.cn/sports/crawl/116/w550h366/20210808/02b5-7a0302705176b4b6e59b1e1cadb2ef16.jpg" alt=""></div>
        </div>
        <p cms-style="font-L">　　8月3日，瑞典选手杜普兰蒂斯在男子撑杆跳高决赛中挑战世界纪录。新华社记者李明摄</p>
        <p cms-style="font-L">　　<font cms-style="font-L strong-Bold">——卢云秀（中国女子帆板运动员）</font></p>
        <p cms-style="font-L">　　踏浪海上十多年，24岁的卢云秀在东京摘得奥运会女子RS：X级帆板比赛金牌，这也是中国帆船帆板队历史上的第三枚奥运金牌。</p>
        <p cms-style="font-L">　　“我们无法预测风下一秒向什么方向吹，但我们能把控好自己。”卢云秀这样说，也这样做。尽管在第三轮比赛中她错失风摆名列第25位，但此后的比赛她牢牢把握节奏，最终把金牌收入囊中。</p>
        <p cms-style="font-L">　　下届奥运会起，女子帆板RS：X级将被水翼帆板项目取代。卢云秀已在筹谋未来：“全运会后，我就会改练水翼帆板，我觉得应该要去挑战一下自己。下一届不一定是我上，但是我还是要尽我最大努力去拼一把，不让自己后悔。”</p>
        <div class="img_wrapper">
            <div class="img_wrapper"><img id="8" src="//n.sinaimg.cn/sports/crawl/117/w550h367/20210808/547e-d7fb020e5c5f15ec787ac3a17cdba425.jpg" alt=""></div>
        </div>
        <p cms-style="font-L">　　7月31日，中国选手卢云秀在夺冠后庆祝。新华社记者黄宗治摄</p>
        <p cms-style="font-L">　　<font cms-style="font-L strong-Bold">——洛佩兹（西班牙男子攀岩运动员）</font></p>
        <p cms-style="font-L">　　本届奥运会，攀岩首次成为正式比赛项目，这个年轻的项目也诞生了年轻的冠军。18岁的西班牙小将洛佩兹击败各路名将摘得男子攀岩全能金牌，把自己的名字刻在了奥运会的历史上。</p>
        <p cms-style="font-L">　　根据攀岩比赛规则，选手须在速度、攀石和难度三项比拼中都有靠前排名，才能按照排名相乘获得更高积分。洛佩兹在速度赛中击败夺冠热门日本名将楢崎智亚位列第一，在攀石与难度两个项目中分列第七与第四，最终以28分夺得冠军。</p>
        <div class="img_wrapper">
            <div class="img_wrapper"><img id="9" src="//n.sinaimg.cn/sports/crawl/8/w550h258/20210808/2919-9533811e2b4955bb5a6f05211043d918.jpg" alt=""></div>
        </div>

    </div>

</body>
</html>


