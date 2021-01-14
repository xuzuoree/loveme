<%--
  Created by IntelliJ IDEA.
  User: 远上寒山
  Date: 2020/12/23
  Time: 9:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.List" %>
<%@ page import="edu.gyu.stu.model.Student" %>
<%@ page import="edu.gyu.stu.model.User" %>
<%@ page import="java.util.logging.Logger" %>
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
    <title>学生信息</title>
    <!-- Bootstrap -->
    <link href="<%=path%>/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="<%=path%>/bootstrap-3.3.7-dist/js/jquery-2.0.0.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="<%=path%>/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <style>
        .pagination>.active>a, .pagination>.active>a:focus, .pagination>.active>a:hover, .pagination>.active>span, .pagination>.active>span:focus, .pagination>.active>span:hover {
            z-index: 3;
            color: #fff;
            cursor: default;
            background-color: #337ab7;
            border-color: #337ab7;
        }
    </style>

    <style>

    </style>
</head>
<%
    List<Student> students = (List<Student>) request.getAttribute("stus");
    Logger.getLogger("student.jsp").info(students.toString());
    User user = (User) session.getAttribute("user");
    Integer totalPages = (Integer) request.getAttribute("totalPages");

%>
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
                    <li><a href="#">欢迎<span class="text-danger"> <%=user.getUsername()%></span></a></li>
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
                                        <li class="list-group-item"><a href="">学生列表</a></li>

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
                    <div>
                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs" role="tablist">
                            <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab"
                                                                      data-toggle="tab">学生列表</a></li>
                            <li role="presentation">
                                <a id="addBtn1">添加学生</a>
                            </li>
                        </ul>

                        <!-- Tab panes -->
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane active" id="home">
                                <table class="table table-bordered table-hover table-striped" style="margin-top: 10px">
                                    <tr>
                                        <th>学号</th>
                                        <th>姓名</th>
                                        <th>性别</th>
                                        <th>出生日期</th>
                                        <th>专业</th>
                                        <th>操作</th>
                                    </tr>
                                    <%
                                        for (Student student : students) {
                                    %>
                                    <tr>
                                        <td><%=student.getId()%></td>
                                        <td><%=student.getName()%></td>
                                        <td><%=student.getGender()%></td>
                                        <td><%=student.getBirthday()%></td>
                                        <td><%=student.getMajor()%></td>
                                        <td>
                                            <a  class="btn btn-primary" >修改</a>
                                            <a onclick=""  href="" class="btn btn-danger">删除</a>
                                        </td>
                                    </tr>

                                    <%
                                        }
                                    %>

                                </table>

                                <ul class="list-unstyled">
                                    <li>
                                        <button class="btn btn-success" id="addBtn">添加学生信息</button>
                                    </li>
                                </ul>
                                <div class="pull-right">
                                    <nav aria-label="Page navigation">
                                        <ul class="pagination">
                                            <li >
                                                <a href="" aria-label="Previous" >
                                                    <span aria-hidden="true">&laquo;</span>
                                                </a>
                                            </li>
                                            <li ><a href="stu?method=list&page=1" >1</a></li>
                                            <li ><a href="stu?method=list&page=2" >2</a></li>
                                            <li><a href="stu?method=list&page=3" >3</a></li>
                                            <li ><a href="stu?method=list&page=4">4</a></li>
                                            <li><a href="stu?method=list&page=5">5</a></li>
                                            <li>
                                                <a href="" aria-label="Next" >
                                                    <span aria-hidden="true">&raquo;</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                            <div role="tabpanel" class="tab-pane" id="profile">...</div>
                        </div>

                    </div>
                </div>
            </div>
        </div>


        <!--添加学生的对话框-->
        <div class="modal fade" id="addStuModal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="modal-title">添加学生</h4>
                    </div>
                    <div class="modal-body">
                        <form action="stu" method="post">
                            <input type="hidden" name="method" value="add">
                            <div class="form-group">
                                <label for="name">姓名</label>
                                <input type="text" class="form-control" id="name" name="name" placeholder="姓名" required>
                            </div>
                            <div class="form-group" style="margin-bottom: 0">
                                <label for="gender">性别</label>
                            </div>
                            <label class="radio-inline">
                                <input type="radio" name="gender" checked value="男"> 男
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="gender" value="女"> 女
                            </label>
                            <div class="form-group">
                                <label for="birthday">生日</label>
                                <input type="date" class="form-control" id="birthday" value="1988-06-01"
                                       name="birthday" placeholder="生日">
                            </div>
                            <div class="form-group" style="margin-bottom: 0">
                                <label for="major">专业</label>
                            </div>
                            <select multiple class="form-control" id="major" name="major">
                                <option selected>软件工程</option>
                                <option>计算机科学技术</option>
                                <option>英语</option>
                                <option>声乐</option>
                                <option>表演艺术</option>
                            </select>
                            <div class="modal-footer">
                                <button type="submit"  class="btn btn-primary">确认添加</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">取消添加</button>
                            </div>

                        </form>
                    </div>

                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->

        <!--更新学生的对话框-->
        <div class="modal fade" id="updateStuModal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="modal-title">更新学生信息</h4>
                    </div>
                    <div class="modal-body">
                        <form action="stu" method="post">
                            <input type="hidden" name="method" value="update">
                            <input type="hidden" name="id" value="update" id="stuid">
                            <div class="form-group">
                                <label for="stuname">姓名</label>
                                <input type="text" class="form-control" id="stuname" name="name" placeholder="姓名">
                            </div>
                            <div class="form-group" style="margin-bottom: 0">
                                <label for="gender">性别</label>
                            </div>
                            <label class="radio-inline">
                                <input type="radio" name="gender" id="gender"  value="男"> 男
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="gender" value="女"> 女
                            </label>
                            <div class="form-group">
                                <label for="stubirthday">生日</label>
                                <input type="date" class="form-control" id="stubirthday" name="birthday" placeholder="生日">
                            </div>
                            <div class="form-group" style="margin-bottom: 0">
                                <label for="stumajor">专业</label>
                            </div>
                            <select multiple class="form-control" id="stumajor" name="major">
                                <option>软件工程</option>
                                <option>计算机科学技术</option>
                                <option>英语</option>
                                <option>声乐</option>
                                <option>表演艺术</option>
                            </select>
                            <div class="modal-footer">
                                <button type="submit" class="btn btn-primary">确认修改</button>
                                <button type="button" class="btn btn-default" data-dismiss="modal">取消修改</button>
                            </div>

                        </form>
                    </div>

                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->
    </body>
</html>
