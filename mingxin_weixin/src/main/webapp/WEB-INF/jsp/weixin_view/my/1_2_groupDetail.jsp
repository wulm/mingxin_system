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

    <link rel="stylesheet" type="text/css" href="<%=basePath%>resources/test/my/css/aui.css"/>

    <link rel="stylesheet" type="text/css" href="<%=basePath%>resources/test/my/css/act-order.css"/>

    <title>拼团详情</title>
</head>
<body>

<section class="aui-content">
    <div id="aui-address-box" class="color-seg-line">
        <div class="aui-flex-col  aui-flex-center aui-padded-5">
            <div class="aui-flex-item-4 aui-flex-row aui-flex-middle aui-padded-5">
                <div class="aui-font-size-18 aui-ellipsis-1 aui-padded-b-5">
                    <strong>小明</strong>
                </div>
                <div class="aui-font-size-8 aui-ellipsis-1">
                    福建 宁德 古田县 城西街道康佰家药店3楼前沿教育
                </div>
            </div>
            <div class="aui-flex-item-8 aui-border-l">1111</div>
        </div>

    </div>
    <%--<div class="aui-dri"></div>--%>
    <div class="aui-payment-bar">
        <div class="shop-total">
            <span class="aui-red aui-size">实付款: <em>￥399.00</em></span>
        </div>
        <a href="Settlement.html" class="settlement">立即支付</a>
    </div>
</section>


</body>
</html>
