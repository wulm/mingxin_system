<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
   String path = request.getContextPath();
   String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
   <base href="<%=basePath%>">
   <meta name="viewport"
         content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0"/>
   <meta name="format-detection" content="telephone=no,email=no,date=no,address=no">

   <title>周周游</title>


   <link rel="stylesheet" type="text/css" href="<%=basePath%>resources/test/store/themes/css/core.css">
   <link rel="stylesheet" type="text/css" href="<%=basePath%>resources/test/store/themes/css/icon.css">
   <link rel="stylesheet" type="text/css" href="<%=basePath%>resources/test/store/themes/css/home.css">
   <link rel="icon" type="image/x-icon" href="<%=basePath%>jsp/weixin_view/store/favicon.ico">
   <link rel="apple-touch-icon-precomposed" sizes="114x114"
         href="<%=basePath%>jsp/weixin_view/store/iTunesArtwork@2x.png">

   <link rel="stylesheet" type="text/css" href="<%=basePath%>resources/test/my/css/aui-slide.css"/>
   <link rel="stylesheet" type="text/css" href="<%=basePath%>resources/test/my/css/aui.css"/>
   <style type="text/css">
      .aui-content-padded {
         padding: 0.75rem;
         background-color: #ffffff;
         margin-top: 0.75rem;
      }
   </style>
</head>

<body>

<%--<header class="aui-header-fixed">
 <div class="aui-searchbar" id="search">
   <div class="aui-searchbar-input aui-border-radius">
       <i class="aui-iconfont aui-icon-search"></i>
       <input type="search" placeholder="请输入搜索内容" id="search-input">
       <div class="aui-searchbar-clear-btn">
           <i class="aui-iconfont aui-icon-close"></i>
       </div>
   </div>
   <div class="aui-searchbar-btn" tapmode>取消</div>
</div>
</header>--%>

