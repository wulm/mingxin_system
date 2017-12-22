<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0"/>
    <meta name="format-detection" content="telephone=no,email=no,date=no,address=no">
    <title>周周游</title>
    
    <link rel="stylesheet" href="<%=basePath%>resources/test/store/themes/css/core.css">
	<link rel="stylesheet" href="<%=basePath%>resources/test/store/themes/css/icon.css">
	<link rel="stylesheet" href="<%=basePath%>resources/test/store/themes/css/home.css">
    
	<link rel="stylesheet" type="text/css" href="<%=basePath%>resources/test/my/css/aui.css" />
     <style type="text/css">
        .aui-list-item.wechat-top {
            background-color: #f3f3f7;
        }
        .aui-list .wechat-avatar {
            width:3rem;
        }
        .wechat-avatar .aui-row-padded {
            background-color: #dddee0;
            padding: 0.1rem;
            border-radius: 0.2rem;
            margin-left: -0.05rem;
            margin-right: -0.05rem;
        }
        .wechat-avatar .aui-row-padded [class*=aui-col-xs-] {
            padding: 0.05rem;
        }
        .wechat-avatar,
        .wechat-avatar > img {
            border-radius:0.2rem;
        }
    </style>
  </head>
  
  <body>
  	<div class="aui-content aui-margin-b-15">
        <ul class="aui-list aui-media-list">
           <!--  <li class="aui-list-item wechat-top">
                <div class="aui-media-list-item-inner">
                    <div class="aui-list-item-label-icon">
                        <i class="aui-iconfont aui-icon-mobile"></i>
                    </div>
                    <div class="aui-list-item-inner">
                        Mac 微信已登录
                    </div>
                </div>
            </li> -->
            <li class="aui-list-item aui-list-item-middle wechat-top">
                <div class="aui-media-list-item-inner">
                    <div class="aui-list-item-media wechat-avatar">
                        <div class="aui-badge">2</div>
                        <div class="aui-row-padded">
                            <div class="aui-col-xs-4">
                                <img src="<%=basePath%>resources/test/aui/image/demo1.png" />
                            </div>
                            <div class="aui-col-xs-4">
                                <img src="<%=basePath%>resources/test/aui/image/demo2.png" />
                            </div>
                            <div class="aui-col-xs-4">
                                <img src="<%=basePath%>resources/test/aui/image/demo3.png" />
                            </div>
                            <div class="aui-col-xs-4">
                                <img src="<%=basePath%>resources/test/aui/image/demo4.png" />
                            </div>
                            <div class="aui-col-xs-4">
                                <img src="<%=basePath%>resources/test/aui/image/demo5.png" />
                            </div>
                            <div class="aui-col-xs-4">
                                <img src="<%=basePath%>resources/test/aui/image/demo6.png" />
                            </div>
                            <div class="aui-col-xs-4">
                                <img src="<%=basePath%>resources/test/aui/image/demo1.png" />
                            </div>
                            <div class="aui-col-xs-4">
                                <img src="<%=basePath%>resources/test/aui/image/demo3.png" />
                            </div>
                            <div class="aui-col-xs-4">
                                <img src="<%=basePath%>resources/test/aui/image/demo5.png" />
                            </div>
                        </div>
                    </div>
                    <div class="aui-list-item-inner">
                        <div class="aui-list-item-text">
                            <div class="aui-list-item-title">前言教育</div>
                            <div class="aui-list-item-right">08:00</div>
                        </div>
                        <div class="aui-list-item-text aui-font-size-12">
                            	请问有什么可以帮助你的？
                        </div>
                    </div>
                </div>
            </li>
            <li class="aui-list-item aui-list-item-middle wechat-top">
                <div class="aui-media-list-item-inner">
                    <div class="aui-list-item-media wechat-avatar">
                        <div class="aui-row-padded">
                            <div class="aui-col-xs-6">
                                <img src="<%=basePath%>resources/test/aui/image/demo2.png" />
                            </div>
                            <div class="aui-col-xs-6">
                                <img src="<%=basePath%>resources/test/aui/image/demo3.png" />
                            </div>
                            <div class="aui-col-xs-6">
                                <img src="<%=basePath%>resources/test/aui/image/demo1.png" />
                            </div>
                            <div class="aui-col-xs-6">
                                <img src="<%=basePath%>resources/test/aui/image/demo5.png" />
                            </div>
                        </div>

                    </div>
                    <div class="aui-list-item-inner">
                        <div class="aui-list-item-text">
                            <div class="aui-list-item-title">鸣心文化有限公司</div>
                            <div class="aui-list-item-right">08:00</div>
                        </div>
                        <div class="aui-list-item-text aui-font-size-12">
                            	请填写完整的个人信息，活动需要。
                        </div>
                    </div>
                </div>
            </li>
            <li class="aui-list-item aui-list-item-middle">
                <div class="aui-media-list-item-inner">
                    <div class="aui-list-item-media wechat-avatar">
                        <div class="aui-badge">9</div>
                        <img src="<%=basePath%>resources/test/aui/image/demo5.png" />
                    </div>
                    <div class="aui-list-item-inner">
                        <div class="aui-list-item-text">
                            <div class="aui-list-item-title">高岗风之谷</div>
                            <div class="aui-list-item-right">星期一</div>
                        </div>
                        <div class="aui-list-item-text aui-font-size-12">
                            	这次活动的项目有风车通道、风筝制作。
                        </div>
                    </div>
                </div>
            </li>
            <li class="aui-list-item aui-list-item-middle">
                <div class="aui-media-list-item-inner">
                    <div class="aui-list-item-media wechat-avatar">
                        <img src="<%=basePath%>resources/test/aui/image/demo1.png" />
                    </div>
                    <div class="aui-list-item-inner">
                        <div class="aui-list-item-text">
                            <div class="aui-list-item-title">临水宫文化</div>
                            <div class="aui-list-item-right">1天前</div>
                        </div>
                        <div class="aui-list-item-text aui-font-size-12">
                           	 费用100元/人，含香烛、午餐。
                        </div>
                    </div>
                </div>
            </li>
            <li class="aui-list-item aui-list-item-middle">
                <div class="aui-media-list-item-inner">
                    <div class="aui-list-item-media wechat-avatar">
                        <div class="aui-dot"></div>
                        <img src="<%=basePath%>resources/test/aui/image/demo4.png" />
                    </div>
                    <div class="aui-list-item-inner">
                        <div class="aui-list-item-text">
                            <div class="aui-list-item-title">天天农家乐</div>
                            <div class="aui-list-item-right">星期一</div>
                        </div>
                        <div class="aui-list-item-text aui-font-size-12">
                           	 脐橙采摘活动时间是2017年11月28日，费用人均66元。
                        </div>
                    </div>
                </div>
            </li>
        </ul>
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
      <div id="zzy_community" class="aui-bar-tab-item" tapmode>
         <div class="aui-badge">99</div>
         <i class="aui-iconfont aui-icon-star"></i>
         <div class="aui-bar-tab-label">社区</div>
      </div>
      <div id="zzy_chat" class="aui-bar-tab-item aui-active" tapmode>
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
  </body>
  <script type="text/javascript" src="<%=basePath%>resources/test/store/themes/js/jquery.min.js"></script>
  <script type="text/javascript" src="<%=basePath%>resources/test/aui/script/api.js"></script>
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
//     $("#zzy_chat").on("click", function () {
//        //alert("成功");
//        window.location.href = 'zzy/chat.htm';
//     });
     $("#zzy_me").on("click", function () {
        //alert("成功");
        window.location.href = '<%=basePath%>zzy/me.htm';
     });

  </script>
</html>
