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
          content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0,user-scalable=no"/>
    <meta name="format-detection" content="telephone=no,email=no,date=no,address=no">
    <title>AUI快速完成布局</title>
    <link rel="stylesheet" href="<%=basePath%>resources/test/my/css/home.css">
    <link rel="stylesheet" type="text/css" href="<%=basePath%>resources/test/my/css/aui.css"/>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>resources/test/my/css/aui-slide.css"/>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>resources/test/my/css/aui-flex.css"/>
    <link rel="stylesheet" type="text/css" href="<%=basePath%>resources/test/my/css/popGroupChoices.css"/>

    <style type="text/css">
        .header-position {
            position: fixed;
            top: 0;
            top: 0;
        }

        .content-positon {

            position: absolute;
            padding-top: 2.25rem;
            padding-bottom: 2.25rem;
            width: 100%;
        }

        .bg-dark {
            background: #333333 !important;
        }

        .aui-slide-node img {
            width: auto;
            height: 100%;
        }

        /*显示回顶部按钮*/
        #backTop {
            position: fixed;
            /*padding: 0.5rem 0.2rem;*/
            right: 0.3rem;
            bottom: 3rem;
            background-color: #e0e0e0;
            border-radius: 0.3rem;
            font-size: 0.8rem;
            height: 1.2rem;
            color: #212121;
            z-index: 999;
        }

        /*显示拼团消息*/
        #buyTip {
            display: none;
            position: fixed;
            left: 0.2rem;
            top: 2.5rem;
            border-radius: 0.5rem;
            z-index: 999;
        }

        /*弹出选项框*/
        body.modal-open {
            /*解决滚动穿透问题*/
            position: fixed;
            width: 100%;
        }

        .modal {
            background: rgba(0, 0, 0, 0.5);
            position: fixed;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            z-index: 1000;
            display: none;
        }

        .modal-choices-frame {
            position: fixed;
            display: none;
            left: 0;
            right: 0;
            bottom: 0;
            /*height: 82%;*/
            height: 19rem;
            background: #fff;
            z-index: 1011;
        }

        /*弹出选项框*/

        /*弹出选项按钮*/
        .choice-title {
            font-size: 0.6rem;
            font-weight: 800;
            padding-left: 0.2rem;
        }

        .choice-item-div {
            text-align: center;
            min-width: 2rem;
            float: left;
            margin: 0.2rem; /*外边距*/
            padding: 0.2rem; /*内边距*/
            font-size: 0.6rem;
            background-color: #eeeeee;
            border-radius: 0.2rem;
        }

        .choice-actived {
            background-color: red;
            color: white;
        }

        /*弹出选项按钮*/

        /*弹出当前拼团*/
        .modal-nowGroups-frame {
            position: fixed;
            display: none;
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

        /*弹出当前拼团*/

    </style>
</head>
<body>
<%--顶部固定标题栏--%>
<header class="aui-bar aui-bar-nav header-position" style="background-color: #e5133d">
    <a class="aui-pull-left aui-btn" href="javascript:history.back(-1)">
        <span class="aui-iconfont aui-icon-left"></span>返回
    </a>
    <div class="aui-title">活动详情</div>
</header>
<%--活动详情主页面--%>
<section id="actBody" class="aui-content content-positon">
    <%--图片轮转部分--%>
    <div id="aui-slide3">
        <div class="aui-slide-wrap">
            <div class="aui-slide-node bg-dark">
                <img src="<%=basePath%>resources/test/my/image/l1.png"/>
            </div>
            <div class="aui-slide-node bg-dark">
                <img src="<%=basePath%>resources/test/my/image/l2.png"/>
            </div>
            <div class="aui-slide-node bg-dark">
                <img src="<%=basePath%>resources/test/my/image/l3.png"/>
            </div>
            <div class="aui-slide-node bg-dark">
                <img src="<%=basePath%>resources/test/my/image/l1.png"/>
            </div>
            <div class="aui-slide-node bg-dark">
                <img src="<%=basePath%>resources/test/my/image/l2.png"/>
            </div>
            <div class="aui-slide-node bg-dark">
                <img src="<%=basePath%>resources/test/my/image/l3.png"/>
            </div>
        </div>
        <div class="aui-slide-page-wrap"><!--分页容器--></div>
    </div>
    <%--倒计时--%>
    <div id="leftTime" style="width:100%;text-align: right;">
        <div class="aui-font-size-12" style="padding-right: 0.5rem;">倒计时:<font color="red">5天6时25分钟27秒</font></div>
    </div>
    <%--活动标题--%>
    <div id="actTitle" class="aui-margin-t-10">
        <h4 class="aui-ellipsis-2">
            <strong>古田高岗露营，触摸自然，感受自然，倾听自然，更要喝到自然。</strong>
        </h4>
        <p class="aui-ellipsis-3">
            丢下书本，丢下繁杂，静下心来感受这里的美…，要青春就是要激情，奔跑吧？青年…，你会用相机拍下每个美的瞬间，因为这里的每个地方都很美…
        </p>
        <div class="aui-font-size-12 aui-padded-5">
            <span class="aui-iconfont aui-icon-date"></span>
            活动时间：2017.04.20（周六）、2017.04.21(周日)
        </div>
    </div>
    <div class="Seg-line"></div>
    <%--店铺标签--%>
    <div id="shopTags" class="aui-product-boutique">
        <div style="float: left">
            <img src="<%=basePath%>resources/test/store/themes/img/icon/icon-usa.png" alt="">
            <span class="aui-product-tag-text">美国品牌</span>
        </div>
        <div>
            <img src="<%=basePath%>resources/test/store/themes/img/icon/icon-sj.png" alt="">
            <span class="aui-product-tag-text">精品旅途</span>
        </div>
    </div>
    <div class="Seg-line"></div>
    <%--当前正在进行中的拼团--%>
    <div id="groupCurrent">
        <div class="aui-flex-col aui-flex-left aui-border-t aui-border-b  aui-padded-5">
            <div class="aui-flex-item-8 aui-flex-row aui-flex-middle aui-flex-left aui-font-size-12">75人正在拼团，可直接参与</div>
            <div id="open-allNowGroup-frame"
                 class="aui-flex-item-4 aui-flex-row aui-flex-middle aui-flex-right aui-font-size-12">
                <a href="javascript:;">
                    查看更多<i class="aui-iconfont aui-icon-right"></i>
                </a>
            </div>
        </div>

        <div class="aui-flex-col aui-flex-left aui-border-t aui-border-b">
            <div class="aui-flex-item-2 aui-flex-row aui-flex-middle aui-padded-10">
                <img class="aui-img-round" src="<%=basePath%>resources/test/my/image/liulangnan.png">
            </div>
            <div class="aui-flex-item-3 aui-flex-row aui-flex-middle">
                <div class="aui-font-size-14 aui-ellipsis-1">
                    小明小明小明小明小明小明
                </div>
            </div>
            <div class="aui-flex-item-4 aui-flex-row aui-flex-middle aui-flex-right">
                <div class="aui-font-size-12 aui-ellipsis-1">
                    还差<font color="red">15人</font>拼成
                </div>
                <div class="aui-font-size-10 aui-ellipsis-1">
                    剩余21:11:11.03
                </div>
            </div>
            <div class="aui-flex-item-3 aui-flex-row aui-flex-middle aui-padded-10">
                <div class="aui-btn aui-btn-danger  aui-font-size-12">
                    参团
                </div>
            </div>
        </div>

        <div class="aui-flex-col aui-flex-left aui-border-t aui-border-b">
            <div class="aui-flex-item-2 aui-flex-row aui-flex-middle aui-padded-10">
                <img class="aui-img-round" src="<%=basePath%>resources/test/my/image/liulangnan.png">
            </div>
            <div class="aui-flex-item-3 aui-flex-row aui-flex-middle">
                <div class="aui-font-size-14 aui-ellipsis-1">
                    小明小明小明小明小明小明
                </div>
            </div>
            <div class="aui-flex-item-4 aui-flex-row aui-flex-middle aui-flex-right">
                <div class="aui-font-size-12 aui-ellipsis-1">
                    还差<font color="red">15人</font>拼成
                </div>
                <div class="aui-font-size-10 aui-ellipsis-1">
                    剩余21:11:11.03
                </div>
            </div>
            <div class="aui-flex-item-3 aui-flex-row aui-flex-middle aui-padded-10">
                <div class="aui-btn aui-btn-danger  aui-font-size-12">
                    参团
                </div>
            </div>
        </div>
    </div>
    <div class="Seg-line"></div>
    <%--活动评价--%>
    <div id="actAppraise">
        <div class="aui-flex-col aui-flex-left aui-border-t aui-border-b  aui-padded-5 ">
            <div class="aui-flex-item-8 aui-flex-row aui-flex-left aui-font-size-12">活动评价（1241）</div>
            <div class="aui-flex-item-4 aui-flex-row aui-flex-right aui-font-size-12">
                <a href="javascript:;">
                    查看全部<i class="aui-iconfont aui-icon-right"></i>
                </a>
            </div>
        </div>
        <div class="aui-flex-row aui-padded-5 aui-padded-b-0 aui-border-b">
            <div class="aui-flex-col  aui-font-size-12" style="height: 1.2rem;">
                <div class="aui-flex-item-8 aui-flex-col">
                    <img class="aui-img-round" style="width: 1rem;height: 1rem;margin-right: 0.5rem;"
                         src="<%=basePath%>resources/test/my/image/liulangnan.png">
                    爱玩的大脸猫
                </div>
                <div class="aui-flex-item-4 aui-flex-col aui-flex-right">
                    2017.08.12
                </div>
            </div>
            <div class="aui-flex-col aui-padded-5 aui-padded-t-0">
                <p class="aui-ellipsis-2 aui-font-size-14">
                    活动非常有趣。活动非常有趣。活动非常有趣。活动非常有趣。活动非常有趣。活动非常有趣。活动非常有趣。活动非常有趣。活动非常有趣。活动非常有趣。活动非常有趣。活动非常有趣。活动非常有趣。
                </p>
            </div>
            <div class="aui-flex-col aui-padded-5 ">
                <p class="aui-ellipsis-1 aui-font-size-10">
                    <strong>类型：漂流【3人艇】 露营【3人帐篷】 包午餐</strong>
                </p>
            </div>
        </div>
        <div class="aui-flex-row aui-padded-5 aui-padded-b-0 aui-border-b">
            <div class="aui-flex-col  aui-font-size-12" style="height: 1.2rem;">
                <div class="aui-flex-item-8 aui-flex-col">
                    <img class="aui-img-round" style="width: 1rem;height: 1rem;margin-right: 0.5rem;"
                         src="<%=basePath%>resources/test/my/image/liulangnan.png">
                    爱玩的大脸猫
                </div>
                <div class="aui-flex-item-4 aui-flex-col aui-flex-right">
                    2017.08.12
                </div>
            </div>
            <div class="aui-flex-col aui-padded-5 aui-padded-t-0">
                <p class="aui-ellipsis-2 aui-font-size-14">
                    活动非常有趣。活动非常有趣。活动非常有趣。活动非常有趣。活动非常有趣。活动非常有趣。活动非常有趣。活动非常有趣。活动非常有趣。活动非常有趣。活动非常有趣。活动非常有趣。活动非常有趣。
                </p>
            </div>
            <div class="aui-flex-col aui-padded-5 ">
                <p class="aui-ellipsis-1 aui-font-size-10">
                    <strong>类型：漂流【3人艇】 露营【3人帐篷】 包午餐</strong>
                </p>
            </div>
        </div>
    </div>
    <div class="Seg-line"></div>
    <%--跳转到店铺--%>
    <div id="goToShop" class="aui-margin-5">
        <div class="aui-flex-col aui-flex-left aui-border-t aui-border-b">
            <div class="aui-flex-item-2 aui-flex-row aui-flex-middle aui-padded-10">
                <img src="<%=basePath%>resources/test/my/image/liulangnan.png">
            </div>

            <div class="aui-flex-item-6 aui-flex-row aui-flex-middle aui-flex-left">
                <div class="aui-font-size-14 aui-ellipsis-1">
                    风之谷户外拓展
                </div>
                <div class="aui-font-size-8 aui-ellipsis-1">
                    已开<font color="red">535</font>次活动&nbsp;&nbsp;&nbsp;<font color="red">27</font>场进行中
                </div>
            </div>
            <div class="aui-flex-item-4 aui-flex-row aui-flex-middle aui-padded-10">
                <div class="aui-btn aui-btn-default  aui-font-size-12">
                    <span class="aui-iconfont aui-icon-home"></span>
                    去逛逛
                </div>
            </div>
        </div>
    </div>
    <div class="Seg-line"></div>
    <%--活动描述部分--%>
    <div id="actDescribe">
        <div class="aui-flex-col aui-flex-left aui-border-t aui-border-b  aui-padded-10 ">
            <div class="aui-flex-item-12 aui-flex-row aui-flex-left aui-font-size-14">活动详情</div>

        </div>
        <div class="aui-flex-row aui-padded-b-0 aui-border-b">
            <div class="aui-flex-col aui-padded-0">
                <p class=" aui-font-size-12  aui-padded-5">
                    活动介绍。活动介绍。活动介绍。活动介绍。活动介绍。活动介绍。活动介绍。活动介绍。活动介绍。活动介绍。活动介绍。活动介绍。活动介绍。活动介绍。活动介绍。活动介绍。活动介绍。活动介绍。活动介绍。
                </p>
                <div><img
                        src="https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1162612338,2238057927&fm=27&gp=0.jpg"/>
                </div>
                <div><img
                        src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1511717943376&di=07c9cef15eb894e8ad03bcdf6ddb6627&imgtype=0&src=http%3A%2F%2Fa1.att.hudong.com%2F35%2F53%2F28300542091864137456530449427.jpg"/>
                </div>
                <div><img
                        src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1511718082232&di=57360dc14165fe974913e4eb0cf232a5&imgtype=0&src=http%3A%2F%2Fpic.qiantucdn.com%2F58pic%2F18%2F09%2F56%2F49G58PICKCz_1024.jpg"/>
                </div>
                <div><img src="http://fa1.cnlinfo.net/up/info1/16091910120517781201.jpg"/></div>
                <div><img
                        src="https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1162612338,2238057927&fm=27&gp=0.jpg"/>
                </div>
                <div><img
                        src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1511717943376&di=07c9cef15eb894e8ad03bcdf6ddb6627&imgtype=0&src=http%3A%2F%2Fa1.att.hudong.com%2F35%2F53%2F28300542091864137456530449427.jpg"/>
                </div>
                <div><img
                        src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1511718082232&di=57360dc14165fe974913e4eb0cf232a5&imgtype=0&src=http%3A%2F%2Fpic.qiantucdn.com%2F58pic%2F18%2F09%2F56%2F49G58PICKCz_1024.jpg"/>
                </div>
                <div><img
                        src="https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1162612338,2238057927&fm=27&gp=0.jpg"/>
                </div>
                <div><img
                        src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1511717943376&di=07c9cef15eb894e8ad03bcdf6ddb6627&imgtype=0&src=http%3A%2F%2Fa1.att.hudong.com%2F35%2F53%2F28300542091864137456530449427.jpg"/>
                </div>
                <div><img
                        src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1511718082232&di=57360dc14165fe974913e4eb0cf232a5&imgtype=0&src=http%3A%2F%2Fpic.qiantucdn.com%2F58pic%2F18%2F09%2F56%2F49G58PICKCz_1024.jpg"/>
                </div>
                <div><img src="http://fa1.cnlinfo.net/up/info1/16091910120517781201.jpg"/></div>
            </div>
        </div>
        <div class="aui-flex-row">
            <div class="aui-list aui-collapse ">
                <div class="aui-collapse-item  aui-font-size-12">
                    <div class="aui-list-item aui-collapse-header" tapmode>
                        <div class="aui-list-item-inner ">
                            <div class="aui-list-item-title">价格声明</div>
                            <div class="aui-list-item-right">
                                <i class="aui-iconfont aui-icon-down aui-collapse-arrow"></i>
                            </div>
                        </div>
                    </div>
                    <div class="aui-collapse-content aui-padded-15 aui-font-size-10">
                        <p>单独参与价格：是您发起1人团时活动的原价。</p>
                        <p>发起拼团价格：根据活动组织方定义，拼主享有的活动价格优惠。</p>
                        <p>参团价格：是您参加好友发起的活动拼团价格。</p>
                        <p>划线价格：活动组织方提供的活动参考价格，并非《价格法》、《禁止价格欺诈行为的规定》规定的“原价”，仅供参考。</p>
                        <p>特别提醒：实际成交价格根据您选择的团购人数、时间、礼品、保险等发生变化，最终以订单结算页的价格为准。若组织方单独对活动价格进行定义的，以组织方的表述为准。</p>
                    </div>

                </div>
            </div>

        </div>
    </div>
    <div class="Seg-line"></div>
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
<%--弹出活动选择框--%>
<div id="actChoices">
    <div id="modal" class="modal"></div>
    <%--弹出窗遮罩层--%>
    <div class="modal-choices-frame" id="modal-choices-frame">

        <%--顶部--%>
        <div style="height: 3.5rem;" class="aui-border-b">
            <div class="aui-flex-col aui-flex-left ">
                <div class=" aui-flex-row aui-flex-middle aui-padded-l-5"
                     style="width:5rem;height: 5rem;position:relative;top:-1.6rem;z-index: 11;">
                    <img src="<%=basePath%>resources/test/my/image/liulangnan.png" style="border-radius:0.3rem;">
                </div>

                <div class=" aui-flex-row aui-flex-middle aui-flex-left aui-flex-middle aui-padded-l-5">
                    <div style="position:relative;top:-1rem;width:9rem;">
                        <div class="aui-font-size-10 aui-ellipsis-1">
                            <font size="4" color="red">￥83</font>
                            <del>&nbsp;￥156&nbsp;</del>
                        </div>
                        <div class="aui-font-size-10 aui-ellipsis-1">
                            已拼<font color="red">25人</font>&nbsp;&nbsp;&nbsp;满<font color="red">30人</font>活动开启
                        </div>
                        <div class="aui-font-size-12 aui-ellipsis-1">
                            已选：<strong>5人团/保险/相册、水晶/儿童1人/其他其他其他</strong>
                        </div>
                    </div>
                </div>
                <div style="position:absolute;right: 0;" class="aui-padded-10">
                    <span id="closeBtn" class="aui-iconfont aui-icon-close"></span>
                </div>
            </div>
        </div>

        <%--分割条--%>
        <%--中部--%>
        <div style="height: 13.5rem;overflow-y:auto;">
            <div id="actTime" class=" aui-padded-t-5 aui-padded-b-5">
                <div class="choice-title">日期</div>
                <div class="aui-flex-col aui-flex-left ">
                    <div name="111" class="choice-item-div choice-actived">2017年12月23日（周六）</div>
                    <div name="111" class="choice-item-div">2017年12月23日（周日）</div>
                </div>
            </div>
            <hr class="aui-hr"/>
            <div id="actType" class="aui-padded-t-5 aui-padded-b-5">
                <div class="choice-title">拼团人数</div>
                <div class="aui-flex-col aui-flex-left ">
                    <div name="112" class="choice-item-div">1人团</div>
                    <div name="112" class="choice-item-div">2人团</div>
                    <div name="112" class="choice-item-div">3人团</div>
                    <div name="112" class="choice-item-div">5人团</div>
                    <div name="112" class="choice-item-div">10人团</div>
                    <div name="112" class="choice-item-div">15人团</div>
                    <div name="112" class="choice-item-div">20人团</div>
                    <div name="112" class="choice-item-div">30人团（拼主免单）</div>
                </div>
            </div>
            <hr class="aui-hr"/>
            <div id="actType2" class="aui-padded-t-5 aui-padded-b-5">
                <div class="choice-title">纪念品</div>
                <div class="aui-flex-col aui-flex-left ">
                    <div name="1152" class="choice-item-div">相册</div>
                    <div name="1152" class="choice-item-div">水晶</div>
                    <div name="1152" class="choice-item-div">围巾</div>
                    <div name="1152" class="choice-item-div">纪念手环</div>
                </div>
            </div>
            <hr class="aui-hr"/>
            <div id="actType3" class="aui-padded-t-5 aui-padded-b-5">
                <div class="choice-title">购买活动险</div>
                <div class="aui-flex-col aui-flex-left ">
                    <div name="1132" class="choice-item-div choice-actived">是</div>
                    <div name="1132" class="choice-item-div">否</div>
                </div>
            </div>
            <hr class="aui-hr"/>
            <div id="actType4" class="aui-padded-t-5 aui-padded-b-5">
                <%--<div class="choice-title">携带身高1.2-1.5米儿童</div>--%>
                <%--<div class="aui-flex-col aui-flex-left ">
                   <div name="1122" class="choice-item-div">是</div>
                   <div name="1122" class="choice-item-div">否</div>
                </div>--%>
                <div class="aui-flex-col ">
                    <div class="aui-flex-item-8 choice-title">携带身高1.2-1.5米儿童</div>
                    <div class="aui-flex-item-4">
                        <%--
                        <div class="aui-bar aui-bar-btn "  type="count" id="demo">
                           <div class="aui-bar-btn-item aui-font-size-6 aui-pull-left" style="width: 0.6rem;height: 0.6rem;">
                              <i class="aui-iconfont aui-icon-minus"></i>
                           </div>
                           &lt;%&ndash;<div class="aui-bar-btn-item">&ndash;%&gt;
                              <input type="number" class="aui-input aui-text-center aui-pull-left" id="count" value="0">&lt;%&ndash;
                           </div>
                           <div class="aui-bar-btn-item aui-font-size-10 aui-pull-left">&ndash;%&gt;
                              <i class="aui-iconfont aui-icon-plus"></i>
                           &lt;%&ndash;</div>&ndash;%&gt;
                        </div>

                     --%>
                        <div class="aui-flex-col ">
                            <div class="aui-flex-item-4">
                                <div class="aui-btn ">
                                    <i class="aui-iconfont aui-icon-minus"></i>
                                </div>
                            </div>
                            <div class="aui-flex-item-4">
                                <div class="aui-btn aui-flex-row aui-flex-middle">
                                    <input type="text" readonly value="0">
                                </div>
                            </div>
                            <div class="aui-flex-item-4">
                                <div class="aui-btn ">
                                    <i class="aui-iconfont aui-icon-plus"></i>
                                </div>
                            </div>
                        </div>
                        <%--<div class="aui-btn ">
                           <i class="aui-iconfont aui-icon-minus"></i>
                        </div>
                        <div ><input type="text" readonly value="0"></div>
                        <div class="aui-btn ">
                           <i class="aui-iconfont aui-icon-plus"></i>
                        </div>--%>
                    </div>
                </div>
            </div>
            <hr class="aui-hr"/>
        </div>
        <%--底部--%>
        <div style="height: 2rem;background-color: red;text-align: center;" class="aui-flex-row aui-flex-middle">
            <font size="3" color="white">确定</font>
        </div>
    </div>
</div>
<%--弹出当前拼团中选择框--%>
<div id="actNowGroups">
    <div id="modal" class="modal"></div>
    <%--弹出窗遮罩层--%>
    <div class="modal-nowGroups-frame" id="modal-nowGroups-frame">
        <%--顶部--%>
        <div class="aui-flex-col aui-border-b" style="height:15%;">
            <%--<div class=" aui-flex-row aui-flex-middle aui-flex-item-2 "
                 style="width:10%;height:10%;">
                <img src="<%=basePath%>resources/test/my/image/liulangnan.png">
            </div>--%>

            <div class=" aui-flex-row aui-flex-center aui-flex-middle aui-flex-item-12 ">
                进行中的拼团
            </div>
            <div id="nowGroups-close" style="position:absolute;top:0;right: 0;" class="aui-padded-5">
                <span id="closeBtn2" class="aui-iconfont aui-icon-close"></span>
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
        <%--底部--%>
        <%--<div style="height: 10%;background-color: red;text-align: center;" class="aui-flex-row aui-flex-middle">
           <font size="3" color="white">确定</font>
        </div>--%>
    </div>
</div>

<%--回顶部按钮--%>
<div id="backTop" style="display: none;">回顶部</div>
<%--弹出拼团小提示--%>
<div id="buyTip">
    <div class="aui-tips" style="height: 1rem;border-radius: 0.3rem;">
        <img class="aui-img-round" style="width: 1rem;height: 1rem;"
             src="<%=basePath%>resources/test/store/themes/img/icon/icon-usa.png" alt="">
        <div class="aui-ellipsis-1" style="max-width:4rem;font-size:0.6rem;padding-right: 0.2rem;">LM小小的天猫猫猫</div>
        <div class="aui-tips-title aui-ellipsis-1">5小时前参与了该拼团</div>
    </div>
</div>
<%--底部固定拼团按钮--%>
<footer class="aui-bar aui-bar-tab" style="font-size: 0.7rem;">
    <div class="aui-bar-tab-item" tapmode style="width: 2.3rem;">
        <i class="aui-iconfont aui-icon-home aui-text-gray"></i>
        <div class="aui-bar-tab-label aui-text-gray">首页</div>
    </div>
    <div class="aui-bar-tab-item" tapmode style="width: 2.3rem;">
        <i class="aui-iconfont aui-icon-like aui-text-gray"></i>
        <div class="aui-bar-tab-label aui-text-gray">收藏</div>
    </div>
    <div class="aui-bar-tab-item" tapmode style="width: 2.3rem;">
        <i class="aui-iconfont aui-icon-comment aui-text-danger"></i>
        <div class="aui-bar-tab-label aui-text-danger">客服</div>
    </div>
    <div id="open-joinGroup-frame" class="aui-bar-tab-item aui-bg-warning aui-text-white " tapmode style="width: auto;">
        参与拼团
    </div>
    <div id="open-choices-frame" class="aui-bar-tab-item aui-bg-danger aui-text-white js-open-modal" tapmode
         style="width: auto;">发起拼团
    </div>
</footer>
</body>

<script src="<%=basePath%>resources/test/my/js/popGroupChoices.js"></script>
<%--弹出选项js--%>

<script src="<%=basePath%>resources/test/store/themes/js/jquery.min.js"></script>

<script src="<%=basePath%>resources/test/my/js/scrolling-element.js"></script>
<%--解决部分浏览器不支持 document.scrollingElement.scrollTop--%>

<script type="text/javascript" src="<%=basePath%>resources/test/my/js/aui-tab.js"></script>
<%--按钮组单选框--%>

<script type="text/javascript" src="<%=basePath%>resources/test/my/js/aui-slide.js"></script>
<script type="text/javascript" src="<%=basePath%>resources/test/my/js/aui-scroll.js"></script>
<script type="text/javascript" src="<%=basePath%>resources/test/my/js/aui-collapse.js"></script>

<script>
    /*打开弹出选项*/
    $(function () {
        /*弹出遮罩层*/
        function openModal(type) {
//         alert(popId2);
            if (type != 1 && type != 2) {
                return;
            }
            document.getElementById('modal').style.display = 'block';
//         document.getElementById('modal-choices-frame').style.display = 'block';
            if (type == 1) {
                document.getElementById('modal-choices-frame').style.display = 'block';
            }
            if (type == 2) {
                document.getElementById('modal-nowGroups-frame').style.display = 'block';
            }
//         document.getElementById(popId).style.display = 'block';
            ModalHelper.afterOpen();
        }

        /*关闭遮罩层*/
        function closeModal(type) {
            if (type != 1 && type != 2) {
                return;
            }
            ModalHelper.beforeClose();
            if (type == 1) {
                document.getElementById('modal-choices-frame').style.display = 'none';
            }
            if (type == 2) {
                document.getElementById('modal-nowGroups-frame').style.display = 'none';
            }
//         document.getElementById('modal-choices-frame').style.display = 'none';
//         document.getElementById(popId).style.display = 'none';
            document.getElementById('modal').style.display = 'none';
        }

        /*弹出和关闭活动选项*/
        $('#open-choices-frame').click(function () {
            openModal(1);
        });
        $('#modal,#closeBtn').click(function () {
            closeModal(1);
        });
        /*弹出和关闭活动选项*/

        /*弹出和关闭当前拼团*/
        $('#open-allNowGroup-frame,#open-joinGroup-frame').click(function () {
            openModal(2);
        });
        $('#modal,#nowGroups-close').click(function () {
            closeModal(2);
        });
        /*弹出和关闭当前拼团*/

        /**/
        /*弹出框选项变化*/
        $(".choice-item-div").each(function () {
            $(this).click(function () {
                var divName = $(this).attr("name");
                if ($(this).hasClass("choice-actived")) {
                    $(this).removeClass("choice-actived");
                } else {
                    $("div[name='" + divName + "']").each(function () {
                        if ($(this).hasClass("choice-actived")) {
                            $(this).removeClass("choice-actived");
                        }
                    });
                    $(this).addClass("choice-actived");
                }
            });
        })
        /*弹出框选项变化*/
    });
    /*打开弹出选项*/


    /*折叠面板*/
    var collapse = new auiCollapse({
        autoHide: false //是否自动隐藏已经展开的容器
    });
    /*折叠面板*/

    /*图片轮播*/
    var slide3 = new auiSlide({
        container: document.getElementById("aui-slide3"),
//    "width":300,
        "height": 240,
        "speed": 500,
        "autoPlay": 8000, //自动播放
        "loop": true,
        "pageShow": true,
//      "pageStyle": 'dot',
        "pageStyle": 'none',
        'dotPosition': 'center'
    });
    /*图片轮播*/

    /*滚动回到顶部*//*可结合上拉加载动态添加数据*/
    var scroll = new auiScroll({
        listen: true,
        distance: 200 //判断到达底部的距离，isToBottom为true
    }, function (ret) {
        if (ret.scrollTop >= 400) {
            if (!$('#backTop').is(':visible')) {
                $('#backTop').show();
            }
        } else {
            if ($('#backTop').is(':visible')) {
                $('#backTop').hide();
            }
        }
        /*if(ret.isToBottom){
         document.getElementById("demo").textContent = "已到达底部";
         }else{
         document.getElementById("demo").textContent = "滚动高度："+ret.scrollTop;
         }*/

    });
    $("#backTop").click(function () {
//        if(scrollTop<=50){return;}
        $('body').animate({
            scrollTop: 0
        }, 100);
    });
    /*滚动回到顶部*/

    /*定时弹出购买小条*/
    //   var timeCount = 0;
    setInterval(function () {
//      timeCount = timeCount + 1;
        if (!$('#buyTip').is(':visible')) {
            $('#buyTip').show();
            setTimeout(function () {
                $('#buyTip').hide();//将tip标签隐藏。
            }, 5000);
        }

//      document.getElementById("backTop").textContent = "次数" + timeCount;
    }, 15000);//1000为1秒钟
    /*定时弹出购买小条*/


</script>
</html>
