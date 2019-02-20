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
    <script type="text/javascript" src="json/layui.js"></script>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
</head>
<body>

<div class="site-nav-bg">
    <div class="site-nav w1200">
        <p class="sn-back-home">
            <i class="layui-icon layui-icon-home"></i>
            <a href="index.jsp">首页</a>
        </p>
        <div class="sn-quick-menu">
            <div class="login"><a href="login.jsp">登录</a></div>
            <div class="sp-cart"><a href="shopcart.jsp">购物车</a><span>2</span></div>
        </div>
    </div>
</div>


<div style="margin-left: 600px">
    <form id="userForm" method="post" action="${pageContext.request.contextPath}/reg">
        <div style="margin-left: 60px">
            <legend><b><h3 style="color: #bf53b0; margin-left: 50px">用户注册</h3></b></legend>
        </div>
        <div style="margin-left: 110px">
            <legend><b style="color: #bf53b0;">REGISTER</b></legend>
        </div>
        <div>
            <table>
                <tr>
                    <td><span>用&numsp;&numsp;户：</span></td>
                    <td><input type="text" name="uname"/></td>
                </tr>
                <tr>
                    <td><span>密&numsp;&numsp;码：</span></td>
                    <td><input type="password" name="upass"/></td>
                </tr>
                <tr>
                    <td><span>请确认：</span></td>
                    <td><input type="password" name="reupass"/></td>
                </tr>
                <tr>
                    <td><span>姓&numsp;&numsp;名：</span></td>
                    <td><input type="text" name="userName"/></td>
                </tr>
                <tr>
                    <td><span>性&numsp;&numsp;别：</span></td>
                    <td><input type="radio" name="usex" value="男"/>男<input type="radio" name="usex" value="女"/>女</td>
                </tr>
                <tr>
                    <td><span>年&numsp;&numsp;龄：</span></td>
                    <td><input type="text" name="uage"/></td>
                </tr>
                <tr>
                    <td><span>电&numsp;&numsp;话：</span></td>
                    <td><input type="text" name="utel"/></td>
                </tr>
                <tr>
                    <td><span>地&numsp;&numsp;址：</span></td>
                    <td><input type="text" name="uaddress"/></td>
                </tr>
                <tr>
                    <td><span>验证码：</span></td>
                    <td><input type="text" width="200px"><img src="/JSP/check"></td>
                </tr>
            </table>
        </div>
        <div style="margin-left: 90px">
            <button style="margin-top: 20px; color: #bf53b0; width: 80px;" type="submit" onclick="registerUser()">注册
            </button>
        </div>
    </form>
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
            <a href="javascript:;">图书资讯</a>
            <span>|</span>
            <a href="javascript:;">关于货源</a>
        </p>
        <p class="coty">COOL BOYS KU酷图书馆商城版权所有 &copy; 2018-2028</p>
    </div>
</div>
<script>

    function registerUser() {
        // 本地校验
        // 提交表单
        var userForm = document.getElementById("userForm");
        userForm.submit();
    }

</script>

</body>
</html>