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
    
    <link rel="stylesheet" type="text/css" href="<%=basePath%>resources/test/aui/css/aui.css" />
    <style type="text/css">
        .header {
            padding: 2.5rem 0.5rem 2rem 0.5rem;
        }
    </style>
    
	
  </head>
  
  <body>
    <header class="aui-bar aui-bar-nav aui-text-left header" id="header">
        <h1>
            <a class="aui-btn aui-pull-right" tapmode onclick="openClub()">
                <i class="aui-iconfont aui-icon-question"></i>
            </a>
            AUI 2.1
        </h1>
    </header>
     <div class="aui-content">
        <ul class="aui-list aui-list-in aui-list-noborder">
            <li class="aui-list-item" tapmode onclick="openWin('text_win')">
                <div class="aui-list-item-inner aui-list-item-arrow">
                    文本
                </div>
            </li>
            <li class="aui-list-item" tapmode onclick="openWin('button_win')">
                <div class="aui-list-item-inner aui-list-item-arrow">
                    按钮
                </div>
            </li>
            <li class="aui-list-item" tapmode onclick="openWin('label_win')">
                <div class="aui-list-item-inner aui-list-item-arrow">
                    标签、角标、红点
                </div>
            </li>
            <li class="aui-list-item" tapmode onclick="openWin('header_win')">
                <div class="aui-list-item-inner aui-list-item-arrow">
                    顶部导航栏
                    <div class="aui-list-item-right">
                        <div class="aui-dot" style="position:relative;top:0; right:0"></div>
                    </div>
                </div>
            </li>
            <li class="aui-list-item" tapmode onclick="openWin('btn_bar_win')">
                <div class="aui-list-item-inner aui-list-item-arrow">
                    按钮组工具栏
                </div>
            </li>
            <li class="aui-list-item" tapmode onclick="openWin('footer_bar_win')">
                <div class="aui-list-item-inner aui-list-item-arrow">
                    底部工具栏
                </div>
            </li>
            <li class="aui-list-item" tapmode onclick="openWin('footer_bar_more_win')">
                <div class="aui-list-item-inner aui-list-item-arrow">
                    底部工具栏扩展
                    <div class="aui-list-item-right">
                        <div class="aui-dot" style="position:relative;top:0; right:0"></div>
                    </div>
                </div>
            </li>
            <li class="aui-list-item" tapmode onclick="openWin('tab_win')">
                <div class="aui-list-item-inner aui-list-item-arrow">
                    tab切换栏
                </div>
            </li>
            <li class="aui-list-item" tapmode onclick="openWin('info_win')">
                <div class="aui-list-item-inner aui-list-item-arrow">
                    信息条
                </div>
            </li>
            <li class="aui-list-item" tapmode onclick="openWin('radio_win')">
                <div class="aui-list-item-inner aui-list-item-arrow">
                    radio\checkbox\switch
                </div>
            </li>
            <li class="aui-list-item" tapmode onclick="openWin('range_win')">
                <div class="aui-list-item-inner aui-list-item-arrow">
                    滑块
                </div>
            </li>
            <li class="aui-list-item" tapmode onclick="openWin('list_win')">
                <div class="aui-list-item-inner aui-list-item-arrow">
                    列表
                </div>
            </li>
            <li class="aui-list-item" tapmode onclick="openWin('card_list_win')">
                <div class="aui-list-item-inner aui-list-item-arrow">
                    卡片列表
                </div>
            </li>
            <li class="aui-list-item" tapmode onclick="openWin('from_win')">
                <div class="aui-list-item-inner aui-list-item-arrow">
                    表单
                </div>
            </li>
            <li class="aui-list-item" tapmode onclick="openWin('flex_win')">
                <div class="aui-list-item-inner aui-list-item-arrow">
                    弹性布局(aui-flex.css)
                    <div class="aui-list-item-right">
                        <div class="aui-dot" style="position:relative;top:0; right:0"></div>
                    </div>
                </div>
            </li>
            <li class="aui-list-item" tapmode onclick="openWin('timeline_win')">
                <div class="aui-list-item-inner aui-list-item-arrow">
                    时间轴(timeline)
                    <div class="aui-list-item-right">
                        <div class="aui-dot" style="position:relative;top:0; right:0"></div>
                    </div>
                </div>
            </li>
            <li class="aui-list-item" tapmode onclick="openWin('popup_win')">
                <div class="aui-list-item-inner aui-list-item-arrow">
                    弹出菜单(popup)
                    <div class="aui-list-item-right">
                        <div class="aui-dot" style="position:relative;top:0; right:0"></div>
                    </div>
                </div>
            </li>
            <li class="aui-list-item" tapmode onclick="openWin('actionsheet_win')">
                <div class="aui-list-item-inner aui-list-item-arrow">
                    底部弹出框(actionsheet)
                    <div class="aui-list-item-right">
                        <div class="aui-dot" style="position:relative;top:0; right:0"></div>
                    </div>
                </div>
            </li>
            <li class="aui-list-item" tapmode onclick="openWin('sharebox_win')">
                <div class="aui-list-item-inner aui-list-item-arrow">
                    底部分享盒子(sharebox)
                    <div class="aui-list-item-right">
                        <div class="aui-dot" style="position:relative;top:0; right:0"></div>
                    </div>
                </div>
            </li>
            <li class="aui-list-item" tapmode onclick="openWin('collapse_win')">
                <div class="aui-list-item-inner aui-list-item-arrow">
                    折叠面板(collapse)
                    <div class="aui-list-item-right">
                        <div class="aui-dot" style="position:relative;top:0; right:0"></div>
                    </div>
                </div>
            </li>
            <li class="aui-list-item" tapmode onclick="openWin('lazyload_win')">
                <div class="aui-list-item-inner aui-list-item-arrow">
                    图片懒加载(lazyload)
                    <div class="aui-list-item-right">
                        <div class="aui-dot" style="position:relative;top:0; right:0"></div>
                    </div>
                </div>
            </li>
            <li class="aui-list-item" tapmode onclick="openWin('progress_win')">
                <div class="aui-list-item-inner aui-list-item-arrow">
                    进度条
                </div>
            </li>

            <li class="aui-list-item" tapmode onclick="openWin('searchbar_win')">
                <div class="aui-list-item-inner aui-list-item-arrow">
                    搜索条
                    <div class="aui-list-item-right">
                        <div class="aui-dot" style="position:relative;top:0; right:0"></div>
                    </div>
                </div>
            </li>
            <li class="aui-list-item" tapmode onclick="openWin('tips_win')">
                <div class="aui-list-item-inner aui-list-item-arrow">
                    提示条
                </div>
            </li>
            <li class="aui-list-item" tapmode onclick="openWin('grid_win')">
                <div class="aui-list-item-inner aui-list-item-arrow">
                    宫格布局
                </div>
            </li>
            <li class="aui-list-item" tapmode onclick="openWin('toast_win')">
                <div class="aui-list-item-inner aui-list-item-arrow">
                    Toast
                </div>
            </li>
            <li class="aui-list-item" tapmode onclick="openWin('dialog_win')">
                <div class="aui-list-item-inner aui-list-item-arrow">
                    对话框
                </div>
            </li>
            <li class="aui-list-item" tapmode onclick="openWin('chat_win')">
                <div class="aui-list-item-inner aui-list-item-arrow">
                    聊天气泡
                </div>
            </li>
            <li class="aui-list-item" tapmode onclick="openWin('pull_refresh_win')">
                <div class="aui-list-item-inner aui-list-item-arrow">
                    下拉刷新
                </div>
            </li>
            <li class="aui-list-item" tapmode onclick="openWin('slide_win')">
                <div class="aui-list-item-inner aui-list-item-arrow">
                    轮播组件
                </div>
            </li>

            <li class="aui-list-item" tapmode onclick="openWin('scroll_win')">
                <div class="aui-list-item-inner aui-list-item-arrow">
                    滚动监听
                </div>
            </li>
            <li class="aui-list-item" tapmode onclick="openWin('iconfont_win')">
                <div class="aui-list-item-inner aui-list-item-arrow">
                    图标
                </div>
            </li>
            <li class="aui-list-item" tapmode onclick="openWin('list_night_win')">
                <div class="aui-list-item-inner aui-list-item-arrow">
                    自定义主题样式
                </div>
            </li>
            <li class="aui-list-item" tapmode onclick="openWin('demo_wechat_win')">
                <div class="aui-list-item-inner aui-list-item-arrow">
                    微信
                </div>
            </li>
            <li class="aui-list-item" tapmode onclick="openWin('demo_wechat_circle_win')">
                <div class="aui-list-item-inner aui-list-item-arrow">
                    朋友圈
                </div>
            </li>
            <li class="aui-list-item" tapmode onclick="openWin('demo_news_today_win')">
                <div class="aui-list-item-inner aui-list-item-arrow">
                    今日头条
                </div>
            </li>
            <li class="aui-list-item" tapmode onclick="openWin('demo_zhihu_win')">
                <div class="aui-list-item-inner aui-list-item-arrow">
                    知乎首页
                </div>
            </li>
            <li class="aui-list-item" tapmode onclick="openWin('demo_moubao_win')">
                <div class="aui-list-item-inner aui-list-item-arrow">
                    某宝首页
                    <div class="aui-list-item-right">
                        <div class="aui-dot" style="position:relative;top:0; right:0"></div>
                    </div>
                </div>
            </li>
            <li class="aui-list-item" tapmode onclick="openWin('demo_my_win')">
                <div class="aui-list-item-inner aui-list-item-arrow">
                    会员中心首页
                    <div class="aui-list-item-right">
                        <div class="aui-dot" style="position:relative;top:0; right:0"></div>
                    </div>
                </div>
            </li>
            <li class="aui-list-item" tapmode onclick="openWin('demo_order_win')">
                <div class="aui-list-item-inner aui-list-item-arrow">
                    订单列表首页
                    <div class="aui-list-item-right">
                        <div class="aui-dot" style="position:relative;top:0; right:0"></div>
                    </div>
                </div>
            </li>
        </ul>
    </div>
