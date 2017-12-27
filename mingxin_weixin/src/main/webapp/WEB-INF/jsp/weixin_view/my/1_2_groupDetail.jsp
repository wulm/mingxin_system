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
    <style type="text/css">
        .content-positon {
            position: absolute;
            /*padding-top: 2.25rem;*/
            padding-bottom: 2.8rem;
            width: 100%;
        }

    </style>
</head>
<body>

<section class="aui-content content-positon">
    <div id="contentMain" style="overflow-y:auto;">
        <div id="aui-address-box" class="color-seg-line aui-padded-l-5 ">
            <div class="aui-flex-col aui-font-size-16  aui-border-b ">
                <strong class="aui-flex-row">活动参加人</strong>
            </div>
            <div class="aui-flex-col aui-flex-left aui-padded-l-10">
                <div class="aui-flex-item-10 aui-flex-row aui-flex-middle aui-flex-left">
                    <div class="aui-flex-col aui-font-size-16 aui-padded-b-5" style="width: 100%;">
                        *利明（157****2784）
                    </div>
                    <div class="aui-flex-col aui-ellipsis-2" style="width: 100%;">
                        <span class="aui-iconfont aui-icon-location aui-font-size-12 ">
                            福建 宁德 古田县城西街道康佰家药店三楼前言教育前言教育前言教育
                        </span>

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
                        <font color="red">￥89.00/人</font>
                    </div>
                </div>

            </div>

        </div>
        <div id="choice1">
            <div class="aui-flex-col aui-flex-left aui-border-t aui-border-b  aui-padded-10 ">
                <div class="aui-flex-item-8 aui-flex-row aui-flex-left ">
                    <div class="aui-font-size-14">活动险 <font color="red">￥1.50</font></div>
                    <div class="aui-font-size-10">最高可赔10万</div>
                </div>
                <div class="aui-flex-item-4 aui-flex-row  aui-flex-middle aui-flex-right ">
                    <div class="aui-font-size-12">
                        <span>是否购买</span>
                        <input class="aui-switch" type="checkbox" name="demo2" <%--checked--%>>
                    </div>
                </div>
            </div>
        </div>
        <div id="choice2">
            <div class="aui-flex-col aui-flex-left aui-border-t aui-border-b  aui-padded-10 ">
                <div class="aui-flex-item-8 aui-flex-row aui-flex-left ">
                    <div class="aui-font-size-14">积分:538<font color="red">（可抵5.38元）</font></div>
                </div>
                <div class="aui-flex-item-4 aui-flex-row  aui-flex-middle aui-flex-right ">
                    <div class="aui-font-size-12">
                        <span>是否抵用</span>
                        <input class="aui-switch" type="checkbox" name="demo2" <%--checked--%>>
                    </div>
                </div>
            </div>
        </div>
        <div id="choice3">
            <div class="aui-flex-col aui-font-size-16 aui-padded-l-10 aui-padded-r-10 aui-border-t aui-border-b">
                <strong class="aui-flex-row">支付方式</strong>
            </div>
            <div id="choice-pay-item1">
                <div class="aui-flex-col aui-flex-left aui-border-t aui-border-b  aui-padded-10 ">
                    <div class="aui-flex-item-3 aui-flex-row aui-flex-left " style="width: 2rem;height: 2rem;">
                        <img src="<%=basePath%>resources/test/my/image/my/apy-5.png">
                    </div>
                    <div class="aui-flex-item-7 aui-flex-row aui-flex-left aui-padded-l-5">
                        <div class="aui-font-size-14">微信支付</div>
                        <div class="aui-font-size-10">微信安全支付</div>
                    </div>
                    <div class="aui-flex-item-2 aui-flex-row  aui-flex-middle aui-flex-right ">
                        <input class="aui-radio" type="radio" name="demo" checked>
                    </div>
                </div>
            </div>
            <div id="choice-pay-item2">
                <div class="aui-flex-col aui-flex-left aui-border-t aui-border-b  aui-padded-10 ">
                    <div class="aui-flex-item-3 aui-flex-row aui-flex-left " style="width: 2rem;height: 2rem;">
                        <img src="<%=basePath%>resources/test/my/image/my/apy-4.png">
                    </div>
                    <div class="aui-flex-item-7 aui-flex-row aui-flex-left aui-padded-l-5">
                        <div class="aui-font-size-14">支付宝支付</div>
                        <div class="aui-font-size-10">支付宝安全支付</div>
                    </div>
                    <div class="aui-flex-item-2 aui-flex-row  aui-flex-middle aui-flex-right ">
                        <input class="aui-radio" type="radio" name="demo">
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>
<footer class="aui-bar aui-bar-tab" style="font-size: 0.7rem;">
    <div class="aui-bar-tab-item" tapmode style="width: 60%;">
        <div style="float: right;padding-right: 10%;">
            实付款：
            <font color="red" size="4">￥
                <span id="moneyCount">86.00</span>
            </font>
        </div>
    </div>

    <div id="btn-pay-now" class="aui-bar-tab-item aui-bg-danger aui-text-white js-open-modal" tapmode
         style="width: 40%;">
        立即付款
    </div>
</footer>

</body>

<script src="<%=basePath%>resources/test/my/js/jquery.min.js"></script>
<script src="<%=basePath%>resources/test/my/js/aui-dialog.js"></script>
<script type="text/javascript" src="<%=basePath%>resources/test/my/js/aui-toast.js"></script>
<script type="text/javascript">

    $(function () {
        $("#btn-pay-now").click(function () {
            /*var dialog = new auiDialog();
             dialog.alert({
             title:"提示",
             msg:'模拟支付成功',
             buttons:['取消','确定']
             },function(ret){
             if(ret){
             dialog.alert({
             title:"提示",
             msg:"您点击了第"+ret.buttonIndex+"个按钮",
             buttons:['确定']
             });
             }
             });*/

            var toast = new auiToast();
            toast.loading({
                title: "提交支付中",
                duration: 2000
            }, function (ret) {
                console.log(ret);
                setTimeout(function () {
                    toast.hide();
//               toast.custom({
//                  title: "支付成功",
//                  html: '<i class="aui-iconfont aui-icon-laud"></i>',
//                  duration: 1000
//               });
                    window.location.href = "groupMembersList.htm";
                }, 2000);
            });

        });

    });
</script>
</html>
