<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html >
    <head>
        <base href="<%=basePath%>">
        <title>首页--鸣心活动</title>
        <link href="<%=basePath%>resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="<%=basePath%>resources/css/home.css">
        <link rel="stylesheet" href="<%=basePath%>resources/css/foot-nav.css">
    </head>
    <body>
        <div class="h-container">
            <!--固定头部-->
            <div class="header navbar-fixed-top" id="h-nav" style="hight:200px;">
                
                <div class="input-group">
                    <span class="glyphicon glyphicon-search"></span>
                    <input type="text" placeholder="搜索商品名称" style="hight:200px;">
                </div>
                <span><a href="#">登录</a></span>
            </div>
            <!--轮播图-->
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="3"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="<%=basePath%>resources/img/carousel-1.jpg" alt="...">
                    </div>
                    <div class="item">
                        <img src="<%=basePath%>resources/img/carousel-2.jpg" alt="...">
                    </div>
                    <div class="item">
                        <img src="<%=basePath%>resources/img/carousel-3.jpg" alt="...">
                    </div>
                    <div class="item">
                        <img src="<%=basePath%>resources/img/carousel-4.jpg" alt="...">
                    </div>
                </div>
        	</div>
        	<!--商城早报-->
            <div class="news">
                <span class="title">商城早报</span>
                <span>|&#x3000;轻薄、漂亮、好用！首批小米5c用户评价...</span>
            </div>
            <!--内容-->
            <div class="h-content">
                <section class="part-one">
                    <div class="pull-left">
                        <img src="<%=basePath%>resources/img/tel-1.png" alt="">
                    </div>
                    <div class="pull-right">
                        <div class="top">
                            <img src="<%=basePath%>resources/img/tel-2.png" alt="">
                        </div>
                        <div class="bottom">
                            <img src="<%=basePath%>resources/img/tel-3.png" alt="">
                        </div>
                    </div>
                </section>
                <div class="clearfix"></div>
                <section class="banner">
                    <img src="<%=basePath%>resources/img/tel-4.png" alt="">
                </section>
                <!--明星单品-->
                <section class="banner item">
                    <h1>明星单品</h1>
                    <img src="<%=basePath%>resources/img/live.png" alt="">
                    <div class="tel">
                        <figure>
                            <img src="<%=basePath%>resources/img/tel-6.png" alt="">
                            <figcaption>
                                <p>红米Note 4 32CB版</p>
                                <p>全金属</p>
                                <p>￥999</p>
                            </figcaption>
                        </figure>
                        <figure>
                            <img src="<%=basePath%>resources/img/tel-6.png" alt="">
                            <figcaption>
                                <p>红米Note 4 32CB版</p>
                                <p>全金属</p>
                                <p>￥999</p>
                            </figcaption>
                        </figure>
                        <figure>
                            <img src="<%=basePath%>resources/img/tel-6.png" alt="">
                            <figcaption>
                                <p>红米Note 4 32CB版</p>
                                <p>全金属</p>
                                <p>￥999</p>
                            </figcaption>
                        </figure>
                        <figure>
                            <img src="<%=basePath%>resources/img/tel-6.png" alt="">
                            <figcaption>
                                <p>红米Note 4 32CB版</p>
                                <p>全金属</p>
                                <p>￥999</p>
                            </figcaption>
                        </figure>
                    </div>
                </section>
            
            </div>
        </div>
        <div class="u-nav navbar-fixed-bottom">
            <div class="container">
                <ul class="list-unstyled">
                    <li>
                        <a href="home.html" id="nav-visited">
                            <span class="glyphicon glyphicon-home u-icon"></span><br>
                            <span>首页</span>
                        </a>
                    </li>
                    <li>
                        <a href="sort.html">
                            <span class="glyphicon glyphicon-th-large u-icon"></span><br>
                            <span>分类</span>
                        </a>
                    </li>
                    <li>
                        <a href="cart.html">
                            <span class="glyphicon glyphicon-shopping-cart u-icon"></span><br>
                            <span>购物车</span>
                        </a>
                    </li>
                    <li>
                        <a href="user.html">
                            <span class="glyphicon glyphicon-user u-icon"></span><br>
                            <span>我的</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <script src="<%=basePath%>resources/bootstrap/js/jquery.min.js"></script>
        <script src="<%=basePath%>resources/bootstrap/js/bootstrap.min.js"></script>
        <script>
            $('.carousel').carousel({
                interval: 3000
            });
            $(window).scroll(function () {
                if ($(document).scrollTop()>0) {
                   $("#h-nav").addClass("changeColor");
                   console.log("我");
                }else{
                    $("#h-nav").addClass("recover");
                }
            });
        </script>
    </body>
</html>