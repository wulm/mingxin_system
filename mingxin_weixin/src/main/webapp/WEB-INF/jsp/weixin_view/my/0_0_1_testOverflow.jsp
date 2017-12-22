<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
   String path = request.getContextPath();
   String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

   <meta charset="utf-8">
   <meta name="viewport"
         content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0,user-scalable=no"/>
   <meta name="format-detection" content="telephone=no,email=no,date=no,address=no">
   <title>AUI快速完成布局</title>
   <link rel="stylesheet" href="<%=basePath%>resources/test/my/css/home.css">
   <link rel="stylesheet" type="text/css" href="<%=basePath%>resources/test/my/css/aui.css"/>
   <link rel="stylesheet" type="text/css" href="<%=basePath%>resources/test/my/css/aui-slide.css"/>
   <style type="text/css">

      .header-position {
         position: fixed;
         top: 0;
         top: 0;
      }

      .content-positon {

         position: absolute;
         padding-top: 2.25rem;
         padding-bottom: 2.25rem;
         width: 100%;
      }

      .bg-dark {
         background: #333333 !important;
      }

      .aui-slide-node img {
         width: auto;
         height: 100%;
      }

      /*显示回顶部按钮*/
      #backTop {
         position: fixed;
         /*padding: 0.5rem 0.2rem;*/
         right: 0.3rem;
         bottom: 3rem;
         background-color: #e0e0e0;
         border-radius: 0.3rem;
         font-size: 0.8rem;
         height: 1.2rem;
         color: #212121;
         z-index: 999;
      }

      /*显示拼团消息*/
      #buyTip {
         display: none;
         position: fixed;
         left: 0.2rem;
         top: 2.5rem;
         border-radius: 0.5rem;
         z-index: 999;
      }


   </style>
</head>
<body>
<header class="aui-bar aui-bar-nav header-position" style="background-color: #e5133d">
   <a class="aui-pull-left aui-btn">
      <span class="aui-iconfont aui-icon-left"></span>返回
   </a>
   <div class="aui-title">活动详情</div>
