<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <meta charset="utf-8">
    <meta name="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="author" content="Brook">
    <link rel="stylesheet" href="<%=basePath%>resources/test/my/css/aui.css"><%--弹出选项样式--%>
    <title>测试按钮组</title>

</head>
<body>


    <script type="text/javascript" src="<%=basePath%>resources/test/my/js/api.js" ></script>
    <script type="text/javascript" src="<%=basePath%>resources/test/my/js/aui-tab.js" ></script>
</body>
</html>
