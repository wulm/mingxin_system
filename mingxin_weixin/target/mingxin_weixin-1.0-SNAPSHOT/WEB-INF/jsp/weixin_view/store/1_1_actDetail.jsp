<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
   String path = request.getContextPath();
   String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html >
<head>
   <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, minimal-ui"/>
   <meta name="apple-mobile-web-app-capable" content="yes"/>
   <meta name="apple-mobile-web-app-status-bar-style" content="black"/>
   <meta name="format-detection" content="telephone=no, email=no"/>
   <meta charset="UTF-8">
   <title>活动详情</title>

   <%--<link rel="stylesheet" type="text/css" href="<%=basePath%>resources/test/aui/css/aui.css"/>--%>


   <link rel="stylesheet" href="<%=basePath%>resources/test/store/themes/css/core.css">
   <link rel="stylesheet" href="<%=basePath%>resources/test/store/themes/css/icon.css">
   <link rel="stylesheet" href="<%=basePath%>resources/test/store/themes/css/home.css">


   <link rel="stylesheet" href="<%=basePath%>resources/test/taobao/css/myCss.css">
   

   <link rel="stylesheet" href="<%=basePath%>resources/test/taobao/css/jquery-labelauty.css">

   <style>
      .dowebok ul { list-style-type: none;}
      .dowebok li { display: inline-block;}
      .dowebok li { margin: 3px 2px;}
      input.labelauty + label { font: 12px "Microsoft Yahei";}
   </style>
</head>

<body>

<header class="aui-header-default aui-header-fixed aui-header-bg" >
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
   <a href="javascript:;" class="aui-header-item-icon select" >
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

<div class="aui-banner-content aui-fixed-top" data-aui-slider style="height: 15rem;">
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
      <a id="selectType" href="javascript:;" class="aui-address-cell aui-fl-arrow aui-fl-arrow-clear"
      <%-- data-ydui-actionsheet="{target:'#actionSheet',closeElement:'#cancel'}"--%>>
         <div class="aui-address-cell-bd">选择</div>
         <div class="aui-address-cell-ft">颜色分类</div>
      </a>

      <%--选择颜色分类的弹出框--%>
      <div class="am-share">
         <div class="am-share-title">
            <img src="http://pic.cclycs.com/pic/0131/08/4413233.jpg" alt=""
                 style="width:6rem;height:6rem;"/>
            <p><font size="5" color="red">￥90</font><del>￥99(9.5折)</del></p>
            <p><font color="#ff4500" size="1.3">当前已团26人</font></p>
            <p>选择：5人团 纪念品 儿童2人</p>
            <span id="del"></span>
         </div>
         <div  style="padding: 5px;max-height:20rem;overflow: auto;">
            <div >选择日期</div>
            <ul class="dowebok">
               <li><input type="radio" name="radio1" data-labelauty="2017年12月6日（周六）08:00-18:00"></li>
               <li><input type="radio" name="radio1" data-labelauty="2017年12月7日（周日）08:00-18:00"></li>
            </ul>
            <div >开团人数</div>
            <ul class="dowebok">
               <li><input  type="radio" name="radio" data-labelauty="1人"></li>
               <li><input type="radio" name="radio" data-labelauty="2人"></li>
               <li><input type="radio" name="radio" data-labelauty="3人"></li>

               <li><input type="radio" name="radio" data-labelauty="5人"></li>

               <li><input type="radio" name="radio" data-labelauty="8人"></li>

               <li><input type="radio" name="radio" data-labelauty="10人"></li>
               <li><input type="radio" name="radio" data-labelauty="15人"></li>
               <li><input type="radio" name="radio" data-labelauty="20人"></li>
               <li><input type="radio" name="radio" data-labelauty="30人(拼主0.5元)"></li>
            </ul>

            <div >纪念品(每人限购1份)</div>
            <ul class="dowebok">
               <li><input type="checkbox" name="checkbox" data-labelauty="不购买"></li>
               <li><input type="checkbox" name="checkbox" data-labelauty="相册"></li>
               <li><input type="checkbox" name="checkbox" data-labelauty="围巾"></li>
               <li><input type="checkbox" name="checkbox" data-labelauty="水晶"></li>
               <li><input type="checkbox" name="checkbox" data-labelauty="纪念衫"></li>

            </ul>
            <div >购买保险</div>
            <ul class="dowebok">
               <li><input type="radio" name="radio3" data-labelauty="是"></li>
               <li><input type="radio" name="radio3" data-labelauty="否"></li>
               </ul>
               <div >携带12岁以下儿童</div>
               <ul class="dowebok">
                  <li><input type="radio" name="radio4" data-labelauty="是"></li>
                  <li><input type="radio" name="radio4" data-labelauty="否"></li>
            </ul>
          </div>

         <div style="width: 100%;height:2.5rem;line-height:2.5rem; background-color: red;text-align: center;"><font color="white" size="3">确定</font></div>
      </div>
      <%--选择颜色分类的弹出框--%>

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

