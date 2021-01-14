<%--
  Created by IntelliJ IDEA.
  User: 远上寒山
  Date: 2020/12/8
  Time: 21:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>登录</title>
    <!-- Bootstrap -->
    <link href="bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="bootstrap-3.3.7-dist/js/jquery-2.0.0.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <STYLE TYPE="text/css">
        ul,li{
            list-style-type: none;
        }
        .youars{
            /*width: 100%;*/
            /*background: yellow;*/
            /*background-image: url("img/DL.jpg");*/

        }
        .topt{
            width: 100%;
            height: 100px;
            background: #e9ebec;
        }
        .tops{
            height: 100px;
            width: 1200px;
            margin: 0 auto;
            display: flex;
            justify-content: space-between;
            line-height: 100px;
        }
        .tops ul li{
            height: 100px;
        }
        .asou{
            color: #FF2D52;
            font-size: 44px;
            font-weight: bold;
            font-family: "隶书";
        }
        .asou:hover{
            text-decoration: none;
            color: #FF2D52;
            font-size: 44px;
            font-weight: bold;
        }

        .tops ul li img{
            height: 100px;
            width: 125px;
        }
        .container-fluid{
            background-color: #ed5353;
            padding-bottom: 80px;
        }
        .btnyou{

        }
        .asko{
            color: #ffffff;
        }
        .btnyou{
            color: #ffffff;
        }
    </STYLE>
</head>
    <body>
        <div class="topt">
            <div class="tops">
                <ul>
                    <li>
                        <img src="img/23.jpg">
                    </li>
                </ul>
                <ul>
                    <li>
                        <a class="asou">欢迎来到寒心商店</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="container-fluid">
            <div class="youars">
                <div class="col-sm-4 col-sm-offset-4" style="margin-top: 70px;color: #ffffff">
                    <h1 class="text-center">用户登录</h1>
                </div>
                <div class="row">
                    <div class="col-sm-4 col-sm-offset-4">
                        <form action="login" method="post">
                            <div class="form-group">
                                <label for="username" class="asko">用户名</label>
                                <!--           注意bootstrap默认input 没有name属性，需要手动添加-->
                                <input type="text" class="form-control" id="username" name="username" placeholder="用户名" required >
                            </div>
                            <div class="form-group">
                                <label for="password" class="asko">密码</label>
                                <input type="password" class="form-control" id="password" name="password" placeholder="密码" required>
                            </div>
                            <button type="submit" style="margin-top: 10px" class="btn btn-primary btn-block" class="btnyou">登录</button>
                        </form>
                        <a href="reg.jsp" style="margin-top: 10px;display: block;font-size: 14px" class="btnyou">注册</a>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>

