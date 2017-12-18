<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no, minimal-ui"/>
	<meta name="apple-mobile-web-app-capable" content="yes"/>
	<meta name="apple-mobile-web-app-status-bar-style" content="black"/>
	<meta name="format-detection" content="telephone=no, email=no"/>
	
    <title>优购优品网</title>
    
    
    <link rel="stylesheet" type="text/css" href="<%=basePath%>resources/test/store/themes/css/core.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>resources/test/store/themes/css/icon.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>resources/test/store/themes/css/home.css">
	<link rel="icon" type="image/x-icon" href="<%=basePath%>view/weixin_view/store/favicon.ico">
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="<%=basePath%>view/weixin_view/store/iTunesArtwork@2x.png">
	
  </head>
  
  <body>
  <header class="aui-header-default aui-header-fixed aui-header-bg">
		<a href="#" class="aui-header-item">
			<i class="aui-icon aui-icon-code"></i>
		</a>
		<div class="aui-header-center aui-header-center-clear">
			<div class="aui-header-search-box">
				<i class="aui-icon aui-icon-small-search"></i>
				<input id="" type="text"  placeholder="iphone8 手机钢化膜" class="aui-header-search">
			</div>
		</div>
		<a href="#" class="aui-header-item-icon">
			<i class="aui-icon aui-icon-packet"></i>
			<i class="aui-icon aui-icon-member"></i>
		</a>
	</header>
	<div class="aui-content-box">
		<div class="aui-banner-content aui-fixed-top" data-aui-slider style="hight:30%;">
			<%-- <div class="aui-banner-wrapper">
				<div class="aui-banner-wrapper-item">
					<a href="#">
						<img src="<%=basePath%>resources/test/store/themes/img/banner/banner.jpg">
					</a>
				</div>
				<div class="aui-banner-wrapper-item">
					<a href="#">
						<img src="<%=basePath%>resources/test/store/themes/img/banner/banner1.jpg">
					</a>
				</div>
				<div class="aui-banner-wrapper-item">
					<a href="#">
						<img src="<%=basePath%>resources/test/store/themes/img/banner/banner2.jpg">
					</a>
				</div>
				<div class="aui-banner-wrapper-item">
					<a href="#">
						<img src="<%=basePath%>resources/test/store/themes/img/banner/banner3.jpg">
					</a>
				</div>
			</div> --%>
			<div class="aui-banner-pagination"></div>
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
		<div class="aui-avd-content clearfix">
			<a href="#">
				<img src="<%=basePath%>resources/test/store/themes/img/pd/cf-1.jpg" alt="">
			</a>
			<a href="#">
				<img src="<%=basePath%>resources/test/store/themes/img/pd/cf-3.jpg" alt="">
			</a>
		</div>
		<div class="aui-slide-box aui-slide-box-clear">
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

		</div>
		<div class="aui-dri"></div>
		<div class="aui-list-content">
			<div class="aui-list-item">
				<div class="aui-list-item-img">
					<img src="<%=basePath%>resources/test/store/themes/img/pd/cf-4.jpg" alt="">
				</div>
				<div class="aui-slide-box">
					<div class="aui-slide-list">
						<ul class="aui-slide-item-list">
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="<%=basePath%>resources/test/store/themes/img/pd/pd-zf-5.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">茵曼2017秋装新款小清新文艺圆领长袖条纹针织衫女套</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥249</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥499</span>
									</p>
								</a>
							</li>
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="<%=basePath%>resources/test/store/themes/img/pd/sf-9.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">科克兰 盐焗烘烤开心果 1.36千克</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥99</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥198</span>
									</p>
								</a>
							</li>
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="<%=basePath%>resources/test/store/themes/img/pd/sf-10.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">榙榙 咸鸭蛋黄饼干 80克/袋</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥12.9</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥49</span>
									</p>
								</a>
							</li>
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="<%=basePath%>resources/test/store/themes/img/pd/sf-11.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">唯他可可 椰子水饮料 330毫升/盒 12盒</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥189</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥299</span>
									</p>
								</a>
							</li>
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="<%=basePath%>resources/test/store/themes/img/pd/sf-12.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">巴黎水 含气青柠味饮料 330毫升 24</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥129</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥199</span>
									</p>
								</a>
							</li>
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="<%=basePath%>resources/test/store/themes/img/pd/sf-13.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">calbee 卡乐比 日本进口休闲零食佳可比黄油味薯条 90克/盒</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥19.9</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥49</span>
									</p>
								</a>
							</li>
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="<%=basePath%>resources/test/store/themes/img/pd/sf-14.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">Calbee 卡乐比 日本进口休闲膨化零食 佳可丽色拉味薯条 60克/杯</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥19</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥49</span>
									</p>
								</a>
							</li>
						</ul>
					</div>

				</div>
			</div>
			
			
			
		</div>
		<div class="aui-recommend">
			<img src="<%=basePath%>resources/test/store/themes/img/bg/icon-tj1.jpg" alt="">
			<!--<h2>为你推荐</h2>-->
		</div>
		<section class="aui-list-product">
			<div class="aui-list-product-box">
				<a href="ui-product.html" class="aui-list-product-item">
					<div class="aui-list-product-item-img">
						<img src="<%=basePath%>resources/test/store/themes/img/pd/sf-20.jpg" alt="">
					</div>
					<div class="aui-list-product-item-text">
						<h3>KOBE LETTUCE 秋冬新款 女士日系甜美纯色半高领宽松套头毛衣针织衫</h3>
						<div class="aui-list-product-mes-box">
							<div>
							<span class="aui-list-product-item-price">
								<em>¥</em>
								399.99
							</span>
								<span class="aui-list-product-item-del-price">
								¥495.65
							</span>
							</div>
							<div class="aui-comment">986评论</div>
						</div>
					</div>
				</a>
				<a href="ui-product.html" class="aui-list-product-item">
					<div class="aui-list-product-item-img">
						<img src="<%=basePath%>resources/test/store/themes/img/pd/sf-21.jpg" alt="">
					</div>
					<div class="aui-list-product-item-text">
						<h3>KOBE LETTUCE 秋冬新款 女士日系甜美纯色半高领宽松套头毛衣针织衫</h3>
						<div class="aui-list-product-mes-box">
							<div>
							<span class="aui-list-product-item-price">
								<em>¥</em>
								399.99
							</span>
								<span class="aui-list-product-item-del-price">
								¥495.65
							</span>
							</div>
							<div class="aui-comment">986评论</div>
						</div>
					</div>
				</a>
				<a href="ui-product.html" class="aui-list-product-item">
					<div class="aui-list-product-item-img">
						<img src="<%=basePath%>resources/test/store/themes/img/pd/sf-22.jpg" alt="">
					</div>
					<div class="aui-list-product-item-text">
						<h3>KOBE LETTUCE 秋冬新款 女士日系甜美纯色半高领宽松套头毛衣针织衫</h3>
						<div class="aui-list-product-mes-box">
							<div>
							<span class="aui-list-product-item-price">
								<em>¥</em>
								399.99
							</span>
								<span class="aui-list-product-item-del-price">
								¥495.65
							</span>
							</div>
							<div class="aui-comment">986评论</div>
						</div>
					</div>
				</a>
				<a href="ui-product.html" class="aui-list-product-item">
					<div class="aui-list-product-item-img">
						<img src="<%=basePath%>resources/test/store/themes/img/pd/sf-23.jpg" alt="">
					</div>
					<div class="aui-list-product-item-text">
						<h3>KOBE LETTUCE 秋冬新款 女士日系甜美纯色半高领宽松套头毛衣针织衫</h3>
						<div class="aui-list-product-mes-box">
							<div>
							<span class="aui-list-product-item-price">
								<em>¥</em>
								399.99
							</span>
								<span class="aui-list-product-item-del-price">
								¥495.65
							</span>
							</div>
							<div class="aui-comment">986评论</div>
						</div>
					</div>
				</a>
			</div>
		</section>
	</div>

	<footer class="aui-footer-default aui-footer-fixed">
		<a href="index.html" class="aui-footer-item aui-footer-active">
			<span class="aui-footer-item-icon aui-icon aui-footer-icon-home"></span>
			<span class="aui-footer-item-text">首页</span>
		</a>
		<a href="class.html" class="aui-footer-item">
			<span class="aui-footer-item-icon aui-icon aui-footer-icon-class"></span>
			<span class="aui-footer-item-text">分类</span>
		</a>
		<a href="find.html" class="aui-footer-item">
			<span class="aui-footer-item-icon aui-icon aui-footer-icon-find"></span>
			<span class="aui-footer-item-text">发现</span>
		</a>
		<a href="car.html" class="aui-footer-item">
			<span class="aui-footer-item-icon aui-icon aui-footer-icon-car"></span>
			<span class="aui-footer-item-text">购物车</span>
		</a>
		<a href="ui-me.html" class="aui-footer-item">
			<span class="aui-footer-item-icon aui-icon aui-footer-icon-me"></span>
			<span class="aui-footer-item-text">我的</span>
		</a>
	</footer>
	<script type="text/javascript" src="<%=basePath%>resources/test/store/themes/js/jquery.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>resources/test/store/themes/js/aui.js"></script>
  
  </body>
</html>
