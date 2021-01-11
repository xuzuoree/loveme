<%@ page import="edu.gyu.stu.model.User" %>
<%--
  Created by IntelliJ IDEA.
  User: 远上寒山
  Date: 2020/12/8
  Time: 21:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
<%
    String path=request.getContextPath();
%>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>Welcome </title>
    <!-- Bootstrap -->
    <link href="<%=path%>/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="<%=path%>/bootstrap-3.3.7-dist/js/jquery-2.0.0.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="<%=path%>/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>


    <style>

    </style>
</head>
<body>

<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">学生信息管理系统&nbsp;<span id="fold" class="glyphicon glyphicon-step-backward"></span></a>

        </div>

        <ul class="nav navbar-nav navbar-right">
            <%
                User user=(User)request.getSession().getAttribute("user");
            %>
            <li><a href="#">欢迎<span class="text-danger">&nbsp<%=user.getUsername()%></span></a></li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                   aria-expanded="false">个人中心 <span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li><a href="#">个人信息</a></li>
                    <li><a href="#">修改密码</a></li>

                    <li role="separator" class="divider"></li>
                    <li><a href="admin/exit.jsp">注销</a></li>
                </ul>
            </li>
        </ul>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<div class="container-fluid">
    <div class="row">
        <!--    左侧菜单栏-->
        <div id="left" class="col-sm-2">
            <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingOne">
                        <h4 class="panel-title">
                            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne"
                               aria-expanded="true" aria-controls="collapseOne">
                                <span class="glyphicon glyphicon-user"></span> 学生管理
                            </a>
                        </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse i" role="tabpanel" aria-labelledby="headingOne">
                        <div class="panel-body">
                            <!--                        https://v3.bootcss.com/components/#list-group-->
                            <ul class="list-group">
                                <li class="list-group-item"><a href="stu">学生列表</a></li>

                            </ul>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingTwo">
                        <h4 class="panel-title">
                            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion"
                               href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                <span class="glyphicon glyphicon-apple"></span> 系统管理
                            </a>
                        </h4>
                    </div>
                    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                        <div class="panel-body">
                            <ul class="list-group">
                                <li class="list-group-item"><a href="">系统状态</a></li>
                                <li class="list-group-item"><a href="">数据备份</a></li>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <!--    网页内容部分-->
        <div id="mainContent" class="col-sm-10">
            <!--          巨幕-->
            <div class="jumbotron">
                <h1>Hello, world!</h1>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci assumenda atque, autem corporis dignissimos error est id ipsa itaque nam nobis nulla numquam provident quaerat quibusdam repellendus tempore temporibus vel.</p>
                <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a></p>
            </div>
            <!--            可关闭的警告框-->
            <div class="alert alert-warning alert-dismissible" role="alert">
                <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <strong>Warning!</strong>
                <h2>I like you ,but just like you!</h2>
                <h2>纵然万劫不复，纵然相思入骨，我也待你眉眼如初，岁月如故。</h2>
                <p>
                    <button class="btn btn-primary">接受</button>
                    <button class="btn btn-danger">拒绝</button>
                </p>
            </div>
            <!--面板-->
            <div class="panel panel-default">
                <div class="panel-heading"><span class="glyphicon glyphicon-flash"></span>系统状态</div>
                <div class="panel-body">
                    <label for="">CPU使用率</label>
                    <div class="progress">
                        <div class="progress-bar progress-bar-success progress-bar-striped" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                            40%<span class="sr-only">40% Complete (success)</span>
                        </div>
                    </div>
                    <label for="">内存使用率</label>
                    <div class="progress">
                        <div class="progress-bar progress-bar-info progress-bar-striped" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                            20%<span class="sr-only">20% Complete</span>
                        </div>
                    </div>
                    <label for="">存储使用率</label>
                    <div class="progress">
                        <div class="progress-bar progress-bar-warning progress-bar-striped" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                            60%<span class="sr-only">60% Complete (warning)</span>
                        </div>
                    </div>
                    <label for="">网络使用率</label>
                    <div class="progress">
                        <div class="progress-bar progress-bar-danger progress-bar-striped" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                            80%<span class="sr-only">80% Complete (danger)</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



</body>
</html>

