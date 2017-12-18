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
	
    <title>周周游</title>
    
    <link rel="stylesheet" href="<%=basePath%>resources/test/store/themes/css/core.css">
	<link rel="stylesheet" href="<%=basePath%>resources/test/store/themes/css/icon.css">
	<link rel="stylesheet" href="<%=basePath%>resources/test/store/themes/css/home.css">
	<link rel="icon" type="<%=basePath%>resources/test/store/image/x-icon" href="favicon.ico">
	<link href="iTunesArtwork@2x.png" sizes="114x114" rel="apple-touch-icon-precomposed">
    
    <link rel="stylesheet" type="text/css" href="<%=basePath%>resources/test/aui/css/aui.css" />
  </head>
  
  <body>
  	<!-- <header class="aui-header-default aui-header-fixed aui-header-bg">
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
	</header> -->
	<header class="aui-header-fixed">
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
	</header>
	<section class="aui-scroll-contents">
		<div class="aui-scroll-box" data-ydui-scrolltab>
			<div class="aui-scroll-nav" style="width:25%;">
				<a href="javascript:void(0);" class="aui-scroll-item aui-crt" style="height:40px;">
					<div class="aui-scroll-item-text"><font size="2">热门推荐</font></div>
				</a>
				<a href="javascript:void(0);" class="aui-scroll-item aui-crt" style="height:40px;">
					<div class="aui-scroll-item-text"><font size="2">名胜古迹</font></div>
				</a>
				<a href="javascript:void(0);" class="aui-scroll-item aui-crt" style="height:40px;">
					<div class="aui-scroll-item-text"><font size="2">自然风光</font></div>
				</a>
				<a href="javascript:void(0);" class="aui-scroll-item aui-crt" style="height:40px;">
					<div class="aui-scroll-item-text"><font size="2">同窗欢聚</font></div>
				</a>
				<a href="javascript:void(0);" class="aui-scroll-item aui-crt" style="height:40px;">
					<div class="aui-scroll-item-text"><font size="2">素质拓展</font></div>
				</a>
				<a href="javascript:void(0);" class="aui-scroll-item aui-crt" style="height:40px;">
					<div class="aui-scroll-item-text"><font size="2">亲子出游</font></div>
				</a>
				<a href="javascript:void(0);" class="aui-scroll-item aui-crt" style="height:40px;">
					<div class="aui-scroll-item-text"><font size="2">农趣体验</font></div>
				</a>
				<a href="javascript:void(0);" class="aui-scroll-item aui-crt" style="height:40px;">
					<div class="aui-scroll-item-text"><font size="2">垂钓之乐</font></div>
				</a>
				<a href="javascript:void(0);" class="aui-scroll-item aui-crt" style="height:40px;">
					<div class="aui-scroll-item-text"><font size="2">骑行万里</font></div>
				</a>
				<a href="javascript:void(0);" class="aui-scroll-item aui-crt" style="height:40px;">
					<div class="aui-scroll-item-text"><font size="2">闲聊拱趴</font></div>
				</a>
				<a href="javascript:void(0);" class="aui-scroll-item aui-crt" style="height:40px;">
					<div class="aui-scroll-item-text"><font size="2">其他</font></div>
				</a>
			</div>
			
			
			<div class="aui-scroll-content">
				<div class="aui-scroll-content-item">
					<!-- <div class="aui-class-img" style="height:120px;">
						<img src="http://pic.cclycs.com/pic/0131/13/1632903.jpg" alt="">
					</div> -->
					<h2 class="aui-scroll-content-title">热门推荐<a style="float:right;">查看全部</a></h2>
					
					
					<!-- ----------------------------- -->
					<div class="aui-slide-box">
					<div class="aui-slide-list">
						<ul class="aui-slide-item-list">
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="http://pic.cclycs.com/pic/0131/13/2232845.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">古田县齐云寺1日游</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥89</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥169</span>
									</p>
								</a>
							</li>
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="http://pic.cclycs.com/pic/0131/13/3632859.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">鹤塘镇“孝友无双”木牌坊</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥99</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥198</span>
									</p>
								</a>
							</li>
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="http://pic.cclycs.com/pic/0131/13/1632903.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">泮洋乡高岗草场1日游</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥72.9</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥189</span>
									</p>
								</a>
							</li>
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="http://pic.cclycs.com/pic/0131/13/1732905.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">杉洋镇凤林祠1日游</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥189</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥299</span>
									</p>
								</a>
							</li>
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="http://pic.cclycs.com/pic/0131/13/1932907.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">卓洋乡廖厝温泉1日游</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥129</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥199</span>
									</p>
								</a>
							</li>
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="http://pic.cclycs.com/pic/0131/13/2132909.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">古田县古田极乐寺半日游</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥19.9</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥49</span>
									</p>
								</a>
							</li>
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="http://pic.cclycs.com/pic/0131/13/2732914.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">古田金钟湖山庄1日游</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥19</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥49</span>
									</p>
								</a>
							</li>
						</ul>
					</div>
				</div>
				<!-- ----------------------------- -->
					
				</div>
				<div class="aui-scroll-content-item">
					<%-- <div class="aui-class-img" style="height:120px;">
						<img src="<%=basePath%>resources/test/store/themes/img/pd/cf-8.jpg" alt="">
					</div> --%>
					<h2 class="aui-scroll-content-title">名胜古迹<a style="float:right;">查看全部</a></h2>
					<div class="aui-slide-box">
					<div class="aui-slide-list">
						<ul class="aui-slide-item-list">
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="http://pic.cclycs.com/pic/0131/08/4413233.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">古田县临水宫1日游</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥72.9</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥189</span>
									</p>
								</a>
							</li>
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="http://pic.cclycs.com/pic/0131/13/3632859.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">鹤塘镇“孝友无双”木牌坊</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥99</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥198</span>
									</p>
								</a>
							</li>
							
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="http://pic.cclycs.com/pic/0131/13/2232845.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">古田县齐云寺1日游</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥189</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥299</span>
									</p>
								</a>
							</li>
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="http://pic.cclycs.com/pic/0131/13/3432857.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">鹤塘镇幽岩寺1日游</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥129</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥199</span>
									</p>
								</a>
							</li>
							
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="http://pic.cclycs.com/pic/0131/13/2732914.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">古田金钟湖山庄1日游</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥19</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥49</span>
									</p>
								</a>
							</li>
						</ul>
					</div>
				</div>
				</div>
				<div class="aui-scroll-content-item">
					<h2 class="aui-scroll-content-title">自然风光<a style="float:right;">查看全部</a></h2>
					<div class="aui-slide-box">
					<div class="aui-slide-list">
						<ul class="aui-slide-item-list">
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="http://pic.cclycs.com/pic/0131/13/1632903.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">泮洋乡高岗草场1日游</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥72.9</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥189</span>
									</p>
								</a>
							</li>
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="http://pic.cclycs.com/pic/0131/13/3432923.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">古田县仙山牧场</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥99</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥198</span>
									</p>
								</a>
							</li>
							
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="http://pic.cclycs.com/pic/0131/13/1732905.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">杉洋镇凤林祠1日游</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥189</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥299</span>
									</p>
								</a>
							</li>
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="http://pic.cclycs.com/pic/0131/08/3913228.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">古田县翠屏湖1日游</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥129</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥199</span>
									</p>
								</a>
							</li>
							
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="http://pic.cclycs.com/pic/0131/13/2732914.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">古田金钟湖山庄1日游</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥19</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥49</span>
									</p>
								</a>
							</li>
						</ul>
					</div>
				</div>
				</div>
				<div class="aui-scroll-content-item">
					<h2 class="aui-scroll-content-title">同窗欢聚<a style="float:right;">查看全部</a></h2>
					<div class="aui-slide-box">
					<div class="aui-slide-list">
						<ul class="aui-slide-item-list">
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="http://img0.imgtn.bdimg.com/it/u=2889340654,3214691142&fm=27&gp=0.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">20年同学聚会邀请函</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥266/人</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥189</span>
									</p>
								</a>
							</li>
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="http://pic.cnfla.com/allimg/201606/54-16061611193b96.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">青春不散场，毕业专项摄影</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥86/人</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥198</span>
									</p>
								</a>
							</li>
							
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="http://img4.imgtn.bdimg.com/it/u=505456837,120309303&fm=27&gp=0.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">搞怪创意毕业照拍摄</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥189</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥299</span>
									</p>
								</a>
							</li>
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="http://img2.91.com/uploads/allimg/150625/57-1506251Q920-51.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">毕业季专场主题活动</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥129</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥199</span>
									</p>
								</a>
							</li>
							
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="http://img4.imgtn.bdimg.com/it/u=1554302726,1626954410&fm=27&gp=0.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">再聚，老同学！</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥19</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥49</span>
									</p>
								</a>
							</li>
						</ul>
					</div>
				</div>
				</div>
				<div class="aui-scroll-content-item">
					<h2 class="aui-scroll-content-title">素质拓展<a style="float:right;">查看全部</a></h2>
					<div class="aui-slide-box">
					<div class="aui-slide-list">
						<ul class="aui-slide-item-list">
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1511801490885&di=da622c8143856b1d64db26cbab2dae5c&imgtype=0&src=http%3A%2F%2Femba.hnu.edu.cn%2Fu%2Fcms%2Fwww%2F201410%2F08152634o78m.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">高岗团队户外拓展建设2天1夜</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥266/人</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥189</span>
									</p>
								</a>
							</li>
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=1084952435,3164846425&fm=27&gp=0.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">野战cs邀你一起来战！</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥86/人</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥198</span>
									</p>
								</a>
							</li>
							
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2130416776,2969198692&fm=27&gp=0.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">风筝节，童话里的世界</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥189</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥299</span>
									</p>
								</a>
							</li>
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1511801765826&di=903dfff4d0bf8ebfba430545b07de92b&imgtype=0&src=http%3A%2F%2Ftour.dzwww.com%2Flvnews%2F201702%2FW020170222575006939747.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">风之谷-风车的长廊</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥129</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥199</span>
									</p>
								</a>
							</li>
							
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1512396776&di=3c2cbf76ba0deaf6ac6f3590cc0cd6d4&imgtype=jpg&er=1&src=http%3A%2F%2Fimg1.cache.netease.com%2Fhenan%2F2015%2F5%2F25%2F20150525094505e71ed.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">星空下的小窝-帐篷节</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥19</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥49</span>
									</p>
								</a>
							</li>
						</ul>
					</div>
				</div>
				</div>
				<div class="aui-scroll-content-item">
					<h2 class="aui-scroll-content-title">亲子出游<a style="float:right;">查看全部</a></h2>
					<div class="aui-slide-box">
					<div class="aui-slide-list">
						<ul class="aui-slide-item-list">
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1511802259125&di=0930cb8d370c6c0ab4461595b9e61417&imgtype=0&src=http%3A%2F%2Fszhdtt.51yey.com%2Fupload%2Fschoolimg%2F13550%2F12191041387873.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">亲子运动会！</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥266/人</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥189</span>
									</p>
								</a>
							</li>
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1511802359776&di=50f0c694b897ed708c29ef165d334dc1&imgtype=0&src=http%3A%2F%2Fszhdtt.51yey.com%2Fupload%2Fschoolimg%2F21633%2F09241756696971.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">亲子手工DIY课堂</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥86/人</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥198</span>
									</p>
								</a>
							</li>
							
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1511802416498&di=5fb71cabf2004bea04ed4ab2c87a1ae0&imgtype=0&src=http%3A%2F%2Fersx.cms.jsedu.sh.cn%2Fa%2F10042%2F201605%2F2016%2F0323%2F1458699858511.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">亲子拔河比赛</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥189</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥299</span>
									</p>
								</a>
							</li>
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1512397247&di=e3a07af2795cb7efec2248fe84c63868&imgtype=jpg&er=1&src=http%3A%2F%2Fimages.ccoo.cn%2Fnews%2F2012312%2F201231211090613.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">亲子植树节</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥129</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥199</span>
									</p>
								</a>
							</li>
							
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1511802601385&di=3ab515544b2d6a051dee7572840db1d7&imgtype=0&src=http%3A%2F%2Fnews.cnhubei.com%2Fxw%2Fhb%2Fxy%2F201703%2FW020170307675686927239.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">亲子创意走秀大赛</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥19</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥49</span>
									</p>
								</a>
							</li>
						</ul>
					</div>
				</div>
				</div>
				<div class="aui-scroll-content-item">
					<h2 class="aui-scroll-content-title">农趣体验<a style="float:right;">查看全部</a></h2>
					<div class="aui-slide-box">
					<div class="aui-slide-list">
						<ul class="aui-slide-item-list">
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1512397728&di=9ca0347e4221dee7510430b34ac5df28&imgtype=jpg&er=1&src=http%3A%2F%2Fxh.xhby.net%2Fmp1%2Fimages%2F2006-05%2F24%2FD1524C008_b.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">插秧大赛，等你来体验不一样的农活！</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥266/人</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥189</span>
									</p>
								</a>
							</li>
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1511803079071&di=d44a17b2275e28bb017dedf2f328c932&imgtype=0&src=http%3A%2F%2Fupload.cbg.cn%2F2016%2F0916%2F1474025361622.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">稻谷收割啦，等你来体验！</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥86/人</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥198</span>
									</p>
								</a>
							</li>
							
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1512397976&di=46a141d11121ab9b9751be450e1f1415&imgtype=jpg&er=1&src=http%3A%2F%2Fwww.merit-times.com%2Fnews_pic%2F20151109%2F476454_332743.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">拔萝卜，拔萝卜，嘿呦嘿呦拔萝卜</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥189</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥299</span>
									</p>
								</a>
							</li>
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=772105152,876559995&fm=27&gp=0.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">葡萄采摘季</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥129</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥199</span>
									</p>
								</a>
							</li>
							
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="http://img2.imgtn.bdimg.com/it/u=3584352687,2021708415&fm=27&gp=0.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">农家的一天，拥抱最朴实的农村生活</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥19</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥49</span>
									</p>
								</a>
							</li>
						</ul>
					</div>
				</div>
				</div>
				<div class="aui-scroll-content-item">
					<h2 class="aui-scroll-content-title">垂钓之乐<a style="float:right;">查看全部</a></h2>
					<div class="aui-slide-box">
					<div class="aui-slide-list">
						<ul class="aui-slide-item-list">
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1511804001845&di=9e2b2cfcd4d3e5783e04ee1e3b1ec978&imgtype=0&src=http%3A%2F%2Ftyj.zhengzhou.gov.cn%2Fu%2Fcms%2Ftyj%2F201606%2F231031183708.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">第一届“鱼乐杯”钓鱼大赛</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥266/人</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥189</span>
									</p>
								</a>
							</li>
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1511804001845&di=9e2b2cfcd4d3e5783e04ee1e3b1ec978&imgtype=0&src=http%3A%2F%2Ftyj.zhengzhou.gov.cn%2Fu%2Fcms%2Ftyj%2F201606%2F231031183708.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">第一届“鱼乐杯”钓鱼大赛</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥266/人</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥189</span>
									</p>
								</a>
							</li>
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1511804001845&di=9e2b2cfcd4d3e5783e04ee1e3b1ec978&imgtype=0&src=http%3A%2F%2Ftyj.zhengzhou.gov.cn%2Fu%2Fcms%2Ftyj%2F201606%2F231031183708.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">第一届“鱼乐杯”钓鱼大赛</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥266/人</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥189</span>
									</p>
								</a>
							</li>
						</ul>
					</div>
				</div>
				</div>
				<div class="aui-scroll-content-item">
					<h2 class="aui-scroll-content-title">骑行万里<a style="float:right;">查看全部</a></h2>
					<div class="aui-slide-box">
					<div class="aui-slide-list">
						<ul class="aui-slide-item-list">
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1511804121640&di=75647a7682a867fafca7be34389d8244&imgtype=0&src=http%3A%2F%2Fpic.people.com.cn%2FNMediaFile%2F2014%2F0718%2FMAIN201407181049000054725543289.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">“骑乐无穷”第一届公路自行车大赛</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥266/人</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥189</span>
									</p>
								</a>
							</li>
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1511804121640&di=75647a7682a867fafca7be34389d8244&imgtype=0&src=http%3A%2F%2Fpic.people.com.cn%2FNMediaFile%2F2014%2F0718%2FMAIN201407181049000054725543289.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">“骑乐无穷”第一届公路自行车大赛</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥266/人</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥189</span>
									</p>
								</a>
							</li>
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1511804121640&di=75647a7682a867fafca7be34389d8244&imgtype=0&src=http%3A%2F%2Fpic.people.com.cn%2FNMediaFile%2F2014%2F0718%2FMAIN201407181049000054725543289.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">“骑乐无穷”第一届公路自行车大赛</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥266/人</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥189</span>
									</p>
								</a>
							</li>
						</ul>
					</div>
				</div>
				</div>
				<div class="aui-scroll-content-item">
					<h2 class="aui-scroll-content-title">闲聊拱趴<a style="float:right;">查看全部</a></h2>
					<div class="aui-slide-box">
					<div class="aui-slide-list">
						<ul class="aui-slide-item-list">
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3745977406,3375633747&fm=27&gp=0.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">茶点已备，一起来轰趴！</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥266/人</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥189</span>
									</p>
								</a>
							</li>
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3745977406,3375633747&fm=27&gp=0.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">茶点已备，一起来轰趴！</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥266/人</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥189</span>
									</p>
								</a>
							</li>
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3745977406,3375633747&fm=27&gp=0.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">茶点已备，一起来轰趴！</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥266/人</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥189</span>
									</p>
								</a>
							</li>
						</ul>
					</div>
				</div>
				</div>
				<div class="aui-scroll-content-item">
					<h2 class="aui-scroll-content-title">其他<a style="float:right;">查看全部</a></h2>
					<div class="aui-slide-box">
					<div class="aui-slide-list">
						<ul class="aui-slide-item-list">
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1511803614450&di=c23382edce8e88c0c197b28892be6f63&imgtype=0&src=http%3A%2F%2Fgss0.bdstatic.com%2FyqACvGbaBA94lNC68IqT0jB-xx1xbK%2Fztd%2Fw%3D350%3Bq%3D70%2Fsign%3D635948d9dd2a60595210e71f180f45a6%2Fc2cec3fdfc039245e4de451f8d94a4c27d1e25b2.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">记忆中的童年！伴我成长的游戏</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥266/人</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥189</span>
									</p>
								</a>
							</li>
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1511803614450&di=c23382edce8e88c0c197b28892be6f63&imgtype=0&src=http%3A%2F%2Fgss0.bdstatic.com%2FyqACvGbaBA94lNC68IqT0jB-xx1xbK%2Fztd%2Fw%3D350%3Bq%3D70%2Fsign%3D635948d9dd2a60595210e71f180f45a6%2Fc2cec3fdfc039245e4de451f8d94a4c27d1e25b2.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">记忆中的童年！伴我成长的游戏</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥266/人</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥189</span>
									</p>
								</a>
							</li>
							<li class="aui-slide-item-item">
								<a href="ui-product.html" class="v-link">
									<img class="v-img" src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1511803614450&di=c23382edce8e88c0c197b28892be6f63&imgtype=0&src=http%3A%2F%2Fgss0.bdstatic.com%2FyqACvGbaBA94lNC68IqT0jB-xx1xbK%2Fztd%2Fw%3D350%3Bq%3D70%2Fsign%3D635948d9dd2a60595210e71f180f45a6%2Fc2cec3fdfc039245e4de451f8d94a4c27d1e25b2.jpg">
									<p class="aui-slide-item-title aui-slide-item-f-els">记忆中的童年！伴我成长的游戏</p>
									<p class="aui-slide-item-info">
										<span class="aui-slide-item-price">¥266/人</span>&nbsp;&nbsp;<span class="aui-slide-item-mrk">¥189</span>
									</p>
								</a>
							</li>
						</ul>
					</div>
				</div>
				</div>
			</div>
			
		</div>
	</section>
	<footer  class="aui-bar aui-bar-tab" id="footer">
		<div id="zzy_index" class="aui-bar-tab-item" tapmode>
			<i class="aui-iconfont aui-icon-home"></i>
			<div class="aui-bar-tab-label">首页</div>
		</div>
		<div id="zzy_sort" class="aui-bar-tab-item aui-active" tapmode>
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
  <script type="text/javascript">
	  $("#zzy_index").on("click",function(){
		  //alert("成功");
		  window.location.href='<%=basePath%>zzy/index.htm';
	  });
//	  $("#zzy_sort").on("click",function(){
//		  //alert("成功");
//		  window.location.href='zzy/sort.htm';
//	  });
	  $("#zzy_community").on("click",function(){
		  //alert("成功");
		  window.location.href='<%=basePath%>zzy/community.htm';
	  });
	  $("#zzy_chat").on("click",function(){
		  //alert("成功");
		  window.location.href='<%=basePath%>zzy/chat.htm';
	  });
	  $("#zzy_me").on("click",function(){
		  //alert("成功");
		  window.location.href='<%=basePath%>zzy/me.htm';
	  });

  </script>
  </body>
</html>
