<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017\12\25 0025
  Time: 19:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
   String path = request.getContextPath();
   String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
   <meta charset="utf-8">
   <meta name="viewport"
         content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0,user-scalable=no"/>
   <meta name="format-detection" content="telephone=no,email=no,date=no,address=no">
   <title>拼团详情</title>

   <link rel="stylesheet" type="text/css" href="<%=basePath%>resources/test/my/css/aui.css"/>
   <%--aui css--%>
   <link rel="stylesheet" type="text/css" href="<%=basePath%>resources/test/my/css/aui-flex.css"/>
   <%--布局css--%>
   <link rel="stylesheet" type="text/css" href="<%=basePath%>resources/test/my/css/act-order.css"/>
</head>
<body>

<section class="aui-content ">
   <div id="aui-address-box" class="color-seg-line">
      <div class="aui-flex-col aui-flex-left ">
         <div class="aui-flex-item-10 aui-flex-row aui-flex-middle aui-flex-left">
            <div class="aui-flex-col aui-font-size-16 aui-padded-b-5" style="width: 100%;">
               <strong>吴利明</strong>（157****2784）
            </div>
            <div class="aui-flex-col aui-font-size-12 aui-ellipsis-2" style="width: 100%;">
               福建 宁德 古田县城西街道康佰家药店三楼前言教育前言教育前言教育
            </div>
         </div>
         <div class="aui-flex-item-2 aui-flex-row aui-flex-middle aui-flex-right aui-padded-10">
            <div class="aui-font-size-12">
               <i class="aui-iconfont aui-icon-right"></i>
            </div>

         </div>
      </div>
   </div>
   <div id="actOrderDetail">
      <div class="aui-flex-col aui-border-b aui-padded-5 aui-margin-5">
         <div class="aui-flex-col aui-font-size-12 aui-padded-l-10 aui-padded-r-10">
            <div class="aui-flex-row">
               <img class="aui-img-round" style="width: 1rem;height: 1rem;"
                    src="<%=basePath%>resources/test/my/image/liulangnan.png">
            </div>
            <div class="aui-flex-row">风之谷户外拓展</div>
         </div>

      </div>
      <div class="aui-flex-col aui-flex-left aui-border-b">
         <div class="aui-flex-item-3 aui-flex-row aui-flex-middle aui-padded-5">
            <img src="<%=basePath%>resources/test/my/image/liulangnan.png">
         </div>

         <div class="aui-flex-item-9 aui-flex-row aui-flex-middle aui-flex-left">
            <div class="aui-font-size-12 aui-ellipsis-2">
               <strong>古田高岗露营，触摸自然，感受自然，倾听自然，更要喝到自然。感受自然，倾听自然，更要喝到自然。</strong>
            </div>
            <div class="aui-font-size-10 aui-ellipsis-1">
               时间：2017年12月24日（周日）
            </div>
            <div class="aui-font-size-10 aui-ellipsis-1">
               类型：5人团/儿童1人
            </div>
            <div class="aui-font-size-12 aui-ellipsis-1">
               <font color="red">￥89/人</font>
            </div>
         </div>

      </div>

   </div>
<%--<a href="#" class="aui-address-cell  aui-fl-arrow-clear">
				<div class="aui-address-cell-hd">
					<img src="themes/img/icon/apy-5.png" alt="">
				</div>
				<div class="aui-address-cell-bd">
					微信支付
					<p>微信安全支付</p>
				</div>
				<div class="aui-address-cell-ft"><input type="checkbox" class="check check-pay goods-check goodsCheck" ></div>
			</a>--%>
   <div id="choice1">
      <div class="aui-flex-col aui-flex-left aui-border-t aui-border-b  aui-padded-10 ">
         <div class="aui-flex-item-8 aui-flex-row aui-flex-left aui-font-size-12">活动评价（1241）</div>
         <div class="aui-flex-item-4 aui-flex-row aui-flex-right aui-font-size-12">
            <a href="javascript:;">
               查看全部<i class="aui-iconfont aui-icon-right"></i>
            </a>
         </div>
      </div>
   </div>
   <div id="choice2">
      <div class="aui-flex-col aui-flex-left aui-border-t aui-border-b  aui-padded-10 ">
         <div class="aui-flex-item-8 aui-flex-row aui-flex-left aui-font-size-12">活动评价（1241）</div>
         <div class="aui-flex-item-4 aui-flex-row aui-flex-right aui-font-size-12">
            <a href="javascript:;">
               查看全部<i class="aui-iconfont aui-icon-right"></i>
            </a>
         </div>
      </div>
   </div>
   <div id="choice3">
      <div class="aui-flex-col aui-flex-left aui-border-t aui-border-b  aui-padded-10 ">
         <div class="aui-flex-item-8 aui-flex-row aui-flex-left aui-font-size-12">活动评价（1241）</div>
         <div class="aui-flex-item-4 aui-flex-row aui-flex-right aui-font-size-12">
            <a href="javascript:;">
               查看全部<i class="aui-iconfont aui-icon-right"></i>
            </a>
         </div>
      </div>
   </div>
</section>
<footer class="aui-bar aui-bar-tab" style="font-size: 0.7rem;">
   <div class="aui-bar-tab-item" tapmode style="width: 60%;">
      <div style="float: right;padding-right: 10%;">
         实付款：
         <font color="red" size="4">￥
            <span id="moneyCount">86</span>
         </font>
      </div>
   </div>

   <div id="open-choices-frame" class="aui-bar-tab-item aui-bg-danger aui-text-white js-open-modal" tapmode
        style="width: 40%;">
      <div>立即付款</div>
   </div>
</footer>

</body>
</html>
