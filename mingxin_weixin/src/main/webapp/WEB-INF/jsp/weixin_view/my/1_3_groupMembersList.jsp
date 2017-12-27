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
   <style type="text/css">
      /*弹出选项框*/
      body.modal-open {
         /*解决滚动穿透问题*/
         position: fixed;
         width: 100%;
      }

      .modal {
         background: rgba(0, 0, 0, 0.9);
         position: fixed;
         top: 0;
         right: 0;
         bottom: 0;
         left: 0;
         z-index: 1000;
      }

      .modal-users-list-frame {
         position: fixed;
         border-radius: 0.3rem;
         /*padding: 0.2rem; !*内边距*!*/
         left: 15%;
         right: 15%;
         top: 20%;
         bottom: 20%;
         height: 60%;
         background: #FFFFFF;
         z-index: 1012;
      }

      /*弹出选项框*/
   </style>
</head>
<body>
<%--拼团用户列表主内容--%>
<section class="aui-content">
   <%--剩余时间倒计时div--%>
   <div id="group-leftTime">
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
            <div id="btn-invite-friends" class="aui-btn aui-btn-block aui-btn-danger ">邀请好友拼团</div>
         </div>
      </div>
   </div>
   <%--已拼团用户列表--%>
   <div id="membersList">
      <div class="aui-flex-col aui-border aui-padded-10 aui-flex-center ">
         <div id="users-list-now" class="aui-flex-col aui-padded-t-10 aui-padded-b-10">
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

<%--弹出分享蒙版--%>
<div id="group-share-detail" style="display: none;">
   <div id="share-modal" class="modal">
      <div style="color: white;text-align: center;">
         <div>右上角图片闪烁</div>
         <div>中间文字内容</div>
         <font size="5">fjskldgjlk</font>
      </div>
   </div>
   <%--弹出窗遮罩层--%>
   <%--
       <div class="modal-pop-frame">
           &lt;%&ndash;顶部&ndash;%&gt;
           <div class="aui-flex-col aui-border-b" style="height:15%;">
               <div class=" aui-flex-row aui-flex-center aui-flex-middle aui-flex-item-12 ">
                   进行中的拼团
               </div>
               <div id="btn-share-close" style="position:absolute;top:0;right: 0;" class="aui-padded-5">
                   <span class="aui-iconfont aui-icon-close"></span>
               </div>
           </div>

           &lt;%&ndash;分割条&ndash;%&gt;
           &lt;%&ndash;中部&ndash;%&gt;
           <div style="height: 85%;overflow-y:auto;">
               <div id="nowActTime3" class=" aui-padded-t-5 aui-padded-b-5">
                   <div class="aui-flex-col aui-flex-left aui-border-b">
                       <div class="aui-flex-item-2 aui-flex-row aui-flex-middle aui-padded-10">
                           <img class="aui-img-round" src="<%=basePath%>resources/test/my/image/liulangnan.png">
                       </div>
                       <div class="aui-flex-item-3 aui-flex-row aui-flex-middle">
                           <div class="aui-font-size-12 aui-ellipsis-1">
                               小明小明小明小明小明小明
                           </div>
                       </div>
                       <div class="aui-flex-item-4 aui-flex-row aui-flex-middle&lt;%&ndash;垂直居中&ndash;%&gt; aui-flex-right&lt;%&ndash;右对齐&ndash;%&gt;">
                           <div class="aui-font-size-10 aui-ellipsis-1">
                               还差<font color="red">15人</font>拼成
                           </div>
                           <div class="aui-font-size-8 aui-ellipsis-1">剩余21:11:11.03</div>
                       </div>
                       <div class="aui-flex-item-3 aui-flex-row aui-flex-middle aui-padded-5">
                           <div class="aui-btn aui-btn-danger  aui-font-size-12">参团</div>
                       </div>
                   </div>
                   <div class="aui-flex-col aui-flex-left aui-border-b">
                       <div class="aui-flex-item-2 aui-flex-row aui-flex-middle aui-padded-10">
                           <img class="aui-img-round" src="<%=basePath%>resources/test/my/image/liulangnan.png">
                       </div>
                       <div class="aui-flex-item-3 aui-flex-row aui-flex-middle">
                           <div class="aui-font-size-12 aui-ellipsis-1">
                               小明小明小明小明小明小明
                           </div>
                       </div>
                       <div class="aui-flex-item-4 aui-flex-row aui-flex-middle&lt;%&ndash;垂直居中&ndash;%&gt; aui-flex-right&lt;%&ndash;右对齐&ndash;%&gt;">
                           <div class="aui-font-size-10 aui-ellipsis-1">
                               还差<font color="red">15人</font>拼成
                           </div>
                           <div class="aui-font-size-8 aui-ellipsis-1">剩余21:11:11.03</div>
                       </div>
                       <div class="aui-flex-item-3 aui-flex-row aui-flex-middle aui-padded-5">
                           <div class="aui-btn aui-btn-danger  aui-font-size-12">参团</div>
                       </div>
                   </div>

               </div>
           </div>
       </div>
   --%>

