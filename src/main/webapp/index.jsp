<%@ page import="edu.gyu.stu.model.User" %><%--
  Created by IntelliJ IDEA.
  User: 远上寒山
  Date: 2020/12/21
  Time: 21:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>寒心商城</title>
    <link rel="stylesheet" href="css/JD.css" />
    <style>
        /*顶部设计*/
        body{
            overflow-y: scroll;
            -webkit-user-select: none;
            -moz-user-focus: normal;
            -moz-user-select: none;
            -ms-user-select: none;
            /*background: yellowgreen;*/
        }
        .con{
            width: 100%;
        }
        .nav-1200{
            width: 1200px;
            margin: 0 auto;
        }
        .top{
            /*background: #22b564;*/
            background: #DD2D52;
        }
        .top{
            display: flex;
            justify-content: space-between;
        }
        .top ul{
            display: flex;
            justify-content: flex-end;
            height: 40px;
            margin: 0;
            /*padding: 0;*/
        }
        .top ul li{
            margin: 0 18px;
        }
        .topme a{
            display: block;
            height: 40px;
            text-align: center;
            line-height: 40px;
            font-size: 20px;
            cursor: pointer;
            color: #ffffff;
            padding-left: 20px;
        }
        .tyou{
            height: 40px;
            width: 100px;
            text-align: center;
            line-height: 40px;
            color: #ffffff;
            font-weight: bold;
            font-size: 16px;
        }
        .top ul li a{
            display: block;
            height: 40px;
            text-align: center;
            line-height: 40px;
            font-size: 20px;
            cursor: pointer;
            color: #ffffff;
        }
        /*图标搜索框*/
        .inpos{
            display: flex;
            justify-content: space-between;
            margin: 0 50px;
            height: 150px;
            /*background: yellowgreen;*/
        }
        .imgf{
            height: 150px;
            line-height: 150px;
            /*background-image: url("img/23.jpg");*/
            /*background-size: 150px 150px;*/
        }
        .imgf img{
            height: 110px;
            /*width: 220px;*/
        }
        .imgr{
            height: 150px;
            line-height: 150px;
        }
        .imgr img{
            height: 60px;
            /*width: 120px;*/
        }
        .among{
            height: 100px;
            margin-top: 50px;
            /*background: yellow;*/
            position: relative;
        }
        .inp{
            width: 500px;
            height: 44px;
        }
        .inp input{
            height: 44px;
            width: 420px;
            border: 2px solid #dd2d52;
            font-size: 18px;
            padding-left: 35px;
            float: left;
            box-sizing: border-box;
        }
        .img1{
            position: absolute;
            top: 12px;
            left: 10px;
            display: block;
            float: left;
            height: 20px;
            width: 20px;
        }
        .img2{
            position: absolute;
            display: block;
            float: right;
            right: 100px;
            height: 26px;
            width: 26px;
            top: 8px;
        }
        .inp a{
            display: inline-block;
            height: 44px;
            width: 80px;
            background: #DD2D52;
            text-align: center;
            line-height: 44px;
            font-size: 25px;
            color: #ffffff;
            cursor: pointer;
        }
        .lios{
            height: 44px;
            padding-top: 12px;
            font-size: 14px;
            color: #767676;
            cursor: pointer;
        }
        .lios span{
            color: #DD2D52;
            font-weight: bold;
        }
        /*主菜单栏*/
        .main-100{
            height: 44px;
            width: 100%;
            background: #DD2D52;
        }
        .main-1200{
            height: 44px;
            width: 1200px;
            margin: 0 auto;
        }
        .main-1200 ul{
            display: flex;
            justify-content: space-between;
            text-align: center;
            line-height: 44px;
            font-size: 18px;
            padding: 0 40px;
            box-sizing: border-box;
        }
        .main-1200 ul li a{
            cursor: pointer;
            color: #ffffff;
        }
        /*轮播侧边栏*/
        .canner-1200{
            width: 1200px;
            height: 360px;
            /*background: yellowgreen;*/
            margin: 0 auto;
            display: flex;
            justify-content: center;
        }
        .cannf{
            width: 200px;
            height: 360px;
            /*background: yellow;*/
        }
        .cannf ul{
            display: flex;
            justify-content: flex-start;
            height: 45px;
            box-sizing: border-box;
            border-bottom: 1px solid #999999;
            text-align: center;
            line-height: 45px;
            padding: 0 25px;
            background: #DD2D52;
            cursor: pointer;
        }
        .cannf ul li{
            box-sizing: border-box;
            /*padding: 0 10px;*/
        }
        .cannf ul li:nth-child(1){
            width: 35px;
        }
        .cannf ul li:nth-child(2){
            width: 35px;
        }
        .cannf ul li:nth-child(3){
            width: 80px;
            font-weight: bold;
            text-align: end;
        }
        .cannf ul li a{
            font-size: 14px;
            color: #ffffff;
        }

        .cannr{
            height: 360px;
            width: 200px;
            box-sizing: border-box;
            text-align: end;
        }
        .cannr a{
            display: inline-block;
            height: 45px;
            width: 200px;
            padding: 0 20px;
            display: flex;
            justify-content: space-between;
            line-height: 45px;
            box-sizing: border-box;
            background: #DD2D52;
        }
        .cannr a span{
            font-size: 14px;
            color: #FFFFFF;
            cursor: pointer;
        }
        .cannr img{
            height: 100px;
            width: 190px;
            margin-top: 5px;
        }
        /*商品展示标题*/
        .goods-1200{
            height: 620px;
            width: 1200px;
            margin: 0 auto;
        }
        .goods-top{
            height: 60px;
            width: 1200px;

            display: flex;
            justify-content: space-between;
            line-height: 60px;
            box-sizing: border-box;
        }
        .goods-f{
            display: flex;
            justify-content: flex-start;
        }
        .goods-f li{
            height: 60px;
            width: 240px;
            text-align: center;
        }
        .goods-f li:hover{
            border-bottom: 2px solid #DD2D52;
            box-sizing: border-box;
        }
        .goods-f li a{
            font-size: 18px;
            cursor: pointer;
            font-family: "微软雅黑";
        }
        .goods-top ul:nth-child(2) li a{
            color: #DD2D52;
            cursor: pointer;
        }
        .goods-1200b{
            width: 1200px;
            height: 560px;
            /*background-image: url(img/a1.jpg);
            background-size: 1200px 560px;*/
            clear: both;
        }
        .goods-bt{
            position: relative;
            height: 280px;
            width: 240px;
            text-align: center;
            float: left;
            box-sizing: border-box;
            padding-top: 10px;
            box-sizing: border-box;
            cursor: pointer;
        }
        .hidess ul{
            float: left;
            position: absolute;
            top: 5px;
            left: 5px;
            height: 60px;
            width: 60px;
            background: #FF2D52;
            text-align: center;
            line-height: 60px;
            font-size: 25px;
            border-radius: 40px;
            cursor: pointer;
            border: 5px solid #FF6C6C;
        }
        .hidess ul li a{
            color: #ffffff;
        }
        .goods-bt:hover{
            background: #F5B9BA;
            /*border-bottom: 1px solid #FF2D52;*/
        }
        .goods-bt:hover .mmd{
            color: #ffffff;
        }
        .goods-bt li img{
            height: 200px;
            width: 200px;
        }
        .goods-bt li:nth-child(2){
            text-overflow: ellipsis;
            white-space: nowrap;
            padding: 10px 20px 0;
            overflow: hidden;
            box-sizing: border-box;
            font-size: 14px;
            cursor: default;
        }
        .goods-bt li:nth-child(3){
            line-height: 40px;
            height: 40px;
            cursor: pointer;
        }
        .goods-bt li:nth-child(3) a{
            font-size: 20px;
            font-weight: bolder;
            color: #FF2D52;
        }
        /*acer电脑*/
        .acer-1200{
            height: 822px;
            width: 1200px;
            margin: 0 auto;
            margin-top: 20px;
        }
        .acer-t{
            height: 60px;
            width: 1200px;
            padding: 0 5px;
            background: #DD2D52;
            border-radius: 30px;
            box-sizing: border-box;
        }
        .acer-t ul{
            display: flex;
            justify-content: space-between;
            height: 60px;
            width: 1200px;
        }
        .acer-t ul li{
            font-size: 22px;
            color: #FF2D52;
            height: 50px;
            width: 260px;
            margin: 5px 0;
            background: #FFFFFF;
            line-height: 40px;
            text-align: center;
            border-radius: 40px;
            border: 5px solid #ff6c6c;
            font-weight: bold;
            cursor: pointer;
            box-sizing: border-box;
        }
        .acer-t ul li:nth-child(3){
            font-size: 18px;
            color: #FF2D52;
            height: 50px;
            width: 120px;
            margin: 5px 0 5px 140px;
            background: #FFFFFF;
            line-height: 40px;
            text-align: center;
            border-radius: 40px;
            border: 5px solid #ff6c6c;
            font-weight: normal;
            cursor: pointer;
            box-sizing: border-box;
        }
        .acer-t ul li:hover{
            border: 5px solid #FFFFFF;
            color: #ffffff;
            background: #ff6c6c;
        }
        .acer-b{
            margin-top: 20px;
            border-top: 2px solid #DD2D52;
            padding-top: 20px;
            display: flex;
            justify-content: space-between;
            /*background: yellow;*/
        }
        .acer-f{
            width: 300px;
            height: 720px;
            background: #f5b9ba;
            padding: 20px;
            text-align: center;
            box-sizing: border-box;
        }
        .acer-f ul li img{
            height: 240px;
            width: 260px;
        }
        .acer-f-t{
            height: 320px;
            width: 260px;
            /*background: yellow;*/
        }
        .acer-img-b a{
            display: block;
            height: 40px;
            width: 260px;
            line-height: 40px;
            font-size: 28px;
            color: #ffffff;
            font-weight: bold;
            cursor: pointer;
        }
        .acer-100-b{
            height: 360px;
            width: 260px;
            /*background: yellow;*/
        }
        .acer-100-b ul li a{
            display: inline-block;
            height: 100px;
            width: 100px;
            background: #ffffff;
            text-align: center;
            line-height: 100px;
            border-radius: 50px;
            margin: 10px;
            font-size: 14px;
            font-weight: bold;
            cursor: pointer;
        }
        .acer-100-b ul li a:hover{
            color: #ffffff;
            background: #DD2D52;
        }
        .acer-r{
            width: 860px;
            height: 720px;
            /*background: yellowgreen;*/
        }
        .acer-br-top{
            line-height: 60px;
            height: 60px;
            width: 860px;
            display: flex;
            justify-content: space-between;
            /*background: yellow;*/
            border-bottom: 2px solid #FF2D52;
            box-sizing: border-box;
        }
        .acer-br-top ul:nth-child(1){
            display: flex;
            justify-content: flex-start;
            font-size: 22px;
            font-weight: bold;
            color: #FF2D52;
        }
        .acer-br-top ul:nth-child(1) li{
            text-align: start;
            margin-right: 20px;
            cursor: pointer;
        }
        .acer-br-top ul:nth-child(2){
            display: flex;
            justify-content: flex-end;
            line-height: 60px;
        }
        .acer-br-top ul:nth-child(2) li{
            width: 80px;
            font-size: 14px;
            text-align: center;
            cursor: pointer;
            color: #999999;
            font-weight: bold;
            position: relative;
        }
        .acer-br-top ul:nth-child(2) li:hover{
            color: #DD2D52;
        }
        .acer-br-top ul:nth-child(2) li:hover:after{
            content: '';
            border: 7px solid transparent;
            border-bottom-color: #EC193E;
            position: absolute;
            bottom: 0px;
            left: 50%;
            margin-left: -5px;
        }
        .acer-br-btm{
            height: 660px;
            width: 860px;
            /*background: yellowgreen;*/
            border-bottom: 2px solid #FF2D52;
            box-sizing: border-box;
            clear: both;
        }
        .acer-br-btm-tit{
            float: left;
            height: 310px;
            width: 240px;
            /*background: #FF2D52;*/
            margin-top: 15px;
            padding-top: 10px;
            margin-left: 34px;
            border: 1px solid #999999;
            position: relative;
            box-sizing: border-box;
        }
        .acer-br-btm-tit-01 {
            height: 290px;
            width: 240px;
            text-align: center;
        }
        .acer-br-btm-tit ul img{
            height: 150px;
            width: 205px;
        }
        .acer-br-btm-tit-01 li:nth-child(2){
            height: 30px;
            width: 240px;
            font-size: 16px;
            line-height: 30px;
            cursor: default;
        }
        .acer-br-btm-tit-01 li:nth-child(3){
            height: 30px;
            width: 240px;
            font-size: 16px;
            line-height: 30px;
            cursor: default;
        }
        .acer-br-btm-tit-01 li:nth-child(4){
            height: 40px;
            width: 240px;
            font-size: 22px;
            font-weight: bold;
            color: #DD2D52;
            line-height: 40px;
            cursor: pointer;
        }
        .acer-br-btm-tit-01 li:nth-child(5){
            height: 40px;
            width: 240px;
            font-size: 18px;
            line-height: 40px;
        }
        .acer-br-btm-tit-01 li:nth-child(5) a{
            display: inline-block;
            height: 40px;
            width: 120px;
            font-size: 20px;
            font-weight: bold;
            color: #ffffff;
            background: #FF2D52;
            border-radius: 20px;
            cursor: pointer;
        }
        .acer-br-btm-tit ul:nth-child(2){
            float: left;
            position: absolute;
            top: 5px;
            left: 5px;
            height: 60px;
            width: 60px;
            background: #FF2D52;
            text-align: center;
            line-height: 60px;
            font-size: 25px;
            border-radius: 40px;
            cursor: pointer;
            border: 6px solid #ffffff;
            display: none;
        }
        .acer-br-btm-tit ul:nth-child(2) li a{
            color: #ffffff;
            font-weight: bold;
        }
        .acer-br-btm-tit:hover>.hides{
            display: block;
        }
        .acer-br-btm-tit:hover{
            background-image: url(img/1103.jpg);
            background-repeat: no-repeat;
            background-size: 240px 310px;
            color: #ffffff;
            border: 1px solid #FF2D52;
        }
        /*商品展示*/
        .gds-1200{
            height: 512px;
            width: 1200px;
            margin: 0 auto;
        }
        .gds-52{
            display: flex;
            justify-content: space-between;
            height: 52px;
            border-bottom: 2px #FF2D52 solid;
            line-height: 51px;
            font-weight: bold;
            box-sizing: border-box;
            font-size: 22px;
            color: #FF2D52;
        }
        .gds-52-1{
            display: flex;
            font-size: 14px;
            color: #999999;
            justify-content: flex-end;
        }
        .gds-52-1 li{
            margin: 0 10px;
            line-height: 70px;
            cursor: pointer;
            list-style: none;
            position: relative;
        }
        .gds-52-1 li:hover{
            color: #FF2D52;
        }
        .gds-52-1 li:hover:after{
            content: '';
            display: inline-block;
            border: 7px solid transparent;
            border-bottom-color: #EC193E;
            position: absolute;
            bottom: 0px;
            left: 50%;
            margin-left: -5px;
        }
        .gds-460{
            display: flex;
            justify-content: space-between;
            height: 460px;
            width: 100%;
        }
        .gds-460-248-img{
            padding: 18px;
        }
        .gds-460-248-img img{
            height: 212px;
            width: 212px;
        }
        .gds-460-248{
            height: 460px;
            width: 248px;
            background: #F5B9BA;
        }
        .gds-460-248-olone{
            padding: 0 25px;
        }
        .gds-460-248-olone a{
            font-size: 24px;
            color: #ffffff;
            cursor: pointer;
        }
        .gds-460-248-oltwo {
            padding: 0 50px;
        }
        .gds-460-248-oltwo a{
            font-size: 18px;
            color: #FFFFFF;
            cursor: pointer;
        }
        .gds-460-248-oltwo a span{
            color: #DD2D52;
            font-weight: bold;
            cursor: pointer;
        }
        .clearfix:after{
            content: '';
            display: block;
            clear: both;
        }
        .gds-460-248-ul{
            padding:10px 15px;
        }
        .gds-460-248-ul li{
            float: left;
            margin: 4px;
            background:#FFFFFF;
            height: 61px;
            width: 61px;
            line-height: 60px;
            text-align: center;
            border-radius: 50%;
            box-shadow: 0 0 10px 0 #FFFFFF;
            cursor: pointer;
        }
        .gds-460-248-ul li:hover{
            background: #FF2D52;
            color: #ffffff;
        }
        .gds-460-764{
            height: 460px;
            width: 764px;
            /*background: deepskyblue;*/
        }
        .yijia:hover{
            background: #F4D4D6;
        }
        .gds-460-764 img{
            padding:16px 16px 0px;
            height: 150px;
            width: 150px;
        }
        .gds-460-764 ul{
            box-sizing: border-box;
            float: left;
            border-top: 1px solid #E2E2E2;
            border-right: 1px solid #e2e2e2;
            height: 230px;
            width: 185px;
            /*text-overflow: ellipsis;  */

        }
        .gds-460-764 ul li{
            padding: 0 16px 0;
            font-size: 8px;
        }
        .gds-460-764-lione{
            height: 35px;
            width: 150px;
            overflow: hidden;
        }
        .gds-460-764-lione a{
            color: #666666;
            cursor: pointer;
        }
        .gds-460-764-litwo{
            color: #FF2D52;
            font-weight: bold;
        }
        .gds-460-188{
            box-sizing: border-box;
            height: 460px;
            width: 198px;
            border-right: 1px solid #E2E2E2;
            padding-top: 10px;
        }
        .gds-460-188-rt{
            height: 53px;
            padding: 6px 0;
            border-bottom: 1px dashed #E2E2E2;
        }
        .gds-460-188-rt img{
            height: 50px;
            width: 50px;

        }
        .gds-460-188-rt ul{
            display: flex;
            justify-content: space-between;
            font-size: 14px;
            margin-right: 12px;
        }
        .gds-460-188-rt ul li{
            margin-left: 4px;
        }
        .gds-460-188-rt-ol a{
            font-size: 10px;
        }
        .gds-460-188-rt-ol{
            height: 30px;
            line-height: 30px;
        }
        .gds-460-188-a{
            display: inline-block;
            border: 1px;
            font-weight: bold;
            height: 44px;
            line-height: 40px;
            width: 180px;
            margin-bottom: 5px;
            border-bottom:1px solid #e2e2e2;
        }
        .gds-460-188-a:hover{
            color: #FF2D52;
            cursor: pointer;
        }
        .gds-460-188-rt-oltwo{
            height: 20px;
            line-height: 20px;
        }
        .gds-460-188-rt-oltwo span:nth-child(1){
            color: #FF2D52;
            font-weight: bold;
            line-height: 10px;

        }
        .gds-460-188-rt-oltwo span:nth-child(2){
            text-decoration: line-through;

        }
        .gds-xiaomi{
            background: #f59e6e;
        }
        .yesok:hover{
            background-image: url(img/8888.jpg);
            background-size: 739px 460px;
            background-repeat: no-repeat;
        }
        .xiaom-img:hover{
            background-image: url(img/1103.jpg);
            background-size: 185px 230px;
        }
        .yesok:hover .xiaomi-a{
            color: #ffffff;
        }
        .meizu{
            background: #f0d0d3;
        }
        /*尾部*/
        .asbtm-100{
            /*border-top: 5px solid #C81623;
            border-bottom: 5px solid #C81623;*/
            z-index: 10;
            height: 44px;
            width: 100%;
            background: #666666;
            /*margin-top: 20px;*/
        }
        .asbtm-1200{
            height: 44px;
            width: 1200px;
            margin: 0 auto;
            line-height: 44px;
            display: flex;
            justify-content: center;
        }
        .asbtm-1200 a{
            display: block;
            font-size: 18px;
            color: #ffffff;
            font-weight: bold;
            margin: 0 50px;
        }

        /*轮播图*/
        .example {
            height: 360px;
            width: 800px;
            font-size: 40px;
            text-align: center;
            /*margin: 20px auto;*/
            background-color: #464576;
        }
        .ft-carousel {
            position: relative;
            width: 100%;
            height: 360px;
            overflow: hidden;
        }

        .ft-carousel .carousel-inner {
            position: absolute;
            left: 0;
            top: 0;
            height: 100%;
        }

        .ft-carousel .carousel-inner .carousel-item {
            float: left;
            height: 100%;
        }

        .ft-carousel .carousel-item img {
            height: 360px;
            width: 800px;
        }

        .ft-carousel .carousel-indicators {
            position: absolute;
            left: 0;
            bottom: 10px;
            width: 100%;
            text-align: center;
            font-size: 0;
        }

        .ft-carousel .carousel-indicators span {
            display: inline-block;
            width: 12px;
            height: 12px;
            background-color: #fff;
            margin: 0 4px;
            border-radius: 50%;
            cursor: pointer;
        }

        .ft-carousel .carousel-indicators span.active {
            background-color: #de3a3a;
        }

        .ft-carousel .carousel-btn {
            position: absolute;
            top: 50%;
            width: 50px;
            height: 45px;
            margin-top: -25px;
            cursor: pointer;
        }

        .ft-carousel .carousel-prev-btn {
            left: 0;
            background: url(img/prev.png) no-repeat;
        }

        .ft-carousel .carousel-next-btn {
            right: 0;
            background: url(img/next.png) no-repeat;
            z-index: 10;
        }
    </style>
