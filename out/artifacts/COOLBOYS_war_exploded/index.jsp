<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/11 0011
  Time: 上午 9:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
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
<body id="list-cont">
<div class="site-nav-bg">
  <div class="site-nav w1200">
    <p class="sn-back-home">
      <i class="layui-icon layui-icon-home"></i>
      <a href="index.jsp">首页</a>
    </p>
    <div class="sn-quick-menu">

      <c:if test="${sessionScope.sessUser eq null}">
        <div class="login"><a href="${pageContext.request.contextPath}/login.jsp">登录</a></div>
      </c:if>

      <c:if test="${sessionScope.sessUser ne null}">
        <div class="login">${sessionScope.sessUser.nickname},
          <a href="${pageContext.request.contextPath}/logout">注销</a></div>
      </c:if>

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


<div class="content">
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

  <c:forEach var="goodsInfo" items="${sessionScope.list}">

  <div class="product-list-box" id="product-list-box">
    <div class="product-list-cont w1200">
      <div class="product-item-box layui-clear">
        <div class="list-item">
          <a href="javascript:;"><img src="img/more1.jpg"></a>
          <p>${goodsInfo.goodsname}</p>
          <span>${goodsInfo.goodsprice}</span>
          <p>${goodsInfo.author}</p>
          <p>${goodsInfo.press}</p>
          <p>${goodsInfo.timemarket}</p>
          <p>${goodsInfo.goodssum}</p>
          <a><input type="button" value="加入购物车"></a>
          <a href="shopcart.jsp"><input type="button" value="直接购买"></a>
        </div>
      </div>
    </div>
  </div>
</div>

</c:forEach>


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

    layui.config({
        base: '../res/static/js/util/' //你存放新模块的目录，注意，不是layui的模块目录
    }).use(['mm', 'carousel'], function () {
        var carousel = layui.carousel,
            mm = layui.mm;
        var option = {
            elem: '#test1'
            , width: '100%' //设置容器宽度
            , arrow: 'always'
            , height: '298'
            , indicator: 'none'
        }
        carousel.render(option);
        // 模版引擎导入
        // var ins = carousel.render(option);
        // var html = demo.innerHTML;
        // var listCont = document.getElementById('list-cont');
        // // console.log(layui.router("#/about.html"))
        //  mm.request({
        //    url: '../json/index.json',
        //    success : function(res){
        //      console.log(res)
        //      listCont.innerHTML = mm.renderHtml(html,res)
        //      ins.reload(option);
        //    },
        //    error: function(res){
        //      console.log(res);
        //    }
        //  })


    });
</script>
</body>
</html>