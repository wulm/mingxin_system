<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
   String path = request.getContextPath();
   String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
   <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, minimal-ui"/>
   <meta name="apple-mobile-web-app-capable" content="yes"/>
   <meta name="apple-mobile-web-app-status-bar-style" content="black"/>
   <meta name="format-detection" content="telephone=no, email=no"/>
   <title>周周游</title>


   <link rel="stylesheet" href="<%=basePath%>resources/test/store/themes/css/core.css">
   <link rel="stylesheet" href="<%=basePath%>resources/test/store/themes/css/icon.css">
   <link rel="stylesheet" href="<%=basePath%>resources/test/store/themes/css/home.css">
   <link rel="stylesheet" type="text/css" href="<%=basePath%>resources/test/aui/css/aui.css"/>
   <link rel="icon" type="image/x-icon" href="favicon.ico">
   <link href="iTunesArtwork@2x.png" sizes="114x114" rel="apple-touch-icon-precomposed">
   <style>
      .n-tabs {
         position: fixed;
         /* top:44px; */
         left: 0;
         width: 100%;
         height: 41px;
         overflow: hidden;
         z-index: 1000;
         background-color: #fff;
         box-shadow: 0 0 10PX 0PX rgba(155, 143, 143, 0.6);
         -webkit-box-shadow: 0 0 10PX 0PX rgba(155, 143, 143, 0.6);
         -moz-box-shadow: 0 0 10PX 0PX rgba(155, 143, 143, 0.6);
      }

      .n-tabs .edge {
         position: fixed;
         top: 0;
         height: 41px;
         width: 100%;
         border-bottom: 1px solid #e5e5e5;
      }

      .n-tabs .n-tabContainer {
         -webkit-overflow-scrolling: touch;
         position: relative;
         top: 0;
         left: 0;
         overflow-x: auto;
         overflow-y: hidden;
         padding-left: 16px;
         height: 51px;
         font-size: 14px;
         color: #333;
         white-space: nowrap;
      }

      .n-tabs .n-tabContainer .navtab {
         display: -webkit-box;
         display: -webkit-flex;
         display: flex;
      }

      .n-tabs .n-tabContainer .n-tabItem {
         -webkit-box-flex: 1;
         -webkit-flex-grow: 1;
         flex-grow: 1;
         -webkit-flex-shrink: 0;
         flex-shrink: 0;
         display: inline-block;
         height: 41px;
         line-height: 41px;
         text-align: center;
         margin-left: 20px;
      }

      .n-tabs .n-tabContainer .n-tabItem:first-child {
         margin-left: 0;
      }

      .n-tabs .n-tabContainer .n-tabItem .current {
         display: inline-block;
         height: 41px;
         border-bottom: 2px solid #e31436;
         color: #e31436;
      }
   </style>
</head>

<body>

<!-- <header class="aui-header-default aui-header-fixed aui-header-bg">
   <a href="#" class="aui-header-item">
      <i class="aui-icon aui-icon-code"></i>
   </a>
   <div class="aui-header-center aui-header-center-clear">
      <div class="aui-header-center-logo">
         <div><img src="themes/img/user/icon-dis.png" alt=""></div>
      </div>
   </div>
   <a href="#" class="aui-header-item-icon">
      <i class="aui-icon aui-icon-packet"></i>
      <i class="aui-icon aui-icon-member"></i>
   </a>