</head>
<body>
<div class="con">
    <!--顶部登录和注册..............................-->
    <div class="nav-1200">
        <div class="top">
            <ul class="topme">
                <a>收藏</a>
            </ul>
            <ul class="topme">
                <%
                User user=null;
                if(request.getSession().getAttribute("user")!=null){
                    user=(User)request.getSession().getAttribute("user");
                }else{
                %>
                <li>

                    <a href="login.jsp">登录</a>
                </li>
                <li>
                    <a href="login.jsp">注册</a>
                </li>
                <%}%>
                <%if(user!=null){%>
                <p class="tyou">你好:<%=user.getUsername()%></p>
                <%}%>
            </ul>
        </div>
        <!--网页搜索框和图标............................-->
        <div class="inpos">
            <div class="imgf">
                <img src="img/23.jpg" />
            </div>
            <div class="among">
                <div class="inp">
                    <input type="text" placeholder="小米" />
                    <img class="img1" src="img/1234589.png" />
                    <img class="img2" src="img/10.png"/>
                    <a>搜索</a>
                </div>
                <div class="lios">
                    <a>小米</a>
                    <span>|</span>
                    <a>华为</a>
                    <span>|</span>
                    <a>iPhone</a>
                    <span>|</span>
                    <a>OPPO</a>
                    <span>|</span>
                    <a>一加</a>
                </div>
            </div>
            <div class="imgr">
                <img src="img/11.png" />
            </div>
        </div>
    </div>
    <!--主菜单栏...................................-->
    <div class="main-100">
        <div class="main-1200">
            <ul>
                <li>
                    <a>☰ 商品分类</a>
                </li>
                <li>
                    <a>首页</a>
                </li>
                <li>
                    <a>团购</a>
                </li>
                <li>
                    <a>秒杀</a>
                </li>
                <li>
                    <a>积分</a>
                </li>
            </ul>
        </div>
    </div>
    <!--轮播侧边栏-->
    <div class="canner-1200">
        <div class="cannf">
            <ul>
                <li>
                    <a>手机</a>
                </li>
                <li>
                    <a>电脑</a>
                </li>
                <li>
                    <a> > </a>
                </li>
            </ul>
            <ul>
                <li>
                    <a>母婴</a>
                </li>
                <li>
                    <a>奶粉</a>
                </li>
                <li>
                    <a> > </a>
                </li>
            </ul>
            <ul>
                <li>
                    <a>家电</a>
                </li>
                <li>
                    <a>家用</a>
                </li>
                <li>
                    <a> > </a>
                </li>
            </ul>
            <ul>
                <li>
                    <a>水果</a>
                </li>
                <li>
                    <a>香烟</a>
                </li>
                <li>
                    <a> > </a>
                </li>
            </ul>
            <ul>
                <li>
                    <a>旅游</a>
                </li>
                <li>
                    <a>出行</a>
                </li>
                <li>
                    <a> > </a>
                </li>
            </ul>
            <ul>
                <li>
                    <a>饮料</a>
                </li>
                <li>
                    <a>小吃</a>
                </li>
                <li>
                    <a> > </a>
                </li>
            </ul>
            <ul>
                <li>
                    <a>学习</a>
                </li>
                <li>
                    <a>文具</a>
                </li>
                <li>
                    <a> > </a>
                </li>
            </ul>
            <ul>
                <li>
                    <a>汽车</a>
                </li>
                <li>
                    <a>卡车</a>
                </li>
                <li>
                    <a> > </a>
                </li>
            </ul>
        </div>
        <!--轮播图....................................................-->
        <div class="example">
            <div class="ft-carousel" id="carousel_1">
                <ul class="carousel-inner">
                    <li class="carousel-item"><img src="img/a1.jpg" /></li>
                    <li class="carousel-item"><img src="img/a2.jpg" /></li>
                    <li class="carousel-item"><img src="img/a4.jpg" /></li>
                    <li class="carousel-item"><img src="img/a3.jpg" /></li>
                    <li class="carousel-item"><img src="img/a5.jpg" /></li>
                    <li class="carousel-item"><img src="img/a6.jpg" /></li>
                </ul>
            </div>
        </div>
        <!--轮播图上面....................................................-->
        <div class="cannr">
            <a>
                <span>精品展示</span>
                <span>更多 ></span>
            </a>
            <img src="img/18.png" />
            <img src="img/25.png" />
            <img src="img/24.png" />
        </div>
    </div>
    <!--电脑标题-->
    <div class="acer-1200">
        <div class="acer-t">
            <ul>
                <li>千元电脑想购就购</li>
                <li>国际品牌</li>
                <li>更多优惠 ></li>
            </ul>
        </div>
        <div class="acer-b">
            <div class="acer-f">
                <ul class="acer-f-t">
                    <li>
                        <img src="img/19.png" />
                    </li>
                    <li class="acer-img-b">
                        <a>高端电脑 世界品牌</a>
                        <a>美 不 凡</a>
                    </li>
                </ul>
                <div class="acer-100-b">
                    <ul>
                        <li>
                            <a>超强CPU</a>
                            <a>超大内存</a>
                            <a>USB 3.1</a>
                            <a>超清像素</a>
                            <a>高清屏幕</a>
                            <a>游戏办公</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="acer-r">
                <div class="acer-br-top">
                    <ul>
                        <li>P1</li>
                        <li>华为笔记本</li>
                    </ul>
                    <ul>
                        <li>轻薄本</li>
                        <li>游戏本</li>
                        <li>办公本</li>
                        <li>续航本</li>
                    </ul>
                </div>
                <div class="acer-br-btm">
                    <div class="acer-br-btm-tit">
                        <ul class="acer-br-btm-tit-01">
                            <img src="img/111.png" />
                            <li>inter i7 10710u</li>
                            <li>32G存储 1T硬盘</li>
                            <li>¥ 8888.00</li>
                            <li>
                                <a>购买</a>
                            </li>
                        </ul>
                        <ul class="hides">
                            <li>
                                <a>8折</a>
                            </li>
                        </ul>
                    </div>
                    <div class="acer-br-btm-tit">
                        <ul class="acer-br-btm-tit-01">
                            <img src="img/111.png" />
                            <li>inter i7 10710u</li>
                            <li>32G存储 1T硬盘</li>
                            <li>¥ 8888.00</li>
                            <li>
                                <a>购买</a>
                            </li>
                        </ul>
                        <ul class="hides">
                            <li>
                                <a>7折</a>
                            </li>
                        </ul>
                    </div>
                    <div class="acer-br-btm-tit">
                        <ul class="acer-br-btm-tit-01">
                            <img src="img/111.png" />
                            <li>inter i7 10710u</li>
                            <li>32G存储 1T硬盘</li>
                            <li>¥ 8888.00</li>
                            <li>
                                <a>购买</a>
                            </li>
                        </ul>
                        <ul class="hides">
                            <li>
                                <a>9折</a>
                            </li>
                        </ul>
                    </div>
                    <div class="acer-br-btm-tit">
                        <ul class="acer-br-btm-tit-01">
                            <img src="img/111.png" />
                            <li>inter i7 10710u</li>
                            <li>32G存储 1T硬盘</li>
                            <li>¥ 8888.00</li>
                            <li>
                                <a>购买</a>
                            </li>
                        </ul>
                        <ul class="hides">
                            <li>
                                <a>7折</a>
                            </li>
                        </ul>
                    </div>
                    <div class="acer-br-btm-tit">
                        <ul class="acer-br-btm-tit-01">
                            <img src="img/111.png" />
                            <li>inter i7 10710u</li>
                            <li>32G存储 1T硬盘</li>
                            <li>¥ 8888.00</li>
                            <li>
                                <a>购买</a>
                            </li>
                        </ul>
                        <ul class="hides">
                            <li>
                                <a>8折</a>
                            </li>
                        </ul>
                    </div>
                    <div class="acer-br-btm-tit">
                        <ul class="acer-br-btm-tit-01">
                            <img src="img/111.png" />
                            <li>inter i7 10710u</li>
                            <li>32G存储 1T硬盘</li>
                            <li>¥ 8888.00</li>
                            <li>
                                <a>购买</a>
                            </li>
                        </ul>
                        <ul class="hides">
                            <li>
                                <a>9折</a>
                            </li>
                        </ul>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!--商品标题-->
    <div class="goods-1200">
        <div class="goods-top">
            <ul class="goods-f">
                <li>
                    <a>小米</a>
                </li>
                <li>
                    <a>华为</a>
                </li>
                <li>
                    <a>iPhone</a>
                </li>
            </ul>
            <ul>
                <li>
                    <a>换一批</a>
                </li>
            </ul>
        </div>
        <div class="goods-1200b">
            <ul class="goods-bt">
                <li>
                    <img src="img/40.png" />
                </li>
                <li class="mmd">小米11pro超强四摄，4800万高清像素</li>
                <li>
                    <a> ¥ 2999.00</a>
                </li>
                <li class="hidess">
                    <ul>
                        <li>
                            <a>8折</a>
                        </li>
                    </ul>
                </li>
            </ul>
            <ul class="goods-bt">
                <li>
                    <img src="img/40.png" />
                </li>
                <li class="mmd">小米11pro超强四摄，4800万高清像素</li>
                <li>
                    <a> ¥ 2999.00</a>
                </li>
                <li class="hidess">
                    <ul>
                        <li>
                            <a>9折</a>
                        </li>
                    </ul>
                </li>
            </ul>
            <ul class="goods-bt">
                <li>
                    <img src="img/40.png" />
                </li>
                <li class="mmd">小米11pro超强四摄，4800万高清像素</li>
                <li>
                    <a> ¥ 2999.00</a>
                </li>
                <li class="hidess">
                    <ul>
                        <li>
                            <a>9折</a>
                        </li>
                    </ul>
                </li>
            </ul>
            <ul class="goods-bt">
                <li>
                    <img src="img/40.png" />
                </li>
                <li class="mmd">小米11pro超强四摄，4800万高清像素</li>
                <li>
                    <a> ¥ 2999.00</a>
                </li>
                <li class="hidess">
                    <ul>
                        <li>
                            <a>8折</a>
                        </li>
                    </ul>
                </li>
            </ul>
            <ul class="goods-bt">
                <li>
                    <img src="img/40.png" />
                </li>
                <li class="mmd">小米11pro超强四摄，4800万高清像素</li>
                <li>
                    <a> ¥ 2999.00</a>
                </li>
                <li class="hidess">
                    <ul>
                        <li>
                            <a>8折</a>
                        </li>
                    </ul>
                </li>
            </ul>
            <ul class="goods-bt">
                <li>
                    <img src="img/40.png" />
                </li>
                <li class="mmd">小米11pro超强四摄，4800万高清像素</li>
                <li>
                    <a> ¥ 2999.00</a>
                </li>
                <li class="hidess">
                    <ul>
                        <li>
                            <a>9折</a>
                        </li>
                    </ul>
                </li>
            </ul>
            <ul class="goods-bt">
                <li>
                    <img src="img/40.png" />
                </li>
                <li class="mmd">小米11pro超强四摄，4800万高清像素</li>
                <li>
                    <a> ¥ 2999.00</a>
                </li>
                <li class="hidess">
                    <ul>
                        <li>
                            <a>8折</a>
                        </li>
                    </ul>
                </li>
            </ul>
            <ul class="goods-bt">
                <li>
                    <img src="img/40.png" />
                </li>
                <li class="mmd">小米11pro超强四摄，4800万高清像素</li>
                <li>
                    <a> ¥ 2999.00</a>
                </li>
                <li class="hidess">
                    <ul>
                        <li>
                            <a>9折</a>
                        </li>
                    </ul>
                </li>
            </ul>
            <ul class="goods-bt">
                <li>
                    <img src="img/40.png" />
                </li>
                <li class="mmd">小米11pro超强四摄，4800万高清像素</li>
                <li>
                    <a> ¥ 2999.00</a>
                </li>
                <li class="hidess">
                    <ul>
                        <li>
                            <a>9折</a>
                        </li>
                    </ul>
                </li>
            </ul>
            <ul class="goods-bt">
                <li>
                    <img src="img/40.png" />
                </li>
                <li class="mmd">小米11pro超强四摄，4800万高清像素</li>
                <li>
                    <a> ¥ 2999.00</a>
                </li>
                <li class="hidess">
                    <ul>
                        <li>
                            <a>8折</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <!--商品展示-->
    <div class="gds">
        <div class="gds-1200">
            <div class="gds-52">
                <span>1F Oneplus</span>
                <div class="gds-52-1">
                    <li>64G版</li>
                    <li>128G版</li>
                    <li>256G版</li>
                    <li>512G版</li>
                </div>
            </div>
            <div class="gds-460">
                <div class="gds-460-248">
                    <div class="gds-460-248-img">
                        <img src="img/16.png" />
                    </div>
                    <ol class="gds-460-248-olone">
                        <a>一加手机 5G手机</a>
                    </ol>
                    <ol class="gds-460-248-oltwo">
                        <a>旗舰<span>2999</span>元起</a>
                    </ol>
                    <ul class="gds-460-248-ul clearfix">
                        <li>高清屏幕</li>
                        <li>2k分辨</li>
                        <li>128G内存</li>
                        <li>高通888</li>
                        <li>12G运行</li>
                        <li>深海蓝</li>
                    </ul>
                </div>
                <div class="gds-460-764">
                    <ul class="yijia">
                        <img src="img/123456.png" />
                        <li class="gds-460-764-lione">
                            <a>实物商品标题实物商品标题 实物商品标 题实物商品标</a>
                        </li>
                        <li class="gds-460-764-litwo">¥2999.00</li>
                    </ul>
                    <ul class="yijia">
                        <img src="img/123456.png" />
                        <li class="gds-460-764-lione">
                            <a>实物商品标题实物商品标题 实物商品标 题实物商品标</a>
                        </li>
                        <li class="gds-460-764-litwo">¥2999.00</li>
                    </ul>
                    <ul class="yijia">
                        <img src="img/123456.png" />
                        <li class="gds-460-764-lione">
                            <a>实物商品标题实物商品标题 实物商品标 题实物商品标</a>
                        </li>
                        <li class="gds-460-764-litwo">¥2999.00</li>
                    </ul>
                    <ul class="yijia">
                        <img src="img/123456.png" />
                        <li class="gds-460-764-lione">
                            <a>实物商品标题实物商品标题 实物商品标 题实物商品标</a>
                        </li>
                        <li class="gds-460-764-litwo">¥2999.00</li>
                    </ul>
                    <ul class="yijia">
                        <img src="img/123456.png" />
                        <li class="gds-460-764-lione">
                            <a>实物商品标题实物商品标题 实物商品标 题实物商品标</a>
                        </li>
                        <li class="gds-460-764-litwo">¥2999.00</li>
                    </ul>
                    <ul class="yijia">
                        <img src="img/123456.png" />
                        <li class="gds-460-764-lione">
                            <a>实物商品标题实物商品标题 实物商品标 题实物商品标</a>
                        </li>
                        <li class="gds-460-764-litwo">¥2999.00</li>
                    </ul>
                    <ul class="yijia">
                        <img src="img/123456.png" />
                        <li class="gds-460-764-lione">
                            <a>实物商品标题实物商品标题 实物商品标 题实物商品标</a>
                        </li>
                        <li class="gds-460-764-litwo">¥2999.00</li>
                    </ul>
                    <ul class="yijia">
                        <img src="img/123456.png" />
                        <li class="gds-460-764-lione">
                            <a>实物商品标题实物商品标题 实物商品标 题实物商品标</a>
                        </li>
                        <li class="gds-460-764-litwo">¥2999.00</li>
                    </ul>
                </div>
                <div class="gds-460-188">
                    <a class="gds-460-188-a">最新热卖</a>
                    <div class="gds-460-188-rt">
                        <ul>
                            <li>
                                <img src="img/123456.png"/>
                            </li>
                            <li>
                                <ol class="gds-460-188-rt-ol">
                                    <a>实物商品标题实物商</a>
                                </ol>
                                <ol class="gds-460-188-rt-oltwo">
                                    <span>¥2999</span>
                                    &nbsp;
                                    <span>￥3999</span>
                                </ol>
                            </li>
                        </ul>
                    </div>
                    <div class="gds-460-188-rt">
                        <ul>
                            <li>
                                <img src="img/123456.png"/>
                            </li>
                            <li>
                                <ol class="gds-460-188-rt-ol">
                                    <a>实物商品标题实物商</a>
                                </ol>
                                <ol class="gds-460-188-rt-oltwo">
                                    <span>¥2999</span>
                                    &nbsp;
                                    <span>￥3999</span>
                                </ol>
                            </li>
                        </ul>
                    </div>
                    <div class="gds-460-188-rt">
                        <ul>
                            <li>
                                <img src="img/123456.png"/>
                            </li>
                            <li>
                                <ol class="gds-460-188-rt-ol">
                                    <a>实物商品标题实物商</a>
                                </ol>
                                <ol class="gds-460-188-rt-oltwo">
                                    <span>¥2999</span>
                                    &nbsp;
                                    <span>￥3999</span>
                                </ol>
                            </li>
                        </ul>
                    </div>
                    <div class="gds-460-188-rt">
                        <ul>
                            <li>
                                <img src="img/123456.png"/>
                            </li>
                            <li>
                                <ol class="gds-460-188-rt-ol">
                                    <a>实物商品标题实物商</a>
                                </ol>
                                <ol class="gds-460-188-rt-oltwo">
                                    <span>¥2999</span>
                                    &nbsp;
                                    <span>￥3999</span>
                                </ol>
                            </li>
                        </ul>
                    </div>
                    <div class="gds-460-188-rt">
                        <ul>
                            <li>
                                <img src="img/123456.png"/>
                            </li>
                            <li>
                                <ol class="gds-460-188-rt-ol">
                                    <a>实物商品标题实物商</a>
                                </ol>
                                <ol class="gds-460-188-rt-oltwo">
                                    <span>¥2999</span>
                                    &nbsp;
                                    <span>￥3999</span>
                                </ol>
                            </li>
                        </ul>
                    </div>
                    <div class="gds-460-188-rt">
                        <ul>
                            <li>
                                <img src="img/123456.png"/>
                            </li>
                            <li>
                                <ol class="gds-460-188-rt-ol">
                                    <a>实物商品标题实物商</a>
                                </ol>
                                <ol class="gds-460-188-rt-oltwo">
                                    <span>¥2999</span>
                                    &nbsp;
                                    <span>￥3999</span>
                                </ol>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--小米热销-->
    <div class="gds">
        <div class="gds-1200">
            <div class="gds-52">
                <span>2F 小米</span>
                <div class="gds-52-1">
                    <li>64G版</li>
                    <li>128G版</li>
                    <li>256G版</li>
                    <li>512G版</li>
                </div>
            </div>
            <div class="gds-460">
                <div class="gds-460-248 gds-xiaomi">
                    <div class="gds-460-248-img">
                        <img src="img/123459.png" />
                    </div>
                    <ol class="gds-460-248-olone">
                        <a>小米手机 5G手机</a>
                    </ol>
                    <ol class="gds-460-248-oltwo">
                        <a>旗舰&nbsp;2999&nbsp;元起</a>
                    </ol>
                    <ul class="gds-460-248-ul clearfix">
                        <li>高清屏幕</li>
                        <li>2k分辨</li>
                        <li>128G内存</li>
                        <li>高通888</li>
                        <li>12G运行</li>
                        <li>深海蓝</li>
                    </ul>
                </div>
                <div class="gds-460-764 yesok">
                    <ul class="xiaom-img">
                        <img src="img/123457.png" />
                        <li class="gds-460-764-lione">
                            <a class="xiaomi-a">实物商品标题实物商品标题 实物商品标 题实物商品标</a>
                        </li>
                        <li class="gds-460-764-litwo">¥2999.00</li>
                    </ul>
                    <ul class="xiaom-img">
                        <img src="img/123457.png" />
                        <li class="gds-460-764-lione">
                            <a class="xiaomi-a">实物商品标题实物商品标题 实物商品标 题实物商品标</a>
                        </li>
                        <li class="gds-460-764-litwo">¥2999.00</li>
                    </ul>
                    <ul class="xiaom-img">
                        <img src="img/123457.png" />
                        <li class="gds-460-764-lione">
                            <a class="xiaomi-a">实物商品标题实物商品标题 实物商品标 题实物商品标</a>
                        </li>
                        <li class="gds-460-764-litwo">¥2999.00</li>
                    </ul>
                    <ul class="xiaom-img">
                        <img src="img/123457.png" />
                        <li class="gds-460-764-lione">
                            <a class="xiaomi-a">实物商品标题实物商品标题 实物商品标 题实物商品标</a>
                        </li>
                        <li class="gds-460-764-litwo">¥2999.00</li>
                    </ul>
                    <ul class="xiaom-img">
                        <img src="img/123457.png" />
                        <li class="gds-460-764-lione">
                            <a class="xiaomi-a">实物商品标题实物商品标题 实物商品标 题实物商品标</a>
                        </li>
                        <li class="gds-460-764-litwo">¥2999.00</li>
                    </ul>
                    <ul class="xiaom-img">
                        <img src="img/123457.png" />
                        <li class="gds-460-764-lione">
                            <a class="xiaomi-a">实物商品标题实物商品标题 实物商品标 题实物商品标</a>
                        </li>
                        <li class="gds-460-764-litwo">¥2999.00</li>
                    </ul>
                    <ul class="xiaom-img">
                        <img src="img/123457.png" />
                        <li class="gds-460-764-lione">
                            <a class="xiaomi-a">实物商品标题实物商品标题 实物商品标 题实物商品标</a>
                        </li>
                        <li class="gds-460-764-litwo">¥2999.00</li>
                    </ul>
                    <ul class="xiaom-img">
                        <img src="img/123457.png" />
                        <li class="gds-460-764-lione">
                            <a class="xiaomi-a">实物商品标题实物商品标题 实物商品标 题实物商品标</a>
                        </li>
                        <li class="gds-460-764-litwo">¥2999.00</li>
                    </ul>


                </div>
                <div class="gds-460-188">
                    <a class="gds-460-188-a">最新热卖</a>
                    <div class="gds-460-188-rt">
                        <ul>
                            <li>
                                <img src="img/123457.png"/>
                            </li>
                            <li>
                                <ol class="gds-460-188-rt-ol">
                                    <a>实物商品标题实物商</a>
                                </ol>
                                <ol class="gds-460-188-rt-oltwo">
                                    <span>¥2999</span>
                                    &nbsp;
                                    <span>￥3999</span>
                                </ol>
                            </li>
                        </ul>
                    </div>
                    <div class="gds-460-188-rt">
                        <ul>
                            <li>
                                <img src="img/123457.png"/>
                            </li>
                            <li>
                                <ol class="gds-460-188-rt-ol">
                                    <a>实物商品标题实物商</a>
                                </ol>
                                <ol class="gds-460-188-rt-oltwo">
                                    <span>¥2999</span>
                                    &nbsp;
                                    <span>￥3999</span>
                                </ol>
                            </li>
                        </ul>
                    </div>
                    <div class="gds-460-188-rt">
                        <ul>
                            <li>
                                <img src="img/123457.png"/>
                            </li>
                            <li>
                                <ol class="gds-460-188-rt-ol">
                                    <a>实物商品标题实物商</a>
                                </ol>
                                <ol class="gds-460-188-rt-oltwo">
                                    <span>¥2999</span>
                                    &nbsp;
                                    <span>￥3999</span>
                                </ol>
                            </li>
                        </ul>
                    </div>
                    <div class="gds-460-188-rt">
                        <ul>
                            <li>
                                <img src="img/123457.png"/>
                            </li>
                            <li>
                                <ol class="gds-460-188-rt-ol">
                                    <a>实物商品标题实物商</a>
                                </ol>
                                <ol class="gds-460-188-rt-oltwo">
                                    <span>¥2999</span>
                                    &nbsp;
                                    <span>￥3999</span>
                                </ol>
                            </li>
                        </ul>
                    </div>
                    <div class="gds-460-188-rt">
                        <ul>
                            <li>
                                <img src="img/123457.png"/>
                            </li>
                            <li>
                                <ol class="gds-460-188-rt-ol">
                                    <a>实物商品标题实物商</a>
                                </ol>
                                <ol class="gds-460-188-rt-oltwo">
                                    <span>¥2999</span>
                                    &nbsp;
                                    <span>￥3999</span>
                                </ol>
                            </li>
                        </ul>
                    </div>
                    <div class="gds-460-188-rt">
                        <ul>
                            <li>
                                <img src="img/123457.png"/>
                            </li>
                            <li>
                                <ol class="gds-460-188-rt-ol">
                                    <a>实物商品标题实物商</a>
                                </ol>
                                <ol class="gds-460-188-rt-oltwo">
                                    <span>¥2999</span>
                                    &nbsp;
                                    <span>￥3999</span>
                                </ol>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--魅族热销-->
    <div class="gds">
        <div class="gds-1200">
            <div class="gds-52">
                <span>3F 魅族</span>
                <div class="gds-52-1">
                    <li>64G版</li>
                    <li>128G版</li>
                    <li>256G版</li>
                    <li>512G版</li>
                </div>
            </div>
            <div class="gds-460">
                <div class="gds-460-248">
                    <div class="gds-460-248-img">
                        <img src="img/12569.png" />
                    </div>
                    <ol class="gds-460-248-olone">
                        <a>魅族手机 5G手机</a>
                    </ol>
                    <ol class="gds-460-248-oltwo">
                        <a>旗舰<span>2999</span>元起</a>
                    </ol>
                    <ul class="gds-460-248-ul clearfix">
                        <li>高清屏幕</li>
                        <li>2k分辨</li>
                        <li>128G内存</li>
                        <li>高通888</li>
                        <li>12G运行</li>
                        <li>深海蓝</li>
                    </ul>
                </div>
                <div class="gds-460-764">
                    <ul class="yijia">
                        <img src="img/12356.png" />
                        <li class="gds-460-764-lione">
                            <a>实物商品标题实物商品标题 实物商品标 题实物商品标</a>
                        </li>
                        <li class="gds-460-764-litwo">¥2999.00</li>
                    </ul>
                    <ul class="yijia">
                        <img src="img/12356.png" />
                        <li class="gds-460-764-lione">
                            <a>实物商品标题实物商品标题 实物商品标 题实物商品标</a>
                        </li>
                        <li class="gds-460-764-litwo">¥2999.00</li>
                    </ul>
                    <ul class="yijia">
                        <img src="img/12356.png" />
                        <li class="gds-460-764-lione">
                            <a>实物商品标题实物商品标题 实物商品标 题实物商品标</a>
                        </li>
                        <li class="gds-460-764-litwo">¥2999.00</li>
                    </ul>
                    <ul class="yijia">
                        <img src="img/12356.png" />
                        <li class="gds-460-764-lione">
                            <a>实物商品标题实物商品标题 实物商品标 题实物商品标</a>
                        </li>
                        <li class="gds-460-764-litwo">¥2999.00</li>
                    </ul>
                    <ul class="yijia">
                        <img src="img/12356.png" />
                        <li class="gds-460-764-lione">
                            <a>实物商品标题实物商品标题 实物商品标 题实物商品标</a>
                        </li>
                        <li class="gds-460-764-litwo">¥2999.00</li>
                    </ul>
                    <ul class="yijia">
                        <img src="img/12356.png" />
                        <li class="gds-460-764-lione">
                            <a>实物商品标题实物商品标题 实物商品标 题实物商品标</a>
                        </li>
                        <li class="gds-460-764-litwo">¥2999.00</li>
                    </ul>
                    <ul class="yijia">
                        <img src="img/12356.png" />
                        <li class="gds-460-764-lione">
                            <a>实物商品标题实物商品标题 实物商品标 题实物商品标</a>
                        </li>
                        <li class="gds-460-764-litwo">¥2999.00</li>
                    </ul>
                    <ul class="yijia">
                        <img src="img/12356.png" />
                        <li class="gds-460-764-lione">
                            <a>实物商品标题实物商品标题 实物商品标 题实物商品标</a>
                        </li>
                        <li class="gds-460-764-litwo">¥2999.00</li>
                    </ul>
                </div>
                <div class="gds-460-188">
                    <a class="gds-460-188-a">最新热卖</a>
                    <div class="gds-460-188-rt">
                        <ul>
                            <li>
                                <img src="img/12356.png"/>
                            </li>
                            <li>
                                <ol class="gds-460-188-rt-ol">
                                    <a>实物商品标题实物商</a>
                                </ol>
                                <ol class="gds-460-188-rt-oltwo">
                                    <span>¥2999</span>
                                    &nbsp;
                                    <span>￥3999</span>
                                </ol>
                            </li>
                        </ul>
                    </div>
                    <div class="gds-460-188-rt">
                        <ul>
                            <li>
                                <img src="img/12356.png"/>
                            </li>
                            <li>
                                <ol class="gds-460-188-rt-ol">
                                    <a>实物商品标题实物商</a>
                                </ol>
                                <ol class="gds-460-188-rt-oltwo">
                                    <span>¥2999</span>
                                    &nbsp;
                                    <span>￥3999</span>
                                </ol>
                            </li>
                        </ul>
                    </div>
                    <div class="gds-460-188-rt">
                        <ul>
                            <li>
                                <img src="img/12356.png"/>
                            </li>
                            <li>
                                <ol class="gds-460-188-rt-ol">
                                    <a>实物商品标题实物商</a>
                                </ol>
                                <ol class="gds-460-188-rt-oltwo">
                                    <span>¥2999</span>
                                    &nbsp;
                                    <span>￥3999</span>
                                </ol>
                            </li>
                        </ul>
                    </div>
                    <div class="gds-460-188-rt">
                        <ul>
                            <li>
                                <img src="img/12356.png"/>
                            </li>
                            <li>
                                <ol class="gds-460-188-rt-ol">
                                    <a>实物商品标题实物商</a>
                                </ol>
                                <ol class="gds-460-188-rt-oltwo">
                                    <span>¥2999</span>
                                    &nbsp;
                                    <span>￥3999</span>
                                </ol>
                            </li>
                        </ul>
                    </div>
                    <div class="gds-460-188-rt">
                        <ul>
                            <li>
                                <img src="img/12356.png"/>
                            </li>
                            <li>
                                <ol class="gds-460-188-rt-ol">
                                    <a>实物商品标题实物商</a>
                                </ol>
                                <ol class="gds-460-188-rt-oltwo">
                                    <span>¥2999</span>
                                    &nbsp;
                                    <span>￥3999</span>
                                </ol>
                            </li>
                        </ul>
                    </div>
                    <div class="gds-460-188-rt">
                        <ul>
                            <li>
                                <img src="img/12356.png"/>
                            </li>
                            <li>
                                <ol class="gds-460-188-rt-ol">
                                    <a>实物商品标题实物商</a>
                                </ol>
                                <ol class="gds-460-188-rt-oltwo">
                                    <span>¥2999</span>
                                    &nbsp;
                                    <span>￥3999</span>
                                </ol>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--结尾-->
    <div class="asbtm-100">
        <div class="asbtm-1200">
            <a>本商店由【远上寒山】公司提供展示</a>
            <a>公安备案:1101088321</a>
            <a>投诉电话:110-1234588</a>
            <a>京A:231-8888</a>
        </div>
    </div>
</div>
</body>
</html>
<script src="js/jquery-3.5.1.min.js"></script>
<script src="js/ft-carousel.min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
    $("#carousel_1").FtCarousel();

    $("#carousel_2").FtCarousel({
        index: 1,
        auto: false
    });

    $("#carousel_3").FtCarousel({
        index: 0,
        auto: true,
        time: 3000,
        indicators: false,
        buttons: true
    });
</script>