</div>

<%--弹出拼团用户列表蒙版--%>
<div id="group-users-detail" style="display: none;">

   <div id="users-modal" class="modal"></div>
   <%--弹出窗遮罩层--%>
   <div class="modal-users-list-frame">
      <%--顶部--%>
      <div class="aui-flex-col aui-border-b" style="height:15%;">
         <div class=" aui-flex-row aui-flex-center aui-flex-middle aui-flex-item-12 ">
            进行中的拼团
         </div>
         <div id="btn-users-close" style="position:absolute;top:0;right: 0;" class="aui-padded-5">
            <span class="aui-iconfont aui-icon-close"></span>
         </div>
      </div>

      <%--分割条--%>
      <%--中部--%>
      <div style="height: 85%;overflow-y:auto;">
         <div id="nowActTime" class=" aui-padded-t-5 aui-padded-b-5">
            <div class="aui-flex-col aui-flex-left aui-border-b">
               <div class="aui-flex-item-2 aui-flex-row aui-flex-middle aui-padded-10">
                  <img class="aui-img-round" src="<%=basePath%>resources/test/my/image/liulangnan.png">
               </div>
               <div class="aui-flex-item-3 aui-flex-row aui-flex-middle">
                  <div class="aui-font-size-12 aui-ellipsis-1">
                     小明小明小明小明小明小明
                  </div>
               </div>
               <div class="aui-flex-item-4 aui-flex-row aui-flex-middle<%--垂直居中--%> aui-flex-right<%--右对齐--%>">
                  <div class="aui-font-size-10 aui-ellipsis-1">
                     还差<font color="red">15人</font>拼成
                  </div>
                  <div class="aui-font-size-8 aui-ellipsis-1">剩余21:11:11.03</div>
               </div>
               <div class="aui-flex-item-3 aui-flex-row aui-flex-middle aui-padded-5">
                  <div class="aui-btn aui-btn-danger  aui-font-size-12">参团</div>
               </div>
            </div>
            <div class="aui-flex-col aui-flex-left aui-border-b">
               <div class="aui-flex-item-2 aui-flex-row aui-flex-middle aui-padded-10">
                  <img class="aui-img-round" src="<%=basePath%>resources/test/my/image/liulangnan.png">
               </div>
               <div class="aui-flex-item-3 aui-flex-row aui-flex-middle">
                  <div class="aui-font-size-12 aui-ellipsis-1">
                     小明小明小明小明小明小明
                  </div>
               </div>
               <div class="aui-flex-item-4 aui-flex-row aui-flex-middle<%--垂直居中--%> aui-flex-right<%--右对齐--%>">
                  <div class="aui-font-size-10 aui-ellipsis-1">
                     还差<font color="red">15人</font>拼成
                  </div>
                  <div class="aui-font-size-8 aui-ellipsis-1">剩余21:11:11.03</div>
               </div>
               <div class="aui-flex-item-3 aui-flex-row aui-flex-middle aui-padded-5">
                  <div class="aui-btn aui-btn-danger  aui-font-size-12">参团</div>
               </div>
            </div>

         </div>
      </div>
   </div>
</div>
</body>

<script src="<%=basePath%>resources/test/my/js/jquery.min.js"></script>
<script src="<%=basePath%>resources/test/my/js/popGroupChoices.js"></script>
<%--弹出选项js--%>
<script type="text/javascript">
   $(function () {
      function openModal(type) {/*pop-Share group-users-detail*/
         /*1为弹出邀请分享遮罩，2为弹出用户拼团列表*/
         if (type != 1 && type != 2) {

            return;
         }
         if (type == 1) {
            document.getElementById('share-modal').style.display = 'block';
            document.getElementById('group-share-detail').style.display = 'block';
         }
         if (type == 2) {
            document.getElementById('users-modal').style.display = 'block';
            document.getElementById('group-users-detail').style.display = 'block';
         }
         ModalHelper.afterOpen();
      }

      /*关闭遮罩层*/
      function closeModal(type) {
         if (type != 1 && type != 2) {
            return;
         }
         ModalHelper.beforeClose();
         if (type == 1) {
            document.getElementById('group-share-detail').style.display = 'none';
            document.getElementById('share-modal').style.display = 'none';
         }
         if (type == 2) {
            document.getElementById('group-users-detail').style.display = 'none';
            document.getElementById('users-modal').style.display = 'none';
         }
      }

      /*弹出和关闭邀请分享遮罩*/
      $('#btn-invite-friends').click(function () {
         openModal(1);
      });
      $('#share-modal,#btn-share-close').click(function () {
         closeModal(1);
      });
      /*弹出和关闭邀请分享遮罩*/

      /*弹出和关闭用户拼团列表*/
      $('#users-list-now').click(function () {
         openModal(2);
      });
      $('#users-modal,#btn-users-close').click(function () {
         closeModal(2);
      });
      /*弹出和关闭用户拼团列表*/
   });
</script>
</html>
