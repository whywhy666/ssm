<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>凯文·杜兰特成为美国男篮奥运历史得分王 </title>

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
      <h2 align="center">凯文·杜兰特成为美国男篮奥运历史得分王 </h2>
      <h5 align="center">
        <a href="${pageContext.request.contextPath}/shouye/sy">返回首页</a>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        时间： 2020-08-08
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


      <p>虽然美国队在奥运会开始前的热身赛中连续折戟，在东京奥运会首场比赛中出师不利输给了法国队，但是此后球队迅速走上正轨，凯文·杜兰特的表现也同样如此。</p>
      <p>杜兰特在小组赛最后一场比赛对阵捷克的比赛中交出了23分8篮板6助攻的成绩单，在得分方面，超越卡梅罗·安东尼的336分，成为美国男篮奥运历史得分王。</p>
      <img src="https://iknow-pic.cdn.bcebos.com/9825bc315c6034a8b6072f11d9134954082376bd" />
      <p>这位效力于布鲁克林篮网的超巨在对阵法国队的决赛中砍下29分，居功至伟。在奥运金牌数量上也追平了安东尼，成为男篮历史上仅有的两位赢得三枚男篮奥运金牌的运动员。</p>
      <p>对阵法国的决赛结束后，杜兰特的奥运总得分来到435分，成为首位在三届奥运会上单届得分破百的运动员。</p>

      <p>如果杜兰特决定代表美国队征战2024年巴黎奥运会，他非常有机会赢得个人第四金，独享奥运会男篮历史上最成功的运动员之称号。</p>


      <hr>
      <h2 align="center">2)老将告别</h2>

      <p>2020年东京奥运会见证了国际篮坛三位传奇巨星的国家队谢幕演出：<a href="https://olympics.com/zh/athletes/pau-gasol">保罗·加索尔</a>、<a href="https://olympics.com/zh/athletes/marc-gasol">马克·加索尔</a>、<a href="https://olympics.com/zh/athletes/luis-scola">路易斯·斯科拉</a>。</p>
      <img align="center" src="https://iknow-pic.cdn.bcebos.com/b17eca8065380cd724f6357db344ad34588281b2" />
      <p>第五次参加奥运会的斯科拉曾经赢得过2004年雅典奥运会金牌、以及2008年北京奥运会铜牌。</p>
      <p>东京奥运会上，阿根廷男篮在四分之一决赛中不敌日本的比赛成为41岁的斯科拉国家队赛场的最后一场比赛。</p>
      <p>那场比赛中，斯科拉在比赛还剩最后一分钟时被主教练特意安排下场，让他独享埼玉超级竞技场内人员的欢呼。赛后“钻石”表示：“很有意思的经历，现在是新人崭露头角的时候了，我们离开的时候到了。”</p>
      <br /><br />
    </article>
  </div>


</div>

</body>
</html>