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
</head>

<body>
	<section class="aui-content">
		 <div class="aui-card-list">
            
            <div class="aui-card-list-content aui-content" style="margin-left:5px;margin-right:5px;margin-top:5px;">
            	<div ><img height="180;" width="auto;" src="https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1162612338,2238057927&fm=27&gp=0.jpg" /></div>
            	
            	三宝脐橙采摘季！体验采摘乐趣！免费带走2kg正宗脐橙！
            </div>
            <div class="aui-card-list-footer">
                <div><font color="red" size="5">￥30.0</font><font size="2">已拼15人</font></div>
              	<div style="position:relative;">
					<img style="width:28px;height:28px;border-radius:28px;float:left;" src="http://img3.imgtn.bdimg.com/it/u=989658414,3202898163&fm=27&gp=0.jpg" />
					<img style="width:28px;height:28px;border-radius:28px;float:left;" src="https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=855993489,1247773910&fm=27&gp=0.jpg" />
				</div>
                <div class="aui-btn aui-btn-danger">去咖溜</div>
            </div>
        </div>
		
	</section>
</body>
<script type="text/javascript" src="<%=basePath%>resources/test/aui/script/api.js"></script>
<script type="text/javascript">
    apiready = function(){
        api.parseTapmode();
    }

</script>
</html>
