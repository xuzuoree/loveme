<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Exit</title>
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>

</head>
<body>

<%
    session.invalidate();
%>
<div class="alert alert-warning alert-dismissible" role="alert" style="margin-top: 10px">
    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span>
    </button>
    <strong>注销成功
    </strong>
    <span id="jumpTo">5</span>秒后自动返回首页
    <p><a href="../login.jsp">立即返回</a></p>

</div>
</body>
<script>
    window.onload=function () {
        let timer=5;
        setInterval(()=>{
            timer--;
            document.getElementById('jumpTo').innerText=timer;
            if (timer == 0) {
                location.href = '../login.jsp';
            }
        },1000)
    }
</script>
</html>
