<%--
  Created by IntelliJ IDEA.
  User: 许鹏
  Date: 2018/12/11
  Time: 11:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <link rel="stylesheet" type="text/css" href="css/layui.css">
    <script type="text/javascript" src=json/layui.js"></script>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
</head>
<body>

<div class="site-nav-bg">
    <div class="site-nav w1200">
        <p class="sn-back-home">
            <i class="layui-icon layui-icon-home"></i>
            <a href="#">首页</a>
        </p>
        <div class="sn-quick-menu">
            <div class="login"><a href="login.jsp">登录</a></div>
            <div class="sp-cart"><a href="shopcart.jsp">购物车</a><span>2</span></div>
        </div>
    </div>
</div>


<div class="header">
    <div class="headerLayout w1200">
        <div class="headerCon">
            <h1 class="mallLogo">
                <a href="#" title="母婴商城">
                    <img src="img/logo.png">
                </a>
            </h1>
            <div class="mallSearch">
                <form action="" class="layui-form" novalidate>
                    <input type="text" name="title" required lay-verify="required" autocomplete="off"
                           class="layui-input" placeholder="请输入需要的商品">
                    <button class="layui-btn" lay-submit lay-filter="formDemo">
                        <i class="layui-icon layui-icon-search"></i>
                    </button>
                    <input type="hidden" name="" value="">
                </form>
            </div>
        </div>
    </div>
</div>


<div class="content content-nav-base  login-content">
    <div class="main-nav">
        <div class="inner-cont0">
            <div class="inner-cont1 w1200">
                <div class="inner-cont2">
                    <a href="commodity.jsp" class="active">所有商品</a>
                    <a href="buytoday.jsp">今日团购</a>
                    <a href="information.jsp">母婴资讯</a>
                    <a href="about.jsp">关于我们</a>
                </div>
            </div>
        </div>
    </div>
    <div class="login-bg">
        <div class="login-cont w1200">
            <div class="form-box">
                <form method="post" id="loginForm" class="layui-form" action="${pageContext.request.contextPath}/login">
                    <legend><b style="color: #bf53b0;">用户登录<P style="color: #bf53b0;">LOGIN</P></b></legend>
                    <div class="layui-form-item">
                        <div class="layui-inline iphone">
                            <div class="layui-input-inline">
                                账户：<input type="text" name="uname" placeholder="请输入用户名"
                                          style="height: 30px; width: 200px;"><br/>
                            </div>
                        </div>
                        <div class="layui-inline veri-code">
                            <div class="layui-input-inline">
                                密码：<input type="password" name="upass" placeholder="请输入密码"
                                          style="height: 30px; width: 200px;">
                            </div>
                        </div>
                    </div>
                    <center>
                        <div class="layui-form-item login-btn">
                            <div class="layui-input-block">
                                <button class="layui-btn" lay-submit="" lay-filter="demo1" onclick="loginUser()">登录
                                </button>
                            </div>

                            <div style="float: right">
                                <a href="${pageContext.request.contextPath}/1.jsp" style="color: #ff1f2b">我要注册</a>
                            </div>
                        </div>

                    </center>
                </form>
            </div>
        </div>
    </div>
</div>

<div class="footer">
    <div class="ng-promise-box">
        <div class="ng-promise w1200">
            <p class="text">
                <a class="icon1" href="javascript:;">7天无理由退换货</a>
                <a class="icon2" href="javascript:;">满99元全场免邮</a>
                <a class="icon3" style="margin-right: 0" href="javascript:;">100%品质保证</a>
            </p>
        </div>
    </div>
    <div class="mod_help w1200">
        <p>
            <a href="javascript:;">关于我们</a>
            <span>|</span>
            <a href="javascript:;">帮助中心</a>
            <span>|</span>
            <a href="javascript:;">售后服务</a>
            <span>|</span>
            <a href="javascript:;">母婴资讯</a>
            <span>|</span>
            <a href="javascript:;">关于货源</a>
        </p>
        <p class="coty">COOL BOYS KU酷图书馆商城版权所有 &copy; 2018-2028</p>
    </div>
</div>

<script type="text/javascript">

    function loginUser() {
        var loginForm = document.getElementById("loginForm");
        loginForm.submit();
    }
</script>
</body>
</html>