</header>
<section class="aui-content content-positon">

   <div id="aui-slide3">
      <div class="aui-slide-wrap">
         <div class="aui-slide-node bg-dark">
            <img src="<%=basePath%>resources/test/my/image/l1.png"/>
         </div>
         <div class="aui-slide-node bg-dark">
            <img src="<%=basePath%>resources/test/my/image/l2.png"/>
         </div>
         <div class="aui-slide-node bg-dark">
            <img src="<%=basePath%>resources/test/my/image/l3.png"/>
         </div>
      </div>
      <div class="aui-slide-page-wrap"><!--分页容器--></div>
   </div>

   <div class="aui-real-price">
			<span>
				<i>￥</i>399.00
			</span>
      <span class="aui-font-num"><del>￥699</del></span>
        <span class="aui-settle-choice">
            <span>促销价</span>
        </span>
   </div>
   <%--<br/>--%>
   <div class="aui-product-title">
      <h2>
         茵曼2017秋装新款小清新文艺圆领长袖条纹针织衫女套头【1873132218】 酒红色 L茵曼2017秋装新款小清新文艺圆领长袖条纹针织衫女套头
      </h2>
      <p>
         纯色简洁大方，宽松时尚舒适，不管是内搭T恤还是衬衫都非常好看
      </p>
   </div>

   <div class="aui-product-boutique">
      <div style="float: left">
         <img src="<%=basePath%>resources/test/store/themes/img/icon/icon-usa.png" alt="">
         <span class="aui-product-tag-text">美国品牌</span>
      </div>
      <div>
         <img src="<%=basePath%>resources/test/store/themes/img/icon/icon-sj.png" alt="">
         <span class="aui-product-tag-text">精选商家</span>
      </div>
   </div>
   <div class="Seg-line"></div>
   <div id="groupCurrent">
      <ul class="aui-list ">
         <li class="aui-list-header" style="height: 1.6rem;background-color: #FFFFfc;border-bottom:1px solid #eeeedd;">
            <div style="float: left;">75人正在拼团，可直接参与</div>
            <div style="float: right;"><a href="javascript:;">查看更多<i class="aui-iconfont aui-icon-right"></i></a></div>
         </li>
         <li class="aui-list-item aui-list-item-middle">
            <div class="aui-media-list-item-inner" style="width: 100%;">
               <div class="aui-list-item-media" style="width:13%;">
                  <img src="<%=basePath%>resources/test/store/themes/img/icon/icon-usa.png" class="aui-img-round aui-list-img-sm">
               </div>
               <div class="aui-list-item-inner " style="width:29%;">
                  流浪男
               </div>
               <div class="aui-list-item-right" style="font-size: 0.5rem;width:28%;">
                  <div ><font size="2px">还差<font color="red">2人</font>拼成</font></div>
                  <div >剩余20:50:41.08</div>
               </div>
               <div class="aui-list-item-right " >
                  <div class="aui-btn aui-btn-danger" style="font-size: 0.5rem;">参与拼团</div>
               </div>
            </div>
         </li>
         <li class="aui-list-item aui-list-item-middle">
            <div class="aui-media-list-item-inner" style="width: 100%;">
               <div class="aui-list-item-media" style="width:13%;">
                  <img src="<%=basePath%>resources/test/store/themes/img/icon/icon-usa.png" class="aui-img-round aui-list-img-sm">
               </div>
               <div class="aui-list-item-inner " style="width:29%;">
                  流浪男
               </div>
               <div class="aui-list-item-right" style="font-size: 0.5rem;width:28%;">
                  <div ><font size="2px">还差<font color="red">2人</font>拼成</font></div>
                  <div >剩余20:50:41.08</div>
               </div>
               <div class="aui-list-item-right " >
                  <div class="aui-btn aui-btn-danger" style="font-size: 0.5rem;">参与拼团</div>
               </div>
            </div>
         </li>
      </ul>
   </div>
   <div class="Seg-line"></div>
   <div id="actAppraise">
      <ul class="aui-list aui-media-list">
         <li class="aui-list-header" style="height: 1.6rem;background-color: #FFFFfc;border-bottom:1px solid #eeeedd;">
            <div style="float: left;">活动评价（51）</div>
            <div style="float: right;"><a href="javascript:;">查看全部<i class="aui-iconfont aui-icon-right"></i></a></div>
         </li>
         <li class="aui-list-item" style="padding-right:0.3rem; ">
            <div class="aui-info" style="padding:0.2rem ;">
               <div class="aui-info-item">
                  <img src="<%=basePath%>resources/test/my/image/liulangnan.png" style="width:1rem" class="aui-img-round" />
                  <span class="aui-margin-l-5">流浪男</span>
               </div>
               <div class="aui-info-item">2017.07.14 </div>
            </div>
            <div class="aui-media-list-item-inner">
               <%--<div class="aui-list-item-media">
                  <img src="<%=basePath%>resources/test/my/image/demo1.png">
               </div>--%>
               <div class="aui-list-item-inner">
                  <div class="aui-list-item-text">
                     <div class="aui-list-item-title aui-ellipsis-2" style="font-size: 0.7rem;">
                        活动个非常好活动个非常好活动个非常好活动个非常好活动个非常好活动个非常好活动个非常好活动个非常好活动个非常好活动个非常好活动个非常好活动个非常好活动个非常好
                     </div>
                  </div>
                  <div class="aui-list-item-text aui-ellipsis-1" style="font-size: 0.6rem;">
                     颜色:羊羔绒【红色】 尺寸:1.2米床【约5.2斤重】
                  </div>
               </div>
            </div>
         </li>
         <li class="aui-list-item" style="padding-right:0.3rem; ">
            <div class="aui-info" style="padding:0.2rem ;">
               <div class="aui-info-item">
                  <img src="<%=basePath%>resources/test/my/image/liulangnan.png" style="width:1rem" class="aui-img-round" />
                  <span class="aui-margin-l-5">流浪男</span>
               </div>
               <div class="aui-info-item">2017.07.14 </div>
            </div>
            <div class="aui-media-list-item-inner">
               <%--<div class="aui-list-item-media">
                  <img src="<%=basePath%>resources/test/my/image/demo1.png">
               </div>--%>
               <div class="aui-list-item-inner">
                  <div class="aui-list-item-text">
                     <div class="aui-list-item-title aui-ellipsis-2" style="font-size: 0.7rem;">
                        活动个非常好活动个非常好活动个非常好活动个非常好活动个非常好活动个非常好活动个非常好活动个非常好活动个非常好活动个非常好活动个非常好活动个非常好活动个非常好
                     </div>
                  </div>
                  <div class="aui-list-item-text aui-ellipsis-1" style="font-size: 0.6rem;">
                     颜色:羊羔绒【红色】 尺寸:1.2米床【约5.2斤重】
                  </div>
               </div>
            </div>
         </li>

      </ul>

   </div>


   <div>

      <p style="height: 10rem;">中间内容部分1</p>
      <p style="height: 10rem;">中间内容部分</p>
      <p style="height: 10rem;">中间内容部分</p>
      <p style="height: 10rem;">中间内容部分</p>
      <p style="height: 10rem;">中间内容部分</p>
      <p style="height: 10rem;">中间内容部分</p>
      <p style="height: 10rem;">中间内容部分</p>
      <p style="height: 10rem;">中间内容部分</p>
      <p>中间内容部分10</p>
      <p>中间内容部分9</p>
      <p>中间内容部分8</p>
      <p>中间内容部分7</p>
      <p>中间内容部分6</p>
      <p>中间内容部分5</p>
      <p>中间内容部分4</p>
      <p>中间内容部分3</p>
      <p>中间内容部分2</p>
      <p>中间内容部分1</p>
   </div>
