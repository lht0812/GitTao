<%--
  Created by IntelliJ IDEA.
  User: 许鹏
  Date: 2018/12/11
  Time: 10:48
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


<div class="content content-nav-base commodity-content">
    <div class="main-nav">
        <div class="inner-cont0">
            <div class="inner-cont1 w1200">
                <div class="inner-cont2">
                    <a href="commodity.jsp" class="active">所有商品</a>
                    <a href="information.jsp">图书资讯</a>
                    <a href="about.jsp">关于我们</a>
                </div>
            </div>
        </div>
    </div>
    <div class="commod-cont-wrap">
        <div class="commod-cont w1200 layui-clear">
            <div class="left-nav">
                <div class="title">所有分类</div>
                <div class="list-box">
                    <dl>
                        <dt>奶粉辅食</dt>
                        <dd><a href="javascript:;">进口奶粉</a></dd>
                        <dd><a href="javascript:;">宝宝辅食</a></dd>
                        <dd><a href="javascript:;">营养品</a></dd>
                    </dl>
                    <dl>
                        <dt>儿童用品</dt>
                        <dd><a href="javascript:;">纸尿裤</a></dd>
                        <dd><a href="javascript:;">婴儿湿巾</a></dd>
                        <dd><a href="javascript:;">婴儿车</a></dd>
                        <dd><a href="javascript:;">婴儿床</a></dd>
                        <dd><a href="javascript:;">儿童安全座椅</a></dd>
                    </dl>
                    <dl>
                        <dt>儿童早教</dt>
                        <dd><a href="javascript:;">儿童玩具</a></dd>
                        <dd><a href="javascript:;">早教书籍</a></dd>
                        <dd><a href="javascript:;">孕产育儿书</a></dd>
                    </dl>
                    <dl>
                        <dt>儿童服饰</dt>
                        <dd><a href="javascript:;">童装</a></dd>
                        <dd><a href="javascript:;">童鞋</a></dd>
                        <dd><a href="javascript:;">宝宝配饰</a></dd>
                    </dl>
                    <dl>
                        <dt>孕妈专区</dt>
                        <dd><a href="javascript:;">孕妇装</a></dd>
                        <dd><a href="javascript:;">孕妇护肤</a></dd>
                        <dd><a href="javascript:;">孕妇用品</a></dd>
                    </dl>
                </div>
            </div>
            <div class="right-cont-wrap">
                <div class="right-cont">
                    <div class="sort layui-clear">
                        <a class="active" href="javascript:;" event = 'volume'>销量</a>
                        <a href="javascript:;" event = 'price'>价格</a>
                        <a href="javascript:;" event = 'newprod'>新品</a>
                        <a href="javascript:;" event = 'collection'>收藏</a>
                    </div>
                    <div class="prod-number">
                        <span>200个</span>
                    </div>
                    <div class="cont-list layui-clear" id="list-cont">
                        <div class="item">
                            <div class="img">
                                <a href="javascript:;"><img src="img/paging_img1.jpg"></a>
                            </div>
                            <div class="text">
                                <p class="title">森系小清新四件套</p>
                                <p class="price">
                                    <span class="pri">￥200</span>
                                    <span class="nub">1266付款</span>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div id="demo0" style="text-align: center;"></div>
                </div>
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