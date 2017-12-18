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
   <link rel="icon" type="image/x-icon" href="favicon.ico">
   <link href="iTunesArtwork@2x.png" sizes="114x114" rel="apple-touch-icon-precomposed">

   <link rel="stylesheet" type="text/css" href="<%=basePath%>resources/test/aui/css/aui.css"/>

</head>

<body>
<%-- <header class="aui-header-default aui-header-fixed aui-header-bg">
 <a href="#" class="aui-header-item">
    <!--<i class="aui-icon aui-icon-back-white" id="scrollSearchI" style="display:block"></i>-->
    <div id="scrollSearchDiv">
       <img src="<%=basePath%>resources/test/store/themes/img/user/head-3.jpg" alt="">
    </div>
 </a>
 <div class="aui-header-center aui-header-center-clear">
    <div class="">

    </div>
 </div>
 <a href="my-set.html" class="aui-header-item-icon">
    <i class="aui-icon aui-icon-Set"></i>
 </a>
</header> --%>

<section class="aui-content">
   <!-- <div class="aui-content-box">
      <div class="aui-me-content-list"  style="padding-left:15px;padding-right:15px;">

               <div class="aui-me-content-item-img">
                  <img src="http://wx.qlogo.cn/mmopen/gITwFOywPbkCx8BxwYc41oAGjuBeFianAbtHl8URmaCMTe9lib6EicNuHSibGJzSfT6Y88Nos1poHITnB7vUs7foHphNpibcgFEja/0" alt="">
               </div>
               <div class="aui-me-content-item-title">利明小小的鱼鱼鱼</div>
               <div style="float:left;" ><i style="color:blue;" class="aui-iconfont aui-icon-edit">编辑</i></div>


      </div>
   </div> -->
   <div style="padding-left:20px; padding-top:20px;padding-bottom:10px;background-color:red;">
      <div style="width: 60px;height:60px;float:left;border-radius:50%; border:1px solid #eee;overflow:hidden;">
         <img src="http://wx.qlogo.cn/mmopen/gITwFOywPbkCx8BxwYc41oAGjuBeFianAbtHl8URmaCMTe9lib6EicNuHSibGJzSfT6Y88Nos1poHITnB7vUs7foHphNpibcgFEja/0"/>
      </div>
      <div style="height:60px;float:left;padding-left:30px;margin-top:15px;color:white;">
         <div>利明&nbsp;&nbsp;&nbsp;<i style="color:black;" class="aui-iconfont aui-icon-edit">编辑</i></div>
         <div style="padding-top:5px;"><font size="1">已绑定微信号</font></div>

      </div>
   </div>
   <div class="aui-me-content-order">
      <a href="my-order.html" class="aui-well aui-fl-arrow">
         <div class="aui-well-bd">我的订单</div>
         <div class="aui-well-ft">查看全部</div>
      </a>
   </div>
   <section class="aui-grid-content">
      <div class="aui-grid-row">
         <a href="my-order.html" class="aui-grid-row-item">
            <i class="aui-icon-large aui-icon-large-sm aui-icon-wallet"></i>
            <p class="aui-grid-row-label">待付款</p>
         </a>
         <a href="my-order.html" class="aui-grid-row-item">
            <i class="aui-icon-large aui-icon-large-sm aui-icon-goods"></i>
            <p class="aui-grid-row-label">待发货</p>
         </a>
         <a href="my-order.html" class="aui-grid-row-item">
            <i class="aui-icon-large aui-icon-large-sm aui-icon-receipt"></i>
            <p class="aui-grid-row-label">待收货</p>
         </a>
         <a href="my-order.html" class="aui-grid-row-item">
            <i class="aui-icon-large aui-icon-large-sm aui-icon-evaluate"></i>
            <p class="aui-grid-row-label">待评价</p>
         </a>
         <a href="my-order.html" class="aui-grid-row-item">
            <i class="aui-icon-large aui-icon-large-sm aui-icon-refund"></i>
            <p class="aui-grid-row-label">退货退款</p>
         </a>
      </div>
      <div class="aui-dri"></div>
      <div class="aui-me-content-order">
         <a href="#" class="aui-well ">
            <div class="aui-well-bd">我的服务</div>
            <!--<div class="aui-well-ft">查看全部</div>-->
         </a>
      </div>
      <div class="aui-grid-row">
         <a href="my-invitation.html" class="aui-grid-row-item">
            <i class="aui-icon-large aui-icon-large-sm aui-icon-invitation"></i>
            <p class="aui-grid-row-label">邀请好友</p>
         </a>
         <a href="my-sign.html" class="aui-grid-row-item">
            <i class="aui-icon-large aui-icon-large-sm aui-icon-signs"></i>
            <p class="aui-grid-row-label">签到领币</p>
         </a>
         <a href="my-coupon.html" class="aui-grid-row-item">
            <i class="aui-icon-large aui-icon-large-sm aui-icon-coupon"></i>
            <p class="aui-grid-row-label">优惠券</p>
         </a>
         <a href="my-purchase.html" class="aui-grid-row-item">
            <i class="aui-icon-large aui-icon-large-sm aui-icon-fight"></i>
            <p class="aui-grid-row-label">我的拼团</p>
         </a>
         <a href="my-hands.html" class="aui-grid-row-item">
            <i class="aui-icon-large aui-icon-large-sm aui-icon-recommend"></i>
            <p class="aui-grid-row-label">商品推手</p>
         </a>
         <a href="#" class="aui-grid-row-item">
            <i class="aui-icon-large aui-icon-large-sm aui-icon-recharge"></i>
            <p class="aui-grid-row-label">充值中心</p>
         </a>
         <a href="#" class="aui-grid-row-item">
            <i class="aui-icon-large aui-icon-large-sm aui-icon-help"></i>
            <p class="aui-grid-row-label">帮助中心</p>
         </a>
         <a href="#" class="aui-grid-row-item">
            <i class="aui-icon-large aui-icon-large-sm aui-icon-problem"></i>
            <p class="aui-grid-row-label">我的问答</p>
         </a>
         <a href="#" class="aui-grid-row-item">
            <i class="aui-icon-large aui-icon-large-sm aui-icon-evaluates"></i>
            <p class="aui-grid-row-label">我的评价</p>
         </a>
         <a href="#" class="aui-grid-row-item">
            <i class="aui-icon-large aui-icon-large-sm aui-icon-shares"></i>
            <p class="aui-grid-row-label">我的分享</p>
         </a>
      </div>
      <div class="aui-dri"></div>
      <section>
         <div class="aui-product-set">

            <a href="#" class="aui-address-cell aui-fl-arrow aui-fl-arrow-clear"
               data-ydui-actionsheet="{target:'#actionSheet',closeElement:'#cancel'}">
               <div class="aui-address-cell-bd">我的拼团</div>
               <div class="aui-address-cell-ft"></div>
            </a>
            <a href="#" class="aui-address-cell aui-fl-arrow aui-fl-arrow-clear"
               data-ydui-actionsheet="{target:'#actionSheet',closeElement:'#cancel'}">
               <div class="aui-address-cell-bd">我的免单券</div>
               <div class="aui-address-cell-ft"></div>
            </a>
            <a href="my-address.html" class="aui-address-cell aui-fl-arrow aui-fl-arrow-clear"
               data-ydui-actionsheet="{target:'#actionSheet',closeElement:'#cancel'}">
               <div class="aui-address-cell-bd">我的实名认证</div>
               <div class="aui-address-cell-ft"></div>
            </a>
            <a href="my-address.html" class="aui-address-cell aui-fl-arrow aui-fl-arrow-clear"
               data-ydui-actionsheet="{target:'#actionSheet',closeElement:'#cancel'}">
               <div class="aui-address-cell-bd">我的收货地址</div>
               <div class="aui-address-cell-ft"></div>
            </a>
            <a href="#" class="aui-address-cell aui-fl-arrow aui-fl-arrow-clear"
               data-ydui-actionsheet="{target:'#actionSheet',closeElement:'#cancel'}">
               <div class="aui-address-cell-bd">官方客服</div>
               <div class="aui-address-cell-ft"></div>
            </a>
            <a href="#" class="aui-address-cell aui-fl-arrow aui-fl-arrow-clear"
               data-ydui-actionsheet="{target:'#actionSheet',closeElement:'#cancel'}">
               <div class="aui-address-cell-bd">关于我们</div>
               <div class="aui-address-cell-ft">v5.0</div>
            </a>
         </div>

      </section>

   </section>
