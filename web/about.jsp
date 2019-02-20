<%--
  Created by IntelliJ IDEA.
  User: 许鹏
  Date: 2018/12/11
  Time: 10:10
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
                <a href="#" title="母婴商城">
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


<div class="content content-nav-base about-content">
    <div class="main-nav">
        <div class="inner-cont0">
            <div class="inner-cont1 w1200">
                <div class="inner-cont2">
                    <a href="commodity.jsp">所有商品</a>
                    <a href="information.jsp">图书资讯</a>
                    <a href="about.jsp"  class="active">关于我们</a>
                </div>
            </div>
        </div>
    </div>
    <div class="banner-box">
        <div class="banner"></div>
    </div>
    <div class="brief-content layui-clear w1200">
        <div class="img-box">
            <img src="img/us_img1.jpg">
            <img class="top" src="img/us_img2.jpg">
        </div>
        <div class="text">
            <p>我们的母婴产业2016年涉足母婴行业，以品牌经销为主，在强大市场的推动下，于2016年创立自己的独立品牌。公司立足于江西南昌，2年的品牌沉淀和运营经验让我们在行业中获得良好的口碑和市场份额。以直营+连锁加盟模式，让成功可复制，成为越来越多中小投资者的优选项目，更多的妈妈青睐我们的产品。</p>
        </div>
    </div>
    <div class="banner-text">
        <div class="w1200">
            <p>我们的母婴产业2016年涉足母婴行业，以品牌经销为主，在强大市场的推动下，于2016年创立自己的独立品牌。公司立足于江西南昌，2年的品牌沉淀和运营经验让我们在行业中获得良好的口碑和市场份额。以直营+连锁加盟模式，让成功可复制，成为越来越多中小投资者的优选项目，更多的妈妈青睐我们的产品。</p>
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
            <a href="javascript:;">图书资讯</a>
            <span>|</span>
            <a href="javascript:;">关于货源</a>
        </p>
        <p class="coty">COOL BOYS KU酷图书馆商城版权所有 &copy; 2018-2028</p>
    </div>
</div>


</body>
</html>