</section>
<div id="backTop" style="display: none;">回顶部</div>
<div id="buyTip">
   <div class="aui-tips" style="height: 1rem;border-radius: 0.3rem;">
      <img style="width: 1rem;height: 1rem;"
           src="<%=basePath%>resources/test/store/themes/img/icon/icon-usa.png" alt="">
      <%--<i class="aui-iconfont aui-icon-info">111111</i>--%>
      <div class="aui-ellipsis-1" style="max-width:4rem;font-size:0.6rem;padding-right: 0.2rem;">LM小小的天猫猫猫</div>
      <div class="aui-tips-title aui-ellipsis-1">5小时前参与了该拼团</div>
   </div>
</div>
<footer class="aui-bar aui-bar-tab" style="font-size: 0.7rem;">
   <div class="aui-bar-tab-item" tapmode style="width: 2.3rem;">
      <i class="aui-iconfont aui-icon-home aui-text-gray"></i>
      <div class="aui-bar-tab-label aui-text-gray">首页</div>
   </div>
   <div class="aui-bar-tab-item" tapmode style="width: 2.3rem;">
      <i class="aui-iconfont aui-icon-like aui-text-gray"></i>
      <div class="aui-bar-tab-label aui-text-gray">收藏</div>
   </div>
   <div class="aui-bar-tab-item" tapmode style="width: 2.3rem;">
      <i class="aui-iconfont aui-icon-comment aui-text-danger"></i>
      <div class="aui-bar-tab-label aui-text-danger">客服</div>
   </div>
   <div class="aui-bar-tab-item aui-bg-warning aui-text-white" tapmode style="width: auto;">参与拼团</div>
   <div class="aui-bar-tab-item aui-bg-danger aui-text-white" tapmode style="width: auto;">发起拼团</div>
</footer>
</body>

<script type="text/javascript" src="<%=basePath%>resources/test/my/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>resources/test/my/js/aui-slide.js"></script>
<script type="text/javascript" src="<%=basePath%>resources/test/my/js/aui-scroll.js"></script>
<script type="text/javascript">

   /*图片轮播*/
   var slide3 = new auiSlide({
      container: document.getElementById("aui-slide3"),
      // "width":300,
      "height": 240,
      "speed": 500,
      "autoPlay": 8000, //自动播放
      "loop": true,
      "pageShow": true,
      "pageStyle": 'dot',
      'dotPosition': 'center'
   });
   /*图片轮播*/

   /*滚动回到顶部*/
   var scroll = new auiScroll({
      listen: true,
      distance: 200 //判断到达底部的距离，isToBottom为true
   },function(ret){
      if(ret.scrollTop>=400){
         if(!$('#backTop').is(':visible')){
            $('#backTop').show();
         }
      }else{
         if($('#backTop').is(':visible')){
            $('#backTop').hide();
         }
      }
    /*if(ret.isToBottom){
    document.getElementById("demo").textContent = "已到达底部";
    }else{
    document.getElementById("demo").textContent = "滚动高度："+ret.scrollTop;
    }*/

    });

   $("#backTop").click(function () {
//        if(scrollTop<=50){return;}
      $('body').animate({
         scrollTop: 0
      }, 100);
   });
   /*滚动回到顶部*/


   /*定时弹出购买小条*/
//   var timeCount = 0;
   setInterval(function () {
//      timeCount = timeCount + 1;
      if (!$('#buyTip').is(':visible')) {
         $('#buyTip').show();
         setTimeout(function () {
            $('#buyTip').hide();//将tip标签隐藏。
         }, 5000);
      }

//      document.getElementById("backTop").textContent = "次数" + timeCount;
   }, 15000);//1000为1秒钟
   /*定时弹出购买小条*/

</script>
</html>