<section class="aui-scroll-contents">
   <div class="aui-content-box">


      <div id="aui-slide3">
         <div class="aui-slide-wrap">
            <div class="aui-slide-node bg-dark">
               <a href="<%=basePath%>zzy/actDetail.htm">
                  <img src="https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1162612338,2238057927&fm=27&gp=0.jpg"/>
               </a>
            </div>
            <div class="aui-slide-node bg-dark">
               <a href="<%=basePath%>zzy/actDetail.htm">
                  <img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1511717943376&di=07c9cef15eb894e8ad03bcdf6ddb6627&imgtype=0&src=http%3A%2F%2Fa1.att.hudong.com%2F35%2F53%2F28300542091864137456530449427.jpg"/>
               </a>
            </div>
            <div class="aui-slide-node bg-dark">
               <a href="<%=basePath%>zzy/actDetail2.htm">
                  <img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1511718082232&di=57360dc14165fe974913e4eb0cf232a5&imgtype=0&src=http%3A%2F%2Fpic.qiantucdn.com%2F58pic%2F18%2F09%2F56%2F49G58PICKCz_1024.jpg"/>
               </a>
            </div>
            <div class="aui-slide-node bg-dark">
               <a href="#">
                  <img src="http://fa1.cnlinfo.net/up/info1/16091910120517781201.jpg"/>
               </a>
            </div>
         </div>
         <div class="aui-slide-page-wrap"><!--分页容器--></div>
      </div>


      <section class="aui-grid-content">
         <div class="aui-grid-row">

            <a href="my-sign.html" class="aui-grid-row-item">
               <i class="aui-icon-large aui-icon-sign"></i>
               <p class="aui-grid-row-label">每日签到</p>
            </a>
            <a href="my-time.html" class="aui-grid-row-item">
               <i class="aui-icon-large aui-icon-time"></i>
               <p class="aui-grid-row-label">限时抢购</p>
            </a>
            <a href="my-membership.html" class="aui-grid-row-item">
               <i class="aui-icon-large aui-icon-vip"></i>
               <p class="aui-grid-row-label">会员专享</p>
            </a>
            <a href="my-purchase.html" class="aui-grid-row-item">
               <i class="aui-icon-large aui-icon-group"></i>
               <p class="aui-grid-row-label">好货拼团</p>
            </a>
            <a href="my-invitation.html" class="aui-grid-row-item">
               <i class="aui-icon-large aui-icon-share"></i>
               <p class="aui-grid-row-label">分享领券</p>
            </a>
         </div>

      </section>
      <%-- <div class="aui-avd-content clearfix" style="hight:100">
         <a href="#" style="hight:100px;">
            <img src="<%=basePath%>resources/test/store/themes/img/pd/cf-1.jpg" alt="">
         </a>
         <a href="#" style="hight:100">
            <img src="<%=basePath%>resources/test/store/themes/img/pd/cf-3.jpg" alt="">
         </a>
      </div> --%>
      <%-- <div class="aui-slide-box aui-slide-box-clear">
         <div class="aui-slide-list">
            <ul class="aui-slide-item-list">
               <li class="aui-slide-item-item">
                  <a href="#" class="v-link">
                     <img class="v-img" src="<%=basePath%>resources/test/store/themes/img/ad/tou-1.jpg">
                  </a>
               </li>
               <li class="aui-slide-item-item">
                  <a href="#" class="v-link">
                     <img class="v-img" src="<%=basePath%>resources/test/store/themes/img/ad/tou-2.jpg">
                  </a>
               </li>
               <li class="aui-slide-item-item">
                  <a href="#" class="v-link">
                     <img class="v-img" src="<%=basePath%>resources/test/store/themes/img/ad/tou-3.jpg">
                  </a>
               </li>
               <li class="aui-slide-item-item">
                  <a href="#" class="v-link">
                     <img class="v-img" src="<%=basePath%>resources/test/store/themes/img/ad/tou-4.jpg">
                  </a>
               </li>
               <li class="aui-slide-item-item">
                  <a href="#" class="v-link">
                     <img class="v-img" src="<%=basePath%>resources/test/store/themes/img/ad/tou-5.jpg">
                  </a>
               </li>
               <li class="aui-slide-item-item">
                  <a href="#" class="v-link">
                     <img class="v-img" src="<%=basePath%>resources/test/store/themes/img/ad/tou-6.jpg">
                  </a>
               </li>
            </ul>
         </div>

      </div> --%>

      <div class="aui-card-list" style="margin-left:5px;margin-right:5px;margin-top:5px;">
         <div align="center">
            <img height="180px;" width="100%;"
                 src="https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1162612338,2238057927&fm=27&gp=0.jpg"/>
            <div align="left">三宝脐橙采摘季！体验采摘乐趣！免费带走2kg正宗脐橙！</div>
         </div>
         <div class="aui-card-list-footer">
            <div><font color="red" size="5">￥30.0</font><font size="2">已拼15人</font></div>
            <div>
               <img style="width:25px;height:25px;border-radius:25px;float:left;"
                    src="http://img3.imgtn.bdimg.com/it/u=989658414,3202898163&fm=27&gp=0.jpg"/>
               <img style="width:25px;height:25px;border-radius:25px;float:left;"
                    src="https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=855993489,1247773910&fm=27&gp=0.jpg"/>

            </div>
            <div class="aui-btn aui-btn-danger">去参团</div>
         </div>
      </div>

      <div class="aui-card-list" style="margin-left:5px;margin-right:5px;margin-top:5px;">
         <div align="center">
            <img height="180px;" width="100%;"
                 src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1511717943376&di=07c9cef15eb894e8ad03bcdf6ddb6627&imgtype=0&src=http%3A%2F%2Fa1.att.hudong.com%2F35%2F53%2F28300542091864137456530449427.jpg"/>
            <div align="left">翠屏湖垂钓一日行，包车辆、午餐！共享鱼乐盛宴！</div>
         </div>
         <div class="aui-card-list-footer">
            <div><font color="red" size="5">￥50.0</font><font size="2">已拼12人</font></div>
            <div style="position:relative;">
               <img style="width:25px;height:25px;border-radius:25px;float:left;"
                    src="http://img3.imgtn.bdimg.com/it/u=989658414,3202898163&fm=27&gp=0.jpg"/>
               <img style="width:25px;height:25px;border-radius:25px;float:left;"
                    src="https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=855993489,1247773910&fm=27&gp=0.jpg"/>
            </div>
            <div class="aui-btn aui-btn-danger">去参团</div>
         </div>
      </div>

      <div class="aui-card-list" style="margin-left:5px;margin-right:5px;margin-top:5px;">
         <div align="center">
            <img height="180px;" width="100%;"
                 src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1511718082232&di=57360dc14165fe974913e4eb0cf232a5&imgtype=0&src=http%3A%2F%2Fpic.qiantucdn.com%2F58pic%2F18%2F09%2F56%2F49G58PICKCz_1024.jpg"/>
            <div align="left">致20年的同窗情谊！致曾亲密如兄弟姐妹的你们！</div>
         </div>
         <div class="aui-card-list-footer">
            <div><font color="red" size="5">￥300.0</font><font size="2">已拼32人</font></div>
            <div style="position:relative;">
               <img style="width:25px;height:25px;border-radius:25px;float:left;"
                    src="http://img3.imgtn.bdimg.com/it/u=989658414,3202898163&fm=27&gp=0.jpg"/>
               <img style="width:25px;height:25px;border-radius:25px;float:left;"
                    src="https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=855993489,1247773910&fm=27&gp=0.jpg"/>
            </div>
            <div class="aui-btn aui-btn-danger">去参团</div>
         </div>
      </div>

      <div class="aui-card-list" style="margin-left:5px;margin-right:5px;margin-top:5px;">
         <div align="center">
            <img height="180px;" width="100%;" src="http://fa1.cnlinfo.net/up/info1/16091910120517781201.jpg"/>
            <div align="left">专业团队，全程团队配合，过关斩将，收货团队光荣！</div>
         </div>
         <div class="aui-card-list-footer">
            <div><font color="red" size="5">￥80.0</font><font size="2">已拼12人</font></div>
            <div style="position:relative;">
               <img style="width:25px;height:25px;border-radius:25px;float:left;"
                    src="http://img3.imgtn.bdimg.com/it/u=989658414,3202898163&fm=27&gp=0.jpg"/>
               <img style="width:25px;height:25px;border-radius:25px;float:left;"
                    src="https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=855993489,1247773910&fm=27&gp=0.jpg"/>
            </div>
            <div class="aui-btn aui-btn-danger">去参团</div>
         </div>
      </div>
      <div style="height: 30px;" align="center">没有更多内容了..</div>
   </div>
</section>


<footer class="aui-bar aui-bar-tab" id="footer">
   <div id="zzy_index" class="aui-bar-tab-item aui-active" tapmode>
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
   <div id="zzy_me" class="aui-bar-tab-item" tapmode>
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
   //   $("#zzy_index").on("click",function(){
   //      //alert("成功");
   //      window.location.href='zzy/index.htm';
   //   });
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
   $("#zzy_me").on("click", function () {
      //alert("成功");
      window.location.href = '<%=basePath%>zzy/me.htm';
   });

   var slide3 = new auiSlide({
      container: document.getElementById("aui-slide3"),
      // "width":300,
      "height": 150,
      "speed": 800,
      "autoPlay": 10000, //自动播放
      "loop": true,
      "pageShow": true,
      "pageStyle": 'dot',
      'dotPosition': 'center'
   })
   console.log(slide3.pageCount());

</script>
</body>
</html>
