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

</head>
<body>
<%--拼团用户列表--%>
<section class="aui-content">

   <%--剩余时间倒计时div--%>
   <div id="leftTime">
      <div class="aui-flex-col aui-padded-t-10 aui-padded-b-10  aui-flex-center ">
         <div class="aui-flex-col" style="background-color:#dfdfdf;border-radius: 0.3rem;">
            <span class=" aui-margin-l-15 aui-margin-r-15">22:34:06.6</span>
         </div>
      </div>
   </div>
   <%--邀请部分文字及按钮--%>
   <div id="invitePart">
      <div class="aui-padded-t-5 aui-padded-b-10 ">
         <div>
            <div class=" aui-text-center aui-padded-b-10 aui-font-size-20">
               <strong>还差<font color="red">10</font>人，点击右上角发送给朋友</strong>
            </div>
         </div>
         <div class="aui-margin-l-15 aui-margin-r-15">
            <div class="aui-btn aui-btn-block aui-btn-danger ">邀请好友拼团</div>
         </div>
      </div>
   </div>
   <%--已拼团用户列表--%>
   <div id="membersList">

      <div class="aui-flex-col aui-border aui-padded-10 aui-flex-center ">
         <div class="aui-flex-col aui-padded-t-10 aui-padded-b-10">
            <div class="aui-flex-row aui-padded-l-5">
               <div style="position: relative;">
                  <img class="aui-img-round" style="width: 1.7rem;height: 1.7rem;border:1px solid #C4C4C4;"
                       src="<%=basePath%>resources/test/my/image/liulangnan.png">
                  <div style="position:absolute;left:0;top:-2px;
                  width: 0.9rem;height: 0.5rem;
                  background-color: #FFAB33;font-size: 1px;
                  border-radius: 0.3rem;text-align: center;">
                     拼主
                  </div>
               </div>
            </div>
            <div class="aui-flex-row aui-padded-l-5">
               <img class="aui-img-round" style="width: 1.6rem;height: 1.6rem;border:1px solid #C4C4C4;"
                    src="<%=basePath%>resources/test/my/image/liulangnan.png">
            </div>
            <div class="aui-flex-row aui-padded-l-5">
               <img class="aui-img-round" style="width: 1.6rem;height: 1.6rem;border:1px solid #C4C4C4;"
                    src="<%=basePath%>resources/test/my/image/liulangnan.png">
            </div>
            <div class="aui-flex-row aui-padded-l-5">
               <img class="aui-img-round" style="width: 1.6rem;height: 1.6rem;border:1px solid #C4C4C4;"
                    src="<%=basePath%>resources/test/my/image/liulangnan.png">
            </div>
            <div class="aui-flex-row aui-padded-l-5">
               <img class="aui-img-round" style="width: 1.6rem;height: 1.6rem;border:1px solid #C4C4C4;"
                    src="<%=basePath%>resources/test/my/image/liulangnan.png">
            </div>
            <div class="aui-flex-row aui-padded-l-5">
               <img class="aui-img-round" style="width: 1.6rem;height: 1.6rem;border:1px solid #C4C4C4;"
                    src="<%=basePath%>resources/test/my/image/liulangnan.png">
            </div>
            <div class="aui-flex-row aui-padded-l-5">
               <img class="aui-img-round" style="width: 1.6rem;height: 1.6rem;border:1px solid #C4C4C4;"
                    src="<%=basePath%>resources/test/my/image/my/no-user.jpg">
            </div>
            <div class="aui-flex-row aui-padded-l-5">
               <img class="aui-img-round" style="width: 1.6rem;height: 1.6rem;border:1px solid #C4C4C4;"
                    src="<%=basePath%>resources/test/my/image/my/no-user.jpg">
            </div>
            <div class="aui-flex-row aui-padded-l-5">
               <img class="aui-img-round" style="width: 1.6rem;height: 1.6rem;border:1px solid #C4C4C4;"
                    src="<%=basePath%>resources/test/my/image/my/no-user.jpg">
            </div>
            <div class="aui-flex-row aui-padded-l-5">
               <img class="aui-img-round" style="width: 1.6rem;height: 1.6rem;border:1px solid #C4C4C4;"
                    src="<%=basePath%>resources/test/my/image/my/no-user.jpg">
            </div>
            <div class="aui-flex-row aui-padded-l-5">
               <img class="aui-img-round" style="width: 1.6rem;height: 1.6rem;border:1px solid #C4C4C4;"
                    src="<%=basePath%>resources/test/my/image/my/no-user.jpg">
            </div>
            <div class="aui-flex-row aui-padded-l-5">
               <img class="aui-img-round" style="width: 1.6rem;height: 1.6rem;border:1px solid #C4C4C4;"
                    src="<%=basePath%>resources/test/my/image/my/no-user.jpg">
            </div>
            <div class="aui-flex-row aui-padded-l-5">
               <img class="aui-img-round" style="width: 1.6rem;height: 1.6rem;border:1px solid #C4C4C4;"
                    src="<%=basePath%>resources/test/my/image/my/no-user.jpg">
            </div>
            <div class="aui-flex-row aui-padded-l-5">
               <img class="aui-img-round" style="width: 1.6rem;height: 1.6rem;border:1px solid #C4C4C4;"
                    src="<%=basePath%>resources/test/my/image/my/no-user.jpg">
            </div>
            <div class="aui-flex-row aui-padded-l-5">
               <img class="aui-img-round" style="width: 1.6rem;height: 1.6rem;border:1px solid #C4C4C4;"
                    src="<%=basePath%>resources/test/my/image/my/no-user.jpg">
            </div>
            <div class="aui-flex-row aui-padded-l-5">
               <img class="aui-img-round" style="width: 1.6rem;height: 1.6rem;border:1px solid #C4C4C4;"
                    src="<%=basePath%>resources/test/my/image/my/no-user.jpg">
            </div>
         </div>
      </div>
   </div>
   <%--活动详情--%>
   <div id="actOrderDetail">
      <div class="aui-flex-col   aui-margin-5 aui-font-size-12">
         <strong>总人数满30人活动开始（当前<font color="red">27</font>/30人）</strong>
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
            <div class="aui-font-size-12 aui-ellipsis-1">
               <font color="red">￥89.00/人</font>
            </div>
         </div>

      </div>

   </div>
   <%--拼单须知--%>
   <div id="groupUserRulers">
      <div class="aui-flex-col aui-flex-left aui-border-t aui-border-b  aui-padded-10">
         <div class="aui-flex-item-4 aui-flex-row aui-flex-middle aui-flex-left aui-font-size-12">
            <strong>活动拼团须知</strong>
         </div>
         <div class="aui-flex-item-8 aui-flex-row aui-flex-middle aui-flex-right aui-font-size-12 aui-ellipsis-1">
            ·活动开始条件 ·团不满退款 ·说明
         </div>
      </div>
   </div>
   <%--操作栏--%>
   <div id="operateBtns">
      <div class="aui-margin-10 aui-border-b aui-padded-10">
         <div class="aui-row">
            <div class="aui-col-xs-3 aui-text-center">
               <div class="aui-font-size-12">
                  <i class="aui-iconfont aui-icon-home"></i>
               </div>
               <div class="aui-font-size-12">首页</div>
            </div>
            <div class="aui-col-xs-3 aui-text-center">
               <div class="aui-font-size-12">
                  <i class="aui-iconfont aui-icon-gear"></i>
               </div>
               <div class="aui-font-size-12">设置</div>
            </div>
            <div class="aui-col-xs-3 aui-text-center">
               <div class="aui-font-size-12">
                  <i class="aui-iconfont aui-icon-map"></i>
               </div>
               <div class="aui-font-size-12">地图</div>
            </div>
            <div class="aui-col-xs-3 aui-text-center">
               <div class="aui-font-size-12">
                  <i class="aui-iconfont aui-icon-calendar"></i>
               </div>
               <div class="aui-font-size-12">日历</div>
            </div>
         </div>
      </div>
   </div>
   <%--为你推荐--%>
   <div id="recommendForYou" class="aui-content">
      <div style="text-align: center;" class="aui-font-size-14">
         <span class="aui-iconfont aui-icon-like" style="color: red;"></span>
         为你推荐
      </div>

      <div class="aui-flex-col aui-flex-left ">

         <div class="aui-flex-item-6 aui-flex-row aui-flex-middle aui-padded-5 aui-border">
            <img src="<%=basePath%>resources/test/my/image/liulangnan.png">
            <p class="aui-ellipsis-2 aui-font-size-12">高岗2天1夜风车节，2万风车一起转动的天堂。高岗2天1夜风车节，2万风车一起转动的天堂。</p>
            <div class="aui-flex-col aui-flex-bottom" style="height: 1rem;">
               <div class="aui-flex-item-6 ">
                  <p class="aui-text-danger aui-font-size-16 aui-flex-row aui-flex-left">￥68.7</p>
               </div>
               <div class="aui-flex-item-6 aui-font-size-12 aui-flex-row aui-flex-right">
                  已参加79人
               </div>
            </div>
         </div>
         <div class="aui-flex-item-6 aui-flex-row aui-flex-middle aui-padded-5 aui-border">
            <img src="<%=basePath%>resources/test/my/image/liulangnan.png">
            <p class="aui-ellipsis-2 aui-font-size-12">高岗2天1夜风车节，2万风车一起转动的天堂。高岗2天1夜风车节，2万风车一起转动的天堂。</p>
            <div class="aui-flex-col aui-flex-bottom" style="height: 1rem;">
               <div class="aui-flex-item-6 ">
                  <p class="aui-text-danger aui-font-size-16 aui-flex-row aui-flex-left">￥68.7</p>
               </div>
               <div class="aui-flex-item-6 aui-font-size-12 aui-flex-row aui-flex-right">
                  已参加79人
               </div>
            </div>
         </div>
         <div class="aui-flex-item-6 aui-flex-row aui-flex-middle aui-padded-5 aui-border">
            <img src="<%=basePath%>resources/test/my/image/liulangnan.png">
            <p class="aui-ellipsis-2 aui-font-size-12">高岗2天1夜风车节，2万风车一起转动的天堂。高岗2天1夜风车节，2万风车一起转动的天堂。</p>
            <div class="aui-flex-col aui-flex-bottom" style="height: 1rem;">
               <div class="aui-flex-item-6 ">
                  <p class="aui-text-danger aui-font-size-16 aui-flex-row aui-flex-left">￥68.7</p>
               </div>
               <div class="aui-flex-item-6 aui-font-size-12 aui-flex-row aui-flex-right">
                  已参加79人
               </div>
            </div>
         </div>
         <div class="aui-flex-item-6 aui-flex-row aui-flex-middle aui-padded-5 aui-border">
            <img src="<%=basePath%>resources/test/my/image/liulangnan.png">
            <p class="aui-ellipsis-2 aui-font-size-12">高岗2天1夜风车节，2万风车一起转动的天堂。高岗2天1夜风车节，2万风车一起转动的天堂。</p>
            <div class="aui-flex-col aui-flex-bottom" style="height: 1rem;">
               <div class="aui-flex-item-6 ">
                  <p class="aui-text-danger aui-font-size-16 aui-flex-row aui-flex-left">￥68.7</p>
               </div>
               <div class="aui-flex-item-6 aui-font-size-12 aui-flex-row aui-flex-right">
                  已参加79人
               </div>
            </div>
         </div>
         <div class="aui-flex-item-6 aui-flex-row aui-flex-middle aui-padded-5 aui-border">
            <img src="<%=basePath%>resources/test/my/image/liulangnan.png">
            <p class="aui-ellipsis-2 aui-font-size-12">高岗2天1夜风车节，2万风车一起转动的天堂。高岗2天1夜风车节，2万风车一起转动的天堂。</p>
            <div class="aui-flex-col aui-flex-bottom" style="height: 1rem;">
               <div class="aui-flex-item-6 ">
                  <p class="aui-text-danger aui-font-size-16 aui-flex-row aui-flex-left">￥68.7</p>
               </div>
               <div class="aui-flex-item-6 aui-font-size-12 aui-flex-row aui-flex-right">
                  已参加79人
               </div>
            </div>
         </div>
         <div class="aui-flex-item-6 aui-flex-row aui-flex-middle aui-padded-5 aui-border">
            <img src="<%=basePath%>resources/test/my/image/liulangnan.png">
            <p class="aui-ellipsis-2 aui-font-size-12">高岗2天1夜风车节，2万风车一起转动的天堂。高岗2天1夜风车节，2万风车一起转动的天堂。</p>
            <div class="aui-flex-col aui-flex-bottom" style="height: 1rem;">
               <div class="aui-flex-item-6 ">
                  <p class="aui-text-danger aui-font-size-16 aui-flex-row aui-flex-left">￥68.7</p>
               </div>
               <div class="aui-flex-item-6 aui-font-size-12 aui-flex-row aui-flex-right">
                  已参加79人
               </div>
            </div>
         </div>
         <div class="aui-flex-item-6 aui-flex-row aui-flex-middle aui-padded-5 aui-border">
            <img src="<%=basePath%>resources/test/my/image/liulangnan.png">
            <p class="aui-ellipsis-2 aui-font-size-12">高岗2天1夜风车节，2万风车一起转动的天堂。高岗2天1夜风车节，2万风车一起转动的天堂。</p>
            <div class="aui-flex-col aui-flex-bottom" style="height: 1rem;">
               <div class="aui-flex-item-6 ">
                  <p class="aui-text-danger aui-font-size-16 aui-flex-row aui-flex-left">￥68.7</p>
               </div>
               <div class="aui-flex-item-6 aui-font-size-12 aui-flex-row aui-flex-right">
                  已参加79人
               </div>
            </div>
         </div>
         <div class="aui-flex-item-6 aui-flex-row aui-flex-middle aui-padded-5 aui-border">
            <img src="<%=basePath%>resources/test/my/image/liulangnan.png">
            <p class="aui-ellipsis-2 aui-font-size-12">高岗2天1夜风车节，2万风车一起转动的天堂。高岗2天1夜风车节，2万风车一起转动的天堂。</p>
            <div class="aui-flex-col aui-flex-bottom" style="height: 1rem;">
               <div class="aui-flex-item-6 ">
                  <p class="aui-text-danger aui-font-size-16 aui-flex-row aui-flex-left">￥68.7</p>
               </div>
               <div class="aui-flex-item-6 aui-font-size-12 aui-flex-row aui-flex-right">
                  已参加79人
               </div>
            </div>
         </div>
         <div class="aui-flex-item-6 aui-flex-row aui-flex-middle aui-padded-5 aui-border">
            <img src="<%=basePath%>resources/test/my/image/liulangnan.png">
            <p class="aui-ellipsis-2 aui-font-size-12">高岗2天1夜风车节，2万风车一起转动的天堂。高岗2天1夜风车节，2万风车一起转动的天堂。</p>
            <div class="aui-flex-col aui-flex-bottom" style="height: 1rem;">
               <div class="aui-flex-item-6 ">
                  <p class="aui-text-danger aui-font-size-16 aui-flex-row aui-flex-left">￥68.7</p>
               </div>
               <div class="aui-flex-item-6 aui-font-size-12 aui-flex-row aui-flex-right">
                  已参加79人
               </div>
            </div>
         </div>
         <div class="aui-flex-item-6 aui-flex-row aui-flex-middle aui-padded-5 aui-border">
            <img src="<%=basePath%>resources/test/my/image/liulangnan.png">
            <p class="aui-ellipsis-2 aui-font-size-12">高岗2天1夜风车节，2万风车一起转动的天堂。高岗2天1夜风车节，2万风车一起转动的天堂。</p>
            <div class="aui-flex-col aui-flex-bottom" style="height: 1rem;">
               <div class="aui-flex-item-6 ">
                  <p class="aui-text-danger aui-font-size-16 aui-flex-row aui-flex-left">￥68.7</p>
               </div>
               <div class="aui-flex-item-6 aui-font-size-12 aui-flex-row aui-flex-right">
                  已参加79人
               </div>
            </div>
         </div>
         <div class="aui-flex-item-6 aui-flex-row aui-flex-middle aui-padded-5 aui-border">
            <img src="<%=basePath%>resources/test/my/image/liulangnan.png">
            <p class="aui-ellipsis-2 aui-font-size-12">高岗2天1夜风车节，2万风车一起转动的天堂。高岗2天1夜风车节，2万风车一起转动的天堂。</p>
            <div class="aui-flex-col aui-flex-bottom" style="height: 1rem;">
               <div class="aui-flex-item-6 ">
                  <p class="aui-text-danger aui-font-size-16 aui-flex-row aui-flex-left">￥68.7</p>
               </div>
               <div class="aui-flex-item-6 aui-font-size-12 aui-flex-row aui-flex-right">
                  已参加79人
               </div>
            </div>
         </div>
         <div class="aui-flex-item-6 aui-flex-row aui-flex-middle aui-padded-5 aui-border">
            <img src="<%=basePath%>resources/test/my/image/liulangnan.png">
            <p class="aui-ellipsis-2 aui-font-size-12">高岗2天1夜风车节，2万风车一起转动的天堂。高岗2天1夜风车节，2万风车一起转动的天堂。</p>
            <div class="aui-flex-col aui-flex-bottom" style="height: 1rem;">
               <div class="aui-flex-item-6 ">
                  <p class="aui-text-danger aui-font-size-16 aui-flex-row aui-flex-left">￥68.7</p>
               </div>
               <div class="aui-flex-item-6 aui-font-size-12 aui-flex-row aui-flex-right">
                  已参加79人
               </div>
            </div>
         </div>
         <div class="aui-flex-item-6 aui-flex-row aui-flex-middle aui-padded-5 aui-border">
            <img src="<%=basePath%>resources/test/my/image/liulangnan.png">
            <p class="aui-ellipsis-2 aui-font-size-12">高岗2天1夜风车节，2万风车一起转动的天堂。高岗2天1夜风车节，2万风车一起转动的天堂。</p>
            <div class="aui-flex-col aui-flex-bottom" style="height: 1rem;">
               <div class="aui-flex-item-6 ">
                  <p class="aui-text-danger aui-font-size-16 aui-flex-row aui-flex-left">￥68.7</p>
               </div>
               <div class="aui-flex-item-6 aui-font-size-12 aui-flex-row aui-flex-right">
                  已参加79人
               </div>
            </div>
         </div>

      </div>

      <div style="text-align: center;padding: 1rem 0;font-size: 0.7rem;">
         ----------------------到达底部----------------------
      </div>
   </div>


</section>
</body>

<script src="<%=basePath%>resources/test/my/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>resources/test/my/js/aui-toast.js"></script>

</html>