</section>

<footer class="aui-bar aui-bar-tab" id="footer">
   <div id="zzy_index" class="aui-bar-tab-item" tapmode>
      <i class="aui-iconfont aui-icon-home"></i>
      <div class="aui-bar-tab-label">首页</div>
   </div>
   <div id="zzy_sort" class="aui-bar-tab-item" tapmode>
      <i class="aui-iconfont aui-icon-info"></i>
      <div class="aui-bar-tab-label">分类</div>
   </div>
   <div id="zzy_community" class="aui-bar-tab-item" tapmode>
      <div class="aui-badge">99</div>
      <i class="aui-iconfont aui-icon-star"></i>
      <div class="aui-bar-tab-label">社区</div>
   </div>
   <div id="zzy_chat" class="aui-bar-tab-item" tapmode>
      <div class="aui-badge">99+</div>
      <i class="aui-iconfont aui-icon-comment"></i>
      <div class="aui-bar-tab-label">消息</div>
   </div>
   <div id="zzy_me" class="aui-bar-tab-item aui-active" tapmode>
      <div class="aui-dot"></div>
      <i class="aui-iconfont aui-icon-my"></i>
      <div class="aui-bar-tab-label">我的</div>
   </div>
</footer>
<script type="text/javascript" src="<%=basePath%>resources/test/store/themes/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>resources/test/store/themes/js/aui.js"></script>
<script type="text/javascript" src="<%=basePath%>resources/test/aui/script/api.js"></script>
<script type="text/javascript" src="<%=basePath%>resources/test/aui/script/aui-slide.js"></script>
<script type="text/javascript">
   $("#zzy_index").on("click", function () {
      //alert("成功");
      window.location.href = '<%=basePath%>zzy/index.htm';
   });
   $("#zzy_sort").on("click", function () {
      //alert("成功");
      window.location.href = '<%=basePath%>zzy/sort.htm';
   });
      $("#zzy_community").on("click", function () {
         //alert("成功");
         window.location.href = '<%=basePath%>zzy/community.htm';
      });
   $("#zzy_chat").on("click", function () {
      //alert("成功");
      window.location.href = '<%=basePath%>zzy/chat.htm';
   });
//   $("#zzy_me").on("click", function () {
//      //alert("成功");
//      window.location.href = 'zzy/me.htm';
//   });


   $(function () {
      //绑定滚动条事件
      //绑定滚动条事件
      $(window).bind("scroll", function () {
         var sTop = $(window).scrollTop();
         var sTop = parseInt(sTop);
         if (sTop >= 44) {
            if (!$("#scrollSearchDiv").is(":visible")) {
               try {
                  $("#scrollSearchDiv").slideDown();
               } catch (e) {
                  $("#scrollSearchDiv").show();
               }
            }
         }
         else {
            if ($("#scrollSearchDiv").is(":visible")) {
               try {
                  $("#scrollSearchDiv").slideUp();
               } catch (e) {
                  $("#scrollSearchDiv").hide();
               }
            }
         }
      });
   })
</script>
</body>
</html>