</header> -->
<section class="n-tabs">
   <ul class="n-tabContainer" id="auto-id-1509603311057">
      <li class="n-tabItem" data-id="homepage">
         <a href="#" id="homepage" class="current">精选</a>
      </li>
      <li class="n-tabItem" data-id="44114">
         <a href="#" id="44114" class="">名胜古迹</a>
      </li>
      <li class="n-tabItem" data-id="15394">
         <a href="#" id="15394" class="">自然风光</a>
      </li>
      <li class="n-tabItem" data-id="01436">
         <a href="#" id="01436" class="">同窗欢聚</a>
      </li>
      <li class="n-tabItem" data-id="18211">
         <a href="#" id="18211" class="">素质拓展</a>
      </li>
      <li class="n-tabItem" data-id="83651">
         <a href="#" id="83651" class="">亲子出游</a>
      </li>
      <li class="n-tabItem" data-id="37957">
         <a href="#" id="37957" class="">农趣体验</a>
      </li>
      <li class="n-tabItem" data-id="74029">
         <a href="#" id="74029" class="">垂钓之乐</a>
      </li>
      <li class="n-tabItem" data-id="73179">
         <a href="#" id="73179" class="">骑行万里</a>
      </li>
      <li class="n-tabItem" data-id="41804">
         <a href="#" id="41806" class="">闲聊拱趴</a>
      </li>
      <li class="n-tabItem" data-id="41804">
         <a href="#" id="41804" class="">其他</a>
      </li>

   </ul>
</section>