<footer class="aui-footer-product">
   <div class="aui-footer-product-fixed">
      <div class="aui-footer-product-concern-cart">
         <a href="#">
            <span class="aui-f-p-icon"><img src="<%=basePath%>resources/test/store/themes/img/icon/icon-kf.png" alt=""></span>
            <span class="aui-f-p-focus-info">客服</span>
         </a>
         <a href="#">
            <span class="aui-f-p-icon"><img src="<%=basePath%>resources/test/store/themes/img/icon/icon-sc.png" alt=""></span>
            <span class="aui-f-p-focus-info">收藏</span>
         </a>
         <a href="#">
            <span class="aui-f-p-icon"><img src="<%=basePath%>resources/test/store/themes/img/icon/icon-dp.png" alt=""></span>
            <span class="aui-f-p-focus-info">店铺</span>
         </a>
      </div>
      <div class="aui-footer-product-action-list">
         <a href="javascript:;" class="yellow-color">加入拼团</a>
         <a href="javascript:;" class="red-color" id="buy">发起拼团</a>
      </div>
   </div>
</footer>

<script src="<%=basePath%>resources/test/store/themes/js/jquery.min.js"></script>
<script src="<%=basePath%>resources/test/store/themes/js/aui.js"></script>
<script src="<%=basePath%>resources/test/store/themes/js/aui-down.js"></script>

<script src="<%=basePath%>resources/test/taobao/js/jquery-labelauty.js"></script>

<script type="text/javascript">
   $(function () {



      //绑定滚动条事件
      $(window).bind("scroll", function () {
         var sTop = $(window).scrollTop();
         var sTop = parseInt(sTop);
         //alert(sTop);
         if (sTop >= 100) {
            if (!$("#scrollSearchPro").is(":visible")) {
               try {
                  $("#scrollSearchPro").slideDown();
//                  alert("显示出菜单");
               } catch (e) {
                  $("#scrollSearchPro").show();
               }
            }
         }
         else {
            if ($("#scrollSearchPro").is(":visible")) {
               try {
                  $("#scrollSearchPro").slideUp();
//                  alert("关闭了菜单");
               } catch (e) {
                  alert(e);
                  $("#scrollSearchPro").hide();
               }
            }
         }
      });

      /*扩展的radio button*/
      $(':input').labelauty();

      /*弹出选择颜色尺码页面*/
      function toshare() {
         $(".am-share").addClass("am-modal-active");
         if ($(".sharebg").length > 0) {
            $(".sharebg").addClass("sharebg-active");
         } else {
            $("body").append('<div class="sharebg"></div>');
            $(".sharebg").addClass("sharebg-active");
         }
         document.documentElement.style.overflow = 'hidden';
         $(".sharebg-active,.share_btn,#del").click(function () {
            $(".am-share").removeClass("am-modal-active");
            setTimeout(function () {
               $(".sharebg-active").removeClass("sharebg-active");
               $(".sharebg").remove();
            }, 300);
            document.documentElement.style.overflow = 'auto';
         });
      }

      $("#buy,#selectType").click(function () {
         toshare();
      });



   });
</script>

</body>
</html>
