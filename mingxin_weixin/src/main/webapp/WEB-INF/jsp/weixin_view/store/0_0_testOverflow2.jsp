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
    <%--<meta name="description"
          content=" body.modal-open { position: fixed; width: 100%; }
           .modal { background: rgba(0, 0, 0, 0.5);
           position: fixed; top: 0; right: 0; b">--%>
    <link rel="stylesheet" href="<%=basePath%>resources/test/taobao/css/demo.css">
    <title>解决滚动穿透问题 Demo</title>
</head>
<body>
<div id="page"><h2 class="page-header">解决滚动穿透问题 Demo</h2>
    <div class="page-back">
        <a href="/2016-06/mobile-modal-scroll/">Back to Post</a>
    </div>
    <style>
        body.modal-open {
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

        .modal-frame {

            position: fixed;
            display: none;
            left: 0;
            right: 0;
            bottom: 0;
            /*居中位置start*/
            /*top: 50%;
            transform: translateY(-50%);*/
            /*居中位置end*/
            /*top: 70%;
            transform: translateY(-70%);*/
            border: solid 1px #ddd;
            background: #fff;
            padding: 1px;
            z-index: 9000;
        }
    </style>
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
        <div style="text-align: right">
            <button  class="btn" id="btn">关闭</button>
        </div>
        <div style="height:20rem;overflow-y:auto;">
            <div class="am-share-title">
                <img src="http://pic.cclycs.com/pic/0131/08/4413233.jpg" alt=""
                     style="width:6rem;height:6rem;"/>
                <p><font size="5" color="red">￥90</font><del>￥99(9.5折)</del></p>
                <p><font color="#ff4500" size="1.3">当前已团26人</font></p>
                <p>选择：5人团 纪念品 儿童2人</p>
                <span id="del"></span>
            </div>

            这里是可滚动内容<br>
            Modal Content<br>
            Modal Content<br>
            Modal Content<br>
            Modal Content<br>
            Modal Content<br>
            Modal Content<br>
            Modal Content<br>
            Modal Content<br>
            Modal Content<br>
            Modal Content<br>
            Modal Content<br>
        </div>
    </div>
    <script>
        (function () {
            /**
             * ModalHelper helpers resolve the modal scrolling issue on mobile devices
             * https://github.com/twbs/bootstrap/issues/15852
             * requires document.scrollingElement polyfill https://github.com/yangg/scrolling-element
             */
            var ModalHelper = (function (bodyCls) {
                var scrollTop;
                return {
                    afterOpen: function () {
                        scrollTop = document.scrollingElement.scrollTop;
                        document.body.classList.add(bodyCls);
                        document.body.style.top = -scrollTop + 'px';
                    },
                    beforeClose: function () {
                        document.body.classList.remove(bodyCls);
                        // scrollTop lost after set position:fixed, restore it back.
                        document.scrollingElement.scrollTop = scrollTop;
                    }
                };
            })('modal-open');
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
            document.querySelector('#modal').onclick = closeModal;
            document.querySelector('#btn').onclick = closeModal;

        })();
    </script>


</div>

</body>
</html>
