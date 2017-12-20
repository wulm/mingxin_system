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

            <div >
                <div >选择日期</div>
                <ul class="dowebok">
                    <li><input type="radio" name="radio1" data-labelauty="2017年12月6日（周六）08:15-16:40"></li>
                    <li><input type="radio" name="radio1" data-labelauty="2017年12月7日（周日）08:15-16:40"></li>
                </ul>
                <div >开团人数</div>
                <ul class="dowebok">
                    <li><input  type="radio" name="radio" data-labelauty="1人"></li>
                    <li><input type="radio" name="radio" data-labelauty="2人"></li>
                    <li><input type="radio" name="radio" data-labelauty="3人"></li>

                    <li><input type="radio" name="radio" data-labelauty="5人"></li>

                    <li><input type="radio" name="radio" data-labelauty="8人"></li>

                    <li><input type="radio" name="radio" data-labelauty="10人"></li>
                    <li><input type="radio" name="radio" data-labelauty="15人"></li>
                    <li><input type="radio" name="radio" data-labelauty="20人"></li>
                    <li><input type="radio" name="radio" data-labelauty="30人(拼主0.5元)"></li>
                </ul>

                <div >是否购买纪念品</div>
                <ul class="dowebok">
                    <li><input type="checkbox" name="checkbox" data-labelauty="不购买"></li>
                    <li><input type="checkbox" name="checkbox" data-labelauty="相册"></li>
                    <li><input type="checkbox" name="checkbox" data-labelauty="围巾"></li>
                    <li><input type="checkbox" name="checkbox" data-labelauty="水晶"></li>
                    <li><input type="checkbox" name="checkbox" data-labelauty="纪念衫"></li>

                </ul>
                <div >购买保险</div>
                <ul class="dowebok">
                    <li><input type="radio" name="radio3" data-labelauty="是"></li>
                    <li><input type="radio" name="radio3" data-labelauty="否"></li>
                </ul>
                <div >携带12岁以下儿童</div>
                <ul class="dowebok">
                    <li><input type="radio" name="radio4" data-labelauty="是"></li>
                    <li><input type="radio" name="radio4" data-labelauty="否"></li>
                </ul>
            </div>


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
