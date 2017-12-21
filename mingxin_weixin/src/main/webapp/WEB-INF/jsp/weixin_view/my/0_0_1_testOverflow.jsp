<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport"
          content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0"/>
    <meta name="format-detection" content="telephone=no,email=no,date=no,address=no">
    <title>AUI快速完成布局</title>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>resources/test/my/css/aui.css"/>
<style type="text/css">
    .header-position{
        position:fixed;
        top:0;
        top: 0;
    }
    .content-positon{
        position:absolute;
        padding-top: 2.25rem;
        padding-bottom: 2.25rem;
    }
</style>
</head>
<body>
<header class="aui-bar aui-bar-nav header-position">
    <a class="aui-pull-left aui-btn">
        <span class="aui-iconfont aui-icon-left"></span>返回
    </a>
    <div class="aui-title">活动详情</div>
</header>
<section class="aui-content content-positon">
    <p style="height: 10rem;">中间内容部分1</p>
    <p style="height: 10rem;">中间内容部分</p>
    <p style="height: 10rem;">中间内容部分</p>
    <p style="height: 10rem;">中间内容部分</p>
    <p style="height: 10rem;">中间内容部分</p>
    <p style="height: 10rem;">中间内容部分</p>
    <p style="height: 10rem;">中间内容部分</p>
    <p style="height: 10rem;">中间内容部分</p>
    <p >中间内容部分10</p>
    <p >中间内容部分9</p>
    <p >中间内容部分8</p>
    <p >中间内容部分7</p>
    <p >中间内容部分6</p>
    <p >中间内容部分5</p>
    <p >中间内容部分4</p>
    <p >中间内容部分3</p>
    <p >中间内容部分2</p>
    <p >中间内容部分1</p>
</section>
<footer class="aui-bar aui-bar-tab ">
    <div class="aui-bar-tab-item" tapmode style="width: 2.3rem;">
        <i class="aui-iconfont aui-icon-comment aui-text-info"></i>
        <div class="aui-bar-tab-label aui-text-info">咨询</div>
    </div>
    <div class="aui-bar-tab-item" tapmode style="width: 2.3rem;">
        <i class="aui-iconfont aui-icon-star aui-text-warning"></i>
        <div class="aui-bar-tab-label aui-text-warning">收藏</div>
    </div>
    <div class="aui-bar-tab-item" tapmode style="width: 2.3rem;">
        <i class="aui-iconfont aui-icon-star aui-text-warning"></i>
    <div class="aui-bar-tab-label aui-text-warning">店铺</div>
</div>
    <div class="aui-bar-tab-item aui-bg-warning aui-text-white" tapmode style="width: auto;">加入购物车</div>
    <div class="aui-bar-tab-item aui-bg-danger aui-text-white" tapmode style="width: auto;">立即购买</div>
</footer>
</body>
<script type="text/javascript" src="<%=basePath%>resources/test/my/js/aui-api.js"></script>
<script type="text/javascript" src="<%=basePath%>resources/test/my/js/aui-tab.js"></script>
<script type="text/javascript">
    apiready = function () {
        api.parseTapmode();
    }
</script>
</html>