<div class="aui-content-box">
   <div class="aui-banner-content aui-fixed-top" data-aui-slider style="height:250px;">
      <div class="aui-banner-wrapper">
         <div class="aui-banner-wrapper-item">
            <a href="#">
               <img src="http://pic.cclycs.com/pic/0131/13/2232845.jpg">
            </a>
         </div>
         <div class="aui-banner-wrapper-item">
            <a href="#">
               <img src="http://pic.cclycs.com/pic/0131/13/1632903.jpg">
            </a>
         </div>
      </div>
      <div class="aui-banner-pagination"></div>
   </div>
   <!-- 卡片模块 begin -->
   <section class="aui-card-content">
      <div class="aui-card-box">
         <div class="aui-card-box-user">
            <img src="<%=basePath%>resources/test/store/themes/img/user/user1.png" alt="">
         </div>
         <div class="aui-card-box-name">
            <h2 class="aui-card-box-name">高岗风之谷</h2>
            <span class="aui-card-box-btn">+订阅</span>
         </div>
         <div class="aui-card-box-time">2017年11月10日更新</div>
      </div>
      <div class="aui-card-media">
         <div class="aui-card-media-item">
            <img src="http://pic.cclycs.com/pic/0131/13/1632903.jpg"/>
         </div>
         <div class="aui-card-media-inner">
            <div class="aui-card-media-text">
               <p>天然草场的益处，亲近自然乐享生活</p>
            </div>
            <div class="aui-card-media-describe">
               <span>1.3万人浏览 85次活动</span>
            </div>
         </div>
      </div>

   </section>
   <!-- 卡片模块 end -->
   <div class="aui-dri"></div>
   <!-- 卡片模块 begin -->
   <section class="aui-card-content">
      <div class="aui-card-box">
         <div class="aui-card-box-user">
            <img src="<%=basePath%>resources/test/store/themes/img/user/user4.png" alt="">
         </div>
         <div class="aui-card-box-name">
            <h2 class="aui-card-box-name">前言教育</h2>
            <span class="aui-card-box-btn">+订阅</span>
         </div>
         <div class="aui-card-box-time">2017年10月10日更新</div>
      </div>
      <div class="aui-card-media">
         <div class="aui-card-media-item">
            <img src="http://img4.imgtn.bdimg.com/it/u=2914258115,4189322223&fm=27&gp=0.jpg"/>
         </div>
         <div class="aui-card-media-inner">
            <div class="aui-card-media-text">
               家庭才是孩子的第一课堂，孩子的成长，就是家庭的真实写照
            </div>
            <div class="aui-card-media-describe">
               <span>1.1万人浏览 37次活动</span>
            </div>
         </div>
      </div>

   </section>
   <!-- 卡片模块 end -->
   <div class="aui-dri"></div>
   <!-- 卡片模块 begin -->
   <section class="aui-card-content">
      <div class="aui-card-box">
         <div class="aui-card-box-user">
            <img src="<%=basePath%>resources/test/store/themes/img/user/user3.png" alt="">
         </div>
         <div class="aui-card-box-name">
            <h2 class="aui-card-box-name">我爱古田</h2>
            <span class="aui-card-box-btn">+订阅</span>
         </div>
         <div class="aui-card-box-time">2017年10月17日发布</div>
      </div>
      <div class="aui-card-media">
         <div class="aui-card-media-item">
            <img src="http://pic.baike.soso.com/p/20140416/bki-20140416041610-532497646.jpg"/>
         </div>
         <div class="aui-card-media-inner">
            <div class="aui-card-media-text">
               你不知道的古田特色文化，古田人必看！
            </div>
            <div class="aui-card-media-describe">
               <span>1.1万人浏览 64次活动</span>
            </div>
         </div>
      </div>

   </section>
   <!-- 卡片模块 end -->
   <div class="aui-dri"></div>
   <!-- 卡片模块 begin -->
   <section class="aui-card-content">
      <div class="aui-card-box">
         <div class="aui-card-box-user">
            <img src="<%=basePath%>resources/test/store/themes/img/user/user2.png" alt="">
         </div>
         <div class="aui-card-box-name">
            <h2 class="aui-card-box-name">品质生活馆</h2>
            <span class="aui-card-box-btn">+订阅</span>
         </div>
         <div class="aui-card-box-time">2017年10月10日发布</div>
      </div>
      <div class="aui-card-media">
         <div class="aui-card-media-item">
            <img src="http://img3.91.com/uploads/allimg/150316/19-1503161GA5.jpg"/>
         </div>
         <div class="aui-card-media-inner">
            <div class="aui-card-media-text">
               愿你的生活除了手机，还有青山绿水、阳光雨露！我们为什么戒不掉低头一族？
            </div>
            <div class="aui-card-media-describe">
               <span>1.1万人浏览 88次活动</span>
            </div>
         </div>
      </div>

   </section>
   <!-- 卡片模块 end -->
   <div class="aui-dri"></div>
   <!-- 卡片模块 三列 begin -->
   <section class="aui-card-content">
      <div class="aui-card-box">
         <div class="aui-card-box-user">
            <img src="http://seoimg.shgao.com/wwwshgaocom/1604/16-04-08/201604080941060.jpg" alt="">
         </div>
         <div class="aui-card-box-name">
            <h2 class="aui-card-box-name">垂钓之家</h2>
            <span class="aui-card-box-btn">+订阅</span>
         </div>
         <div class="aui-card-box-time">2017年9月11日更新</div>
      </div>
      <div class="aui-card-media-inner">
         <div class="aui-card-media-inner-title">渔具知识大科普</div>
         <div class="aui-card-media-inner-padded">
            <div class="aui-card-media-inner-col-xs-3">
               <img src="http://img3.imgtn.bdimg.com/it/u=1101340658,2782614061&fm=11&gp=0.jpg" alt="">
            </div>
            <div class="aui-card-media-inner-col-xs-3">
               <img src="http://img3.imgtn.bdimg.com/it/u=460386177,930300120&fm=27&gp=0.jpg" alt="">
            </div>
            <div class="aui-card-media-inner-col-xs-3">
               <img src="http://img5.imgtn.bdimg.com/it/u=2257430535,755346026&fm=27&gp=0.jpg" alt="">
            </div>
         </div>
      </div>
   </section>
   <!-- 卡片模块 三列 end -->


   <div class="aui-recommend" style="height:50px;">
      <img src="<%=basePath%>resources/test/store/themes/img/bg/icon-tj2.jpg" alt="">
      <!--<h2>为你推荐</h2>-->
   </div>
   <section class="aui-list-product">
      <div class="aui-list-product-box">
         <a href="javascript:;" class="aui-list-product-item">
            <div class="aui-list-product-item-img" style="height:150px;">
               <img src="http://pic.cclycs.com/pic/0131/13/2232845.jpg" alt="">
            </div>
            <div class="aui-list-product-item-text">
               <h3>古田县齐云寺1日游</h3>
               <div class="aui-list-product-mes-box">
                  <div>
							<span class="aui-list-product-item-price">
								<em>¥</em>
								399.99
							</span>
								<span class="aui-list-product-item-del-price">
								¥495.65
							</span>
                  </div>
                  <div class="aui-comment">98评论</div>
               </div>
            </div>
         </a>
         <a href="javascript:;" class="aui-list-product-item">
            <div class="aui-list-product-item-img" style="height:150px;">
               <img src="http://pic.cclycs.com/pic/0131/13/1632903.jpg" alt="">
            </div>
            <div class="aui-list-product-item-text">
               <h3>泮洋乡高岗草场1日游</h3>
               <div class="aui-list-product-mes-box">
                  <div>
							<span class="aui-list-product-item-price">
								<em>¥</em>
								399.99
							</span>
								<span class="aui-list-product-item-del-price">
								¥495.65
							</span>
                  </div>
                  <div class="aui-comment">986评论</div>
               </div>
            </div>
         </a>
         <a href="javascript:;" class="aui-list-product-item">
            <div class="aui-list-product-item-img" style="height:150px;">
               <img src="http://pic.cclycs.com/pic/0131/13/1732905.jpg" alt="">
            </div>
            <div class="aui-list-product-item-text">
               <h3>杉洋镇凤林祠1日游</h3>
               <div class="aui-list-product-mes-box">
                  <div>
							<span class="aui-list-product-item-price">
								<em>¥</em>
								399.99
							</span>
								<span class="aui-list-product-item-del-price">
								¥495.65
							</span>
                  </div>
                  <div class="aui-comment">986评论</div>
               </div>
            </div>
         </a>
         <a href="javascript:;" class="aui-list-product-item">
            <div class="aui-list-product-item-img" style="height:150px;">
               <img src="http://pic.cclycs.com/pic/0131/13/1932907.jpg" alt="">
            </div>
            <div class="aui-list-product-item-text">
               <h3>卓洋乡廖厝温泉1日游</h3>
               <div class="aui-list-product-mes-box">
                  <div>
							<span class="aui-list-product-item-price">
								<em>¥</em>
								399.99
							</span>
								<span class="aui-list-product-item-del-price">
								¥495.65
							</span>
                  </div>
                  <div class="aui-comment">986评论</div>
               </div>
            </div>
         </a>

      </div>
   </section>
