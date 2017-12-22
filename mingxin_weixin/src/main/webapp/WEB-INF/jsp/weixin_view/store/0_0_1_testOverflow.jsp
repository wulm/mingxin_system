<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
   String path = request.getContextPath();
   String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
   <meta charset="utf-8">
   <meta name="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta name="author" content="Brook">
   <link rel="stylesheet" href="<%=basePath%>resources/test/my/css/popGroupChoices.css">
   <%--弹出选项样式--%>
   <%--<link rel="stylesheet" href="<%=basePath%>resources/test/my/css/phoneBase.css">--%><%--手机网页基础字体定义--%>
   <link rel="stylesheet" href="<%=basePath%>resources/test/my/css/jquery-labelauty.css">
   <%--美化版radio button--%>
   <link rel="stylesheet" href="<%=basePath%>resources/test/my/css/aui.css">
   <%--aui样式--%>

   <link rel="stylesheet" href="<%=basePath%>resources/test/my/css/act-detail-core.css">
   <link rel="stylesheet" href="<%=basePath%>resources/test/my/css/act-detail-icon.css">
   <link rel="stylesheet" href="<%=basePath%>resources/test/my/css/act-detail-home.css">
   <%--<link rel="stylesheet" href="<%=basePath%>resources/test/taobao/css/act-detail-myCss.css">--%>
   <%--活动详情内容css--%>
   <title>活动详情页</title>
   <%--<style type="text/css">
       input.labelauty + label { font: 12px "Microsoft Yahei";}
   </style>--%>
