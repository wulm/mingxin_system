<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0"/>
    <meta name="format-detection" content="telephone=no,email=no,date=no,address=no">
    <title>AUI快速完成布局</title>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>resources/test/aui/css/aui.css" />
    <link rel="stylesheet" type="text/css" href="<%=basePath%>resources/test/aui/css/aui-slide.css" />
</head>
<body>
	<header class="aui-bar aui-bar-nav" id="aui-header">
        <a class="aui-btn aui-pull-left" tapmode onclick="closeWin()">
            <span class="aui-iconfont aui-icon-left"></span>
        </a>
        <div class="aui-title">轮播</div>
    </header>
    <div class="aui-content-padded">
        <p>优化说明：新增当前页（currentPage）回调及总页数获取；优化图片显示</p>
    </div>
    <div id="aui-slide">
        <div class="aui-slide-wrap" >
            <div class="aui-slide-node">
                <div class="aui-grid">
                    <div class="aui-row">
                        <div class="aui-col-xs-4">
                            <div class="aui-badge">88</div>
                            <i class="aui-iconfont aui-icon-home"></i>
                            <div class="aui-grid-label">首页</div>
                        </div>
                        <div class="aui-col-xs-4">
                            <i class="aui-iconfont aui-icon-gear"></i>
                            <div class="aui-grid-label">设置</div>
                        </div>
                        <div class="aui-col-xs-4">
                            <i class="aui-iconfont aui-icon-map"></i>
                            <div class="aui-grid-label">地图</div>
                        </div>
                        <div class="aui-col-xs-4">
                            <i class="aui-iconfont aui-icon-calendar"></i>
                            <div class="aui-grid-label">日历</div>
                        </div>
                        <div class="aui-col-xs-4">
                            <div class="aui-badge"></div>
                            <i class="aui-iconfont aui-icon-date"></i>
                            <div class="aui-grid-label">日期</div>
                        </div>
                        <div class="aui-col-xs-4">
                            <div class="aui-dot"></div>
                            <i class="aui-iconfont aui-icon-cart"></i>
                            <div class="aui-grid-label">购物车</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="aui-slide-node aui-slide-node-middle aui-slide-node-center">
                <div class="aui-content-padded">
                    <span class="aui-text-danger">AUI Slide</span> 轮播组件不只局限于放置图片，可以自定义内容，分页样式有圆点(dot)，线条(line),结合AUI Flex来实现图片及内容的水平、垂直居中
                </div>
            </div>
            <div class="aui-slide-node aui-bg-warning aui-slide-node-middle aui-slide-node-center">
                <div class="aui-content-padded">
                    <span class="aui-text-danger">AUI Slide</span>提供了常用的配置属性，可以自定义宽度，高度，自动播放，分页器样式等，支持无缝循环轮播
                </div>
            </div>
            <div class="aui-slide-node bg-dark">
                <img src="<%=basePath%>resources/test/aui/image/l1.png" />
            </div>
            <div class="aui-slide-node bg-dark">
                <img src="<%=basePath%>resources/test/aui/image/l2.png" />
            </div>
            <div class="aui-slide-node bg-dark">
                <img src="<%=basePath%>resources/test/aui/image/l3.png" />
            </div>
        </div>
        <div class="aui-slide-page-wrap"><!--分页容器--></div>
    </div>
    <div id="aui-slide2">
        <div class="aui-slide-wrap" >
            <div class="aui-slide-node aui-slide-node-middle aui-slide-node-center">
                <div class="aui-content aui-padded-15">
                    <span class="aui-text-danger">AUI Slide</span>会让你更方便让你布局轮播效果
                </div>
            </div>
            <div class="aui-slide-node aui-slide-node-middle aui-slide-node-center">
                <div class="aui-content aui-padded-15">
                    <span class="aui-text-success">AUI Slide</span>更好的支持循环滑动切换
                </div>
            </div>
        </div>
        <div class="aui-slide-page-wrap"><!--分页容器--></div>
    </div>
    <div id="aui-slide2">
        <div class="aui-slide-wrap" >
            <div class="aui-slide-node aui-slide-node-middle aui-slide-node-center">
                <div class="aui-content aui-padded-15">
                    <span class="aui-text-danger">AUI Slide</span>会让你更方便让你布局轮播效果
                </div>
            </div>
            <div class="aui-slide-node aui-slide-node-middle aui-slide-node-center">
                <div class="aui-content aui-padded-15">
                    <span class="aui-text-success">AUI Slide</span>更好的支持循环滑动切换
                </div>
            </div>
        </div>
        <div class="aui-slide-page-wrap"><!--分页容器--></div>
    </div>
    <div id="aui-slide3">
        <div class="aui-slide-wrap" >
            <div class="aui-slide-node bg-dark">
                <img src="<%=basePath%>resources/test/aui/image/l1.png" />
            </div>
            <div class="aui-slide-node bg-dark">
                <img src="<%=basePath%>resources/test/aui/image/l2.png" />
            </div>
            <div class="aui-slide-node bg-dark">
                <img src="<%=basePath%>resources/test/aui/image/l3.png" />
            </div>
        </div>
        <div class="aui-slide-page-wrap"><!--分页容器--></div>
    </div>
    
</body>
<script type="text/javascript" src="<%=basePath%>resources/test/aui/script/api.js"></script>
<script type="text/javascript" src="<%=basePath%>resources/test/aui/script/aui-slide.js"></script>
<script type="text/javascript">
    var slide = new auiSlide({
        container:document.getElementById("aui-slide"),
        // "width":300,
        "height":260,
        "speed":300,
        "pageShow":true,
        "pageStyle":'dot',
        "loop":true,
        'dotPosition':'center',
        currentPage:currentFun
    })

    function currentFun(index) {
        console.log(index);
    }
    var slide2 = new auiSlide({
        container:document.getElementById("aui-slide2"),
        // "width":300,
        "height":240,
        "speed":300,
        "autoPlay": 0, //自动播放
        "pageShow":true,
        "loop":true,
        "pageStyle":'dot',
        'dotPosition':'center'
    })
    var slide3 = new auiSlide({
        container:document.getElementById("aui-slide3"),
        // "width":300,
        "height":240,
        "speed":500,
        "autoPlay": 3000, //自动播放
        "loop":true,
        "pageShow":true,
        "pageStyle":'line',
        'dotPosition':'center'
    })
    console.log(slide3.pageCount());
</script>
</html>
