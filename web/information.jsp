<%--
  Created by IntelliJ IDEA.
  User: 许鹏
  Date: 2018/12/11
  Time: 11:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <link rel="stylesheet" type="text/css" href="css/layui.css">
    <script type="text/javascript" src="json/layui.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
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



<div class="header">
    <div class="headerLayout w1200">
        <div class="headerCon">
            <h1 class="mallLogo">
                <a href="#" title="图书商城">
                    <img src="img/logo1.png">
                </a>
            </h1>
            <div class="mallSearch">
                <form action="" class="layui-form" novalidate>
                    <input type="text" name="title" required  lay-verify="required" autocomplete="off" class="layui-input" placeholder="请输入需要的商品">
                    <button class="layui-btn" lay-submit lay-filter="formDemo">
                        <i class="layui-icon layui-icon-search"></i>
                    </button>
                    <input type="hidden" name="" value="">
                </form>
            </div>
        </div>
    </div>
</div>


<div class="content content-nav-base information-content">
    <div class="main-nav">
        <div class="inner-cont0">
            <div class="inner-cont1 w1200">
                <div class="inner-cont2">
                    <a href="commodity.jsp">所有商品</a>
                    <a href="information.jsp">图书资讯</a>
                    <a href="about.jsp">关于我们</a>
                </div>
            </div>
        </div>
    </div>
    <div class="info-list-box">
        <div class="info-list w1200">
            <div class="item-box layui-clear" id="list-cont">
                <div class="item">
                    <div class="img">
                        <img src="img/new1.jpg" alt="">
                    </div>
                    <div class="text">
                        <h4>周岁内的宝宝消化不良拉肚子怎么办?</h4>
                        <p class="data">2016-12-24 16:33:26</p>
                        <p class="info-cont">宝宝在周岁之前体质相对较弱，特别是薄弱肠道，一不注意就会拉肚子;那么宝宝消化不良拉肚子</p>
                    </div>
                </div>
                <div class="item">
                    <div class="img">
                        <img src="img/new2.jpg" alt="">
                    </div>
                    <div class="text">
                        <h4>周岁内的宝宝消化不良拉肚子怎么办?</h4>
                        <p class="data">2016-12-24 16:33:26</p>
                        <p class="info-cont">宝宝在周岁之前体质相对较弱，特别是薄弱肠道，一不注意就会拉肚子;那么宝宝消化不良拉肚子</p>
                    </div>
                </div>
            </div>
            <div id="demo0" style="text-align: center;"></div>
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
            <a href="javascript:;">图书资讯</a>
            <span>|</span>
            <a href="javascript:;">关于货源</a>
        </p>
        <p class="coty">COOL BOYS KU酷图书馆商城版权所有 &copy; 2018-2028</p>
    </div>
</div>

</body>
</html>