</head>
<body>

   <%--顶部状态栏--%>
   <header class="aui-header-default aui-header-fixed aui-header-bg" style="height: 9%">
      <a href="javascript:history.back(-1)" class="aui-header-item">
         <i class="aui-icon aui-icon-back-white"></i>
      </a>
      <div class="aui-header-center aui-header-center-clear">
         <div class="aui-header-center-logo">
            <div id="scrollSearchPro">
               <span class="current">活动</span>
               <span>评价</span>
               <span>详情</span>
            </div>
         </div>
      </div>
      <a href="javascript:;" class="aui-header-item-icon select">
         <i class="aui-icon aui-icon-share-pd selectVal" onselectstart="return false"></i>
         <div class="aui-header-drop-down selectList">
            <div class="aui-header-drop-down-san"></div>
            <div class="">
               <p class="" onclick="location='http://www.a-ui.cn/'">消息</p>
               <p class="" onclick="location='index.html'">首页</p>
               <p class="" onclick="location='index.html'">帮助</p>
               <p class="" onclick="location='index.html'">分享</p>
            </div>
         </div>
      </a>
   </header>
   <%--顶部状态栏--%>

   <%--顶部图片轮转--%>
   <div class="aui-banner-content aui-fixed-top" data-aui-slider style="height: 70%;">
      <div class="aui-banner-wrapper">
         <div class="aui-banner-wrapper-item">
            <a href="#">
               <img src="<%=basePath%>resources/test/store/themes/img/pd/pd-zf-1.jpg">
            </a>
         </div>
         <div class="aui-banner-wrapper-item">
            <a href="#">
               <img src="<%=basePath%>resources/test/store/themes/img/pd/pd-zf-2.jpg">
            </a>
         </div>
         <div class="aui-banner-wrapper-item">
            <a href="#">
               <img src="<%=basePath%>resources/test/store/themes/img/pd/pd-zf-3.jpg">
            </a>
         </div>
         <div class="aui-banner-wrapper-item">
            <a href="#">
               <img src="<%=basePath%>resources/test/store/themes/img/pd/pd-zf-4.jpg">
            </a>
         </div>
         <div class="aui-banner-wrapper-item">
            <a href="#">
               <img src="<%=basePath%>resources/test/store/themes/img/pd/pd-zf-5.jpg">
            </a>
         </div>
      </div>
      <div class="aui-banner-pagination"></div>

   </div>
   <%--顶部图片轮转--%>


   <%--活动详情页--%>
   <div class="aui-product-content">
      <div class="aui-real-price clearfix">
			<span>
				<i>￥</i>399.00
			</span>
         <del><span class="aui-font-num">￥699</span></del>
         <div class="aui-settle-choice">
            <span>促销价</span>
         </div>
      </div>
      <div class="aui-product-title">
         <h2>
            茵曼2017秋装新款小清新文艺圆领长袖条纹针织衫女套头【1873132218】 酒红色 L茵曼2017秋装新款小清新文艺圆领长袖条纹针织衫女套头
         </h2>
         <p>
            纯色简洁大方，宽松时尚舒适，不管是内搭T恤还是衬衫都非常好看
         </p>
      </div>
      <div class="aui-product-boutique clearfix">
         <img src="<%=basePath%>resources/test/store/themes/img/icon/icon-usa.png" alt="">
         <span class="aui-product-tag-text">美国品牌</span>
         <img src="<%=basePath%>resources/test/store/themes/img/icon/icon-sj.png" alt="">
         <span class="aui-product-tag-text">精选商家</span>
      </div>
      <div class="aui-product-strip">
         <img style="height: 60px;" src="<%=basePath%>resources/test/store/themes/img/bg/ssy.jpg" alt="">
      </div>
      <div class="aui-product-coupon">
         <a href="javascript:;" class="aui-address-cell aui-fl-arrow aui-fl-arrow-clear js-open-modal">
         <div class="aui-address-cell-bd">选择</div>
         <div class="aui-address-cell-ft">颜色分类</div>
         </a>

         <a href="#" class="aui-address-cell aui-fl-arrow aui-fl-arrow-clear">
            <div class="aui-address-cell-bd">领券</div>
            <div class="aui-address-cell-ft">
               <span>满159减10券</span>
               <span>满299减30券</span>
            </div>
         </a>
         <a href="#" class="aui-address-cell aui-fl-arrow aui-fl-arrow-clear">
            <div class="aui-address-cell-bd">配送</div>
            <div class="aui-address-cell-ft">上海 至 北京海淀区</div>
         </a>
         <a href="#" class="aui-address-cell aui-fl-arrow aui-fl-arrow-clear">
            <div class="aui-address-cell-bd">运费</div>
            <div class="aui-address-cell-ft">免运费</div>
         </a>
         <a href="#" class="aui-address-cell aui-fl-arrow aui-fl-arrow-clear">
            <div class="aui-address-cell-bd">说明</div>
            <div class="aui-address-cell-ft">假一赔十 7天无忧退货</div>
         </a>
      </div>
      <div class="aui-dri"></div>
      <div class="aui-product-evaluate">
         <a href="#" class="aui-address-cell aui-fl-arrow aui-fl-arrow-clear">
            <div class="aui-address-cell-bd">商品评价 <em>(3290)</em></div>
            <div class="aui-address-cell-ft">
               <span>好评 100%</span>
            </div>
         </a>
      </div>
      <div class="aui-dri"></div>
      <div class="aui-product-evaluate" style="height:80px;">
         <a href="#" class="aui-address-cell aui-fl-arrow aui-fl-arrow-clear">
            <div class="aui-address-cell-bd">
               <div class="clearfix">
                  <div class="aui-product-shop-img" style="height:80px;">
                     <img src="<%=basePath%>resources/test/store/themes/img/user/user10.png" alt="">
                  </div>
                  <div class="aui-product-shop-text">
                     <h3>Versace官方旗舰店</h3>
                     <p>精选商家 服务保障</p>
                     <p>在售商品2390件</p>
                  </div>
               </div>
            </div>
            <div class="aui-address-cell-ft">
               <span>进店看看</span>
            </div>
         </a>
      </div>
      <div class="aui-dri"></div>
      <div class="aui-slide-box">
         <div class="aui-slide-list">
            <ul class="aui-slide-item-list">
               <li class="aui-slide-item-item">
                  <a href="#" class="v-link">
                     <img class="v-img" src="<%=basePath%>resources/test/store/themes/img/pd/sf-1.jpg">
                     <p class="aui-slide-item-title aui-slide-item-f-els">NIKE耐克男女鞋 ROSHE ONE 男女情侣小黑鞋奥利奥轻便休闲鞋</p>
                     <p class="aui-slide-item-info">
                        <span class="aui-slide-item-price">¥349</span>&nbsp;&nbsp;<span
                           class="aui-slide-item-mrk">¥499</span>
                     </p>
                  </a>
               </li>
               <li class="aui-slide-item-item">
                  <a href="#" class="v-link">
                     <img class="v-img" src="<%=basePath%>resources/test/store/themes/img/pd/sf-2.jpg">
                     <p class="aui-slide-item-title aui-slide-item-f-els">【防晒神器】let's diet 防晒帽 SPF50PA++ </p>
                     <p class="aui-slide-item-info">
                        <span class="aui-slide-item-price">¥99</span>&nbsp;&nbsp;<span
                           class="aui-slide-item-mrk">¥198</span>
                     </p>
                  </a>
               </li>
               <li class="aui-slide-item-item">
                  <a href="#" class="v-link">
                     <img class="v-img" src="<%=basePath%>resources/test/store/themes/img/pd/sf-3.jpg">
                     <p class="aui-slide-item-title aui-slide-item-f-els">秋冬新款 女士优雅宽松麂皮绒彷皮毛一体中长款仿皮</p>
                     <p class="aui-slide-item-info">
                        <span class="aui-slide-item-price">¥399</span>&nbsp;&nbsp;<span
                           class="aui-slide-item-mrk">¥999</span>
                     </p>
                  </a>
               </li>
               <li class="aui-slide-item-item">
                  <a href="#" class="v-link">
                     <img class="v-img" src="<%=basePath%>resources/test/store/themes/img/pd/sf-4.jpg">
                     <p class="aui-slide-item-title aui-slide-item-f-els">adidas 阿迪达斯 运动型格 女子短袖T恤 CF3657 CF3658</p>
                     <p class="aui-slide-item-info">
                        <span class="aui-slide-item-price">¥189</span>&nbsp;&nbsp;<span
                           class="aui-slide-item-mrk">¥299</span>
                     </p>
                  </a>
               </li>
               <li class="aui-slide-item-item">
                  <a href="#" class="v-link">
                     <img class="v-img" src="<%=basePath%>resources/test/store/themes/img/pd/sf-5.jpg">
                     <p class="aui-slide-item-title aui-slide-item-f-els">独立日限定 pop-up 短袖T恤 T-2</p>
                     <p class="aui-slide-item-info">
                        <span class="aui-slide-item-price">¥1349</span>&nbsp;&nbsp;<span
                           class="aui-slide-item-mrk">¥4199</span>
                     </p>
                  </a>
               </li>
               <li class="aui-slide-item-item">
                  <a href="#" class="v-link">
                     <img class="v-img" src="<%=basePath%>resources/test/store/themes/img/pd/sf-6.jpg">
                     <p class="aui-slide-item-title aui-slide-item-f-els">秋冬纯棉床单套件</p>
                     <p class="aui-slide-item-info">
                        <span class="aui-slide-item-price">¥349</span>&nbsp;&nbsp;<span
                           class="aui-slide-item-mrk">¥499</span>
                     </p>
                  </a>
               </li>
               <li class="aui-slide-item-item">
                  <a href="#" class="v-link">
                     <img class="v-img" src="<%=basePath%>resources/test/store/themes/img/pd/sf-7.jpg">
                     <p class="aui-slide-item-title aui-slide-item-f-els">法国品牌尚玛可 W-梵诺克·二合一七孔纤维冬被</p>
                     <p class="aui-slide-item-info">
                        <span class="aui-slide-item-price">¥349</span>&nbsp;&nbsp;<span
                           class="aui-slide-item-mrk">¥499</span>
                     </p>
                  </a>
               </li>
            </ul>
         </div>

      </div>
      <div class="aui-dri"></div>
      <div class="aui-product-pages">
         <div class="aui-product-pages-title">
            <h2>图文详情</h2>
         </div>
         <div class="aui-product-pages-img">
            <img src="<%=basePath%>resources/test/store/themes/img/pd/pd-cp0.jpg" alt="">
            <img src="<%=basePath%>resources/test/store/themes/img/pd/pd-cp2.jpg" alt="">
            <img src="<%=basePath%>resources/test/store/themes/img/pd/pd-cp3.jpg" alt="">
            <img src="<%=basePath%>resources/test/store/themes/img/pd/pd-cp1.jpg" alt="">
            <img src="<%=basePath%>resources/test/store/themes/img/pd/pd-cp.jpg" alt="">
            <img src="<%=basePath%>resources/test/store/themes/img/pd/pd-cp4.jpg" alt="">

         </div>
      </div>
      <div class="aui-recommend" style="height: 40px;">
         <img src="<%=basePath%>resources/test/store/themes/img/bg/icon-tj3.jpg" alt="">
         <!--<h2>为你推荐</h2>-->
      </div>
      <section class="aui-list-product">
         <div class="aui-list-product-box">
            <a href="javascript:;" class="aui-list-product-item">
               <div class="aui-list-product-item-img" style="height:80px;">
                  <img src="<%=basePath%>resources/test/store/themes/img/pd/sf-15.jpg" alt="">
               </div>
               <div class="aui-list-product-item-text">
                  <h3>KOBE LETTUCE 秋冬新款 女士日系甜美纯色半高领宽松套头毛衣针织衫</h3>
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
               <div class="aui-list-product-item-img" style="height:80px;">
                  <img src="<%=basePath%>resources/test/store/themes/img/pd/sf-14.jpg" alt="">
               </div>
               <div class="aui-list-product-item-text">
                  <h3>KOBE LETTUCE 秋冬新款 女士日系甜美纯色半高领宽松套头毛衣针织衫</h3>
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
               <div class="aui-list-product-item-img" style="height:80px;">
                  <img src="<%=basePath%>resources/test/store/themes/img/pd/sf-13.jpg" alt="">
               </div>
               <div class="aui-list-product-item-text">
                  <h3>KOBE LETTUCE 秋冬新款 女士日系甜美纯色半高领宽松套头毛衣针织衫</h3>
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
   <%--活动详情页--%>

   <footer class="aui-footer-product">
      <div class="aui-footer-product-fixed">
         <div class="aui-footer-product-concern-cart">
            <a href="#">
               <span class="aui-f-p-icon"><img src="<%=basePath%>resources/test/store/themes/img/icon/icon-kf.png"
                                               alt=""></span>
               <span class="aui-f-p-focus-info">客服</span>
            </a>
            <a href="#">
               <span class="aui-f-p-icon"><img src="<%=basePath%>resources/test/store/themes/img/icon/icon-sc.png"
                                               alt=""></span>
               <span class="aui-f-p-focus-info">收藏</span>
            </a>
            <a href="#">
               <span class="aui-f-p-icon"><img src="<%=basePath%>resources/test/store/themes/img/icon/icon-dp.png"
                                               alt=""></span>
               <span class="aui-f-p-focus-info">店铺</span>
            </a>
         </div>
         <div class="aui-footer-product-action-list">
            <a href="javascript:;" class="yellow-color js-open-modal">加入拼团</a>
            <a href="javascript:;" class="red-color js-open-modal" id="buy">发起拼团</a>
         </div>
      </div>
   </footer>

   <%--弹出窗遮罩层--%>
   <div id="popWin">
      <div id="modal" class="modal"></div>
      <%--弹出窗遮罩层--%>
      <div class="modal-frame" id="modal-frame">

         <div class="modal-frame-header">
            <div class="preIcon">
               <img src="http://pic.cclycs.com/pic/0131/08/4413233.jpg" alt=""/>
            </div>
            <div class="oderDetails">
               <div><font size="4.5rem" color="red">￥90.0</font>
                  <del>￥99</del>
                  (省￥9)
               </div>
               <div><font size="1.3">已团26人</font></div>
               <div><font size="1.3">已选：5人团/纪念水晶/活动险</font></div>
            </div>
            <span class="closeBtn" id="closeBtn">×</span>
         </div>
         <div class="modal-frame-content">

            <div class="choice-items">
               <div class="choice-title">选择日期</div>
               <ul>
                  <li><input type="radio" name="radio1" data-labelauty="2017年12月6日（周六）08:15-16:40"></li>
                  <li><input type="radio" name="radio1" data-labelauty="2017年12月7日（周日）08:15-16:40"></li>
               </ul>
               <hr/>
               <div class="choice-title">开团人数</div>
               <ul>
                  <li><input type="radio" name="radio" data-labelauty="1人"></li>
                  <li><input type="radio" name="radio" data-labelauty="2人"></li>
                  <li><input type="radio" name="radio" data-labelauty="3人"></li>

                  <li><input type="radio" name="radio" data-labelauty="5人"></li>

                  <li><input type="radio" name="radio" data-labelauty="8人"></li>

                  <li><input type="radio" name="radio" data-labelauty="10人"></li>
                  <li><input type="radio" name="radio" data-labelauty="15人"></li>
                  <li><input type="radio" name="radio" data-labelauty="20人"></li>
                  <li><input type="radio" name="radio" data-labelauty="30人(拼主0.5元)"></li>
               </ul>
               <hr/>
               <div class="choice-title">是否购买纪念品</div>
               <ul>
                  <li><input type="checkbox" name="checkbox" data-labelauty="不购买" checked disabled></li>
                  <li><input type="checkbox" name="checkbox" data-labelauty="相册"></li>
                  <li><input type="checkbox" name="checkbox" data-labelauty="围巾"></li>
                  <li><input type="checkbox" name="checkbox" data-labelauty="水晶"></li>
                  <li><input type="checkbox" name="checkbox" data-labelauty="纪念衫"></li>

               </ul>
               <hr/>
               <div class="choice-title">购买保险</div>
               <ul>
                  <li><input type="radio" name="radio3" data-labelauty="是"></li>
                  <li><input type="radio" name="radio3" data-labelauty="否"></li>
               </ul>
               <hr/>
               <div>携带身高1.5米以下儿童（人数）</div>
               <ul>
                  <li><input type="radio" name="radio4" data-labelauty="是"></li>
                  <li><input type="radio" name="radio4" data-labelauty="否"></li>
                  <div class="aui-bar aui-bar-btn" style="width:40%;float: right;" type="count" id="backTop">
                     <div class="aui-bar-btn-item aui-font-size-20">
                        <i class="aui-iconfont aui-icon-minus"></i>
                     </div>
                     <div class="aui-bar-btn-item aui-font-size-30">
                        <input type="number" class="aui-input aui-text-center" id="count" value="0" disabled>
                     </div>
                     <div class="aui-bar-btn-item aui-font-size-20">
                        <i class="aui-iconfont aui-icon-plus"></i>
                     </div>
                  </div>
               </ul>
               <hr/>
            </div>

         </div>
         <div class="modal-frame-footer" style="color: white;">确定</div>
      </div>
   </div>
   <%--弹出窗遮罩层--%>

   <script src="<%=basePath%>resources/test/my/js/popGroupChoices.js"></script>
   <%--弹出选项js--%>

   <script src="<%=basePath%>resources/test/store/themes/js/jquery.min.js"></script>

   <script src="<%=basePath%>resources/test/my/js/scrolling-element.js"></script>
   <%--解决部分浏览器不支持 document.scrollingElement.scrollTop--%>

   <script src="<%=basePath%>resources/test/my/js/jquery-labelauty.js"></script>

   <%--详情页js--%>
   <script type="text/javascript" src="<%=basePath%>resources/test/my/js/aui.js"></script>
   <script type="text/javascript" src="<%=basePath%>resources/test/my/js/aui-down.js"></script>
   <%--详情页js--%>


   <%--计算和弹出菜单需要--%>
   <script type="text/javascript" src="<%=basePath%>resources/test/my/js/aui-api.js"></script>
   <script type="text/javascript" src="<%=basePath%>resources/test/my/js/aui-tab.js"></script>
   <%--计算和弹出菜单需要--%>

   <script>
      $(function () {

         $(':input').labelauty();

         function openModal() {
            document.getElementById('modal').style.display = 'block';
            document.getElementById('modal-frame').style.display = 'block';
            ModalHelper.afterOpen();
         }

         function closeModal() {
            ModalHelper.beforeClose();
            document.getElementById('modal-frame').style.display = 'none';
            document.getElementById('modal').style.display = 'none';
         }

         var btns = document.querySelectorAll('.js-open-modal');
         btns[0].onclick = openModal;
         btns[1].onclick = openModal;
         btns[2].onclick = openModal;

         document.querySelector('#modal').onclick = closeModal;
         document.querySelector('#closeBtn').onclick = closeModal;

      });
   </script>
   <script type="text/javascript">
      apiready = function () {
         api.parseTapmode();
      }
      var bar = document.querySelectorAll(".aui-bar-btn");
      if (bar) {
         for (var i = 0; i < bar.length; i++) {
            var d = bar[i];
            var tab = new auiTab({
               element: bar[i],
               repeatClick: true
            }, function (ret) {
               if (ret.dom.parentNode.getAttribute("type") && ret.dom.parentNode.getAttribute("type") == "count") {
                  var count = parseInt(document.getElementById("count").value);

                  if (ret.index == 2)return;
                  if (ret.index == 1 && count > 0) {
                     document.getElementById("count").value = count - 1;
                  }
                  if (ret.index == 3 && count < 10) {
                     document.getElementById("count").value = count + 1;
                  }

               }
            });

         }
      }
   </script>
   <script type="text/javascript">
      //绑定滚动条事件
      $(window).bind("scroll", function () {
         var sTop = $(window).scrollTop();
         var sTop = parseInt(sTop);
         if (sTop >= 100) {
            if (!$("#scrollSearchPro").is(":visible")) {
               try {
                  $("#scrollSearchPro").slideDown();
               } catch (e) {
                  $("#scrollSearchPro").show();
               }
            }
         }
         else {
            if ($("#scrollSearchPro").is(":visible")) {
               try {
                  $("#scrollSearchPro").slideUp();
               } catch (e) {
                  $("#scrollSearchPro").hide();
               }
            }
         }
      });
   </script>


</body>
</html>
