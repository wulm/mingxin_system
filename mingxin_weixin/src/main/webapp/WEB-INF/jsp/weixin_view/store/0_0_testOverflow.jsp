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
    <link rel="stylesheet" href="<%=basePath%>resources/test/my/css/popNotice.css"><%--弹出选项样式--%>
    <link rel="stylesheet" href="<%=basePath%>resources/test/my/css/phoneBase.css"><%--手机网页基础字体定义--%>
    <title>解决滚动穿透问题 Demo</title>
</head>
<body>
<div id="page">
    <h2 class="page-header">解决滚动穿透问题 Demo</h2>

    <div class="text-center">
        <a class="js-open-modal" href="javascript:" target="_blank" rel="external">Open Modal</a>
        <div style="height:50rem">
            <div>请使用手机浏览</div>
            <img src="https://www.uedsky.com/qr?desktop-only=1">
        </div>
        <a class="js-open-modal" href="javascript:" target="_blank" rel="external">Open Modal 2 (restore scrolling
            position)</a>
        <div style="height:80rem"></div>
    </div>
    <div id="modal" class="modal">
    </div>

    <div class="modal-frame" id="modal-frame">

        <div class="modal-frame-header">
            <div class="titleText">拼团规则</div>
            <span  class="closeBtn" id="closeBtn">×</span>
        </div>
        <div class="modal-frame-content">

            这里是可滚动内容<br>
            Modal Content<br>
            Modal Content<br>
            Modal Content<br>
            Modal Content<br>
            Modal Content<br>
            Modal Content<br>
            Modal Content<br>
            <hr/>
            Modal Content<br>
            Modal Content<br>
            Modal Content<br>
            Modal Content<br>
            Modal Content<br>
            Modal Content<br>
            Modal Content<br>
            <hr/>
            Modal Content<br>
            Modal Content<br>
            Modal Content<br>
            Modal Content<br>
            Modal Content<br>
        </div>
        <div class="modal-frame-footer"><button>按钮</button></div>
    </div>

    <script src="<%=basePath%>resources/test/my/js/popNotice.js"></script><%--弹出选项js--%>
    <script src="<%=basePath%>resources/test/my/js/scrolling-element.js"></script>
    <script>
        (function () {

            function openModal() {
                document.getElementById('modal').style.display = 'block';
                document.getElementById('modal-frame').style.display = 'block';
                ModalHelper.afterOpen();
            }
            function closeModal() {
                ModalHelper.beforeClose();
                document.getElementById('modal-frame').style.display = 'none';
                document.getElementById('modal').style.display = 'none';
            }
            var btns = document.querySelectorAll('.js-open-modal');
            btns[0].onclick = openModal;
            btns[1].onclick = openModal;

//            $(".js-open-modal").click(function(){ openModal; });

//            document.querySelector('#modal').onclick = closeModal;
            document.querySelector('#closeBtn').onclick = closeModal;
            /*$("#modal").click(function(){ closeModal; });
            $("#closeBtn").click(function(){ closeModal; });*/

        })();
    </script>
</div>
</body>
</html>