</body>
<script type="text/javascript" src="<%=basePath%>resources/test/aui/script/api.js"></script>
<script type="text/javascript">
    apiready = function(){
        api.setStatusBarStyle({
            style: 'light'
        });
        api.parseTapmode();
        var header = $api.byId('header');
        var headerPos = $api.offset(header);
        var body_h = $api.offset($api.dom('body')).h;
        var header_h = $api.offset($api.byId('header')).h;
        api.openFrame({
            name: 'index_frm',
            url: '<%=basePath%>view/weixin_view/auiTest/chat_win.html',
            bounces: true,
            rect: {
                x: 0,
                y: header_h,
                w: 'auto',
                h: 'auto'
            }
        })
    };
    function openClub(){
        var delay = 0;
        if(api.systemType != 'ios'){
            delay = 300;
        }
        api.openWin({
            name: 'club_win',
            url: './html/club_win.html',
            bounces:false,
            delay: delay,
            slidBackEnabled:true,
            vScrollBarEnabled:false,
            progress:{
                type:"page"
            }
        });
    }
    function closeWin(){
        api.closeWin({
        });
    }
</script>
<script type="text/javascript">
    apiready = function(){
        api.parseTapmode();
    }
    function openWin(name){
        var delay = 0;
        if(api.systemType != 'ios'){
            delay = 300;
        }
        api.openWin({
            name: ''+name+'',
            url: ''+name+'.html',
            bounces:false,
            delay: delay,
            slidBackEnabled:true,
            vScrollBarEnabled:false
        });
    }

</script>
</html>