</div>

<footer class="aui-bar aui-bar-tab" id="footer">
   <div id="zzy_index" class="aui-bar-tab-item" tapmode>
      <i class="aui-iconfont aui-icon-home"></i>
      <div class="aui-bar-tab-label">首页</div>
   </div>
   <div id="zzy_sort" class="aui-bar-tab-item" tapmode>
      <i class="aui-iconfont aui-icon-info"></i>
      <div class="aui-bar-tab-label">分类</div>
   </div>
   <div id="zzy_community" class="aui-bar-tab-item aui-active" tapmode>
      <div class="aui-badge">99</div>
      <i class="aui-iconfont aui-icon-star"></i>
      <div class="aui-bar-tab-label">社区</div>
   </div>
   <div id="zzy_chat" class="aui-bar-tab-item" tapmode>
      <div class="aui-badge">99+</div>
      <i class="aui-iconfont aui-icon-comment"></i>
      <div class="aui-bar-tab-label">消息</div>
   </div>
   <div id="zzy_me" class="aui-bar-tab-item" tapmode>
      <div class="aui-dot"></div>
      <i class="aui-iconfont aui-icon-my"></i>
      <div class="aui-bar-tab-label">我的</div>
   </div>
</footer>
<script type="text/javascript" src="<%=basePath%>resources/test/store/themes/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>resources/test/store/themes/js/aui.js"></script>
<script type="text/javascript">
   $("#zzy_index").on("click", function () {
      //alert("成功");
      window.location.href = '<%=basePath%>zzy/index.htm';
   });
   $("#zzy_sort").on("click", function () {
      //alert("成功");
      window.location.href = '<%=basePath%>zzy/sort.htm';
   });
//   $("#zzy_community").on("click", function () {
//      //alert("成功");
//      window.location.href = 'zzy/community.htm';
//   });
   $("#zzy_chat").on("click", function () {
      //alert("成功");
      window.location.href = '<%=basePath%>zzy/chat.htm';
   });
   $("#zzy_me").on("click", function () {
      //alert("成功");
      window.location.href = '<%=basePath%>zzy/me.htm';
   });

</script>
</body>
</html>
