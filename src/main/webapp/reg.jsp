<%@ page import="edu.gyu.stu.util.Info" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>注册</title>
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
    <script>

        function check() {
            let pass1 = document.getElementById("password1")
            let pass2 = document.getElementById("password2")
            if (pass1.value != pass2.value) {
                //html5表单验证自定义错误信息
                pass1.setCustomValidity("两次输入的密码要相同！");

            } else {
                pass1.setCustomValidity("");
            }

        }

    </script>

</head>
<body>
<div class="container-fluid">
    <div class="col-sm-4 col-sm-offset-4" style="margin-top: 70px">
        <h1 class="text-center">用户注册</h1>
    </div>
    <div class="row">
        <div class="col-sm-4 col-sm-offset-4">
            <form action="reg" method="post">
                <div class="form-group">
                    <label for="username">用户名</label>

                    <input type="text" class="form-control" id="username" name="username" placeholder="用户名" required
                           minlength="2">
                </div>
                <div class="form-group">
                    <label for="password1">密码</label>
                    <input type="password" class="form-control" id="password1" name="password" placeholder="密码"
                           required minlength="6" onchange="check()">
                </div>
                <div class="form-group">
                    <label for="password2">再次输入密码</label>
                    <input type="password" class="form-control" id="password2" placeholder="密码"
                           required minlength="6" onchange="check()">
                </div>
                <button type="submit" style="margin-top: 10px" class="btn btn-primary btn-block">注册</button>
            </form>
            <%
                Info info = (Info) request.getAttribute("info");
                if (info != null) {
            %>
            <div class="alert alert-warning alert-dismissible" role="alert" style="margin-top: 10px">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
                <strong><%=info.getMsg()%>
                </strong>
                <%
                    if (info.isSuccess()) {
                        out.write(" <strong><a href=\"login.jsp\" class=\"alert-link\">登录</a></strong>");
                    }
                %>

            </div>
            <%
                }
            %>


        </div>
    </div>
</div>
</body>
</html>
