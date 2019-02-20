<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <style type="text/css">
        #boxdiv {
            width: 220px;
            height: 220px;
            float: left;
            border: darkgray 1px solid;
            overflow: hidden;
        }

        #smalldiv {
            width: 200px;
            height: 50px;
            border: darkgray 1px solid;
        }

        #smalldiv div{
            float: left;
        }

        #smalldiv div img{
            width: 50px;
            height: 50px;
        }

        #jiage {
            width: 100px;
            height: 50px;
            font-size: 30px;
            color: red;
        }

        #wenzi {
            padding-top: 200px;
            color: dimgray;
            font-size: 15px;
        }
    </style>
</head>
<body>
<div>
    <div id="boxdiv">
        <img id="imgs" src="img/1900094328_ii_cover.jpg" width="220" height="250">
    </div>


    <div id="jiage">￥99.00</div>

    <div id="wenzi">
        <p>简介：本书讲述了主人公保尔·柯察金从一个在社会底层...</p>
        <h3 style="color: rgba(43,58,53,0.9)">钢铁是怎样炼成的</h3>
        <p>作者：(苏)奥斯特洛夫斯基</p>
        <p>出版社：中国戏剧出版社</p>
        <p>已有<a style="color: lightseagreen"><b>68万+</b></a>人评价</p>
        <p>京东自营旗舰店</p>
        <a href="shopcart.jsp"><input type="submit" value="加入购物车"></a>
    </div>
</div>

<script>
    var img4 = document.getElementById("img4");
    var imgs = document.getElementById("imgs");
    img4.onmouseover = function () {
        imgs.src = "img/s04.png"
    }
    img4.onmouseout = function () {
        imgs.src = "img/s04.png";
    }

    var img1 = document.getElementById("img1");
    img1.onmouseover = function () {
        imgs.src = "img/s01.png"
    }
    img1.onmouseout = function () {
        imgs.src = "img/s01.png";
    }

    var img2 =  document.getElementById("img2");
    img2.onmouseover = function () {
        imgs.src = "img/s02.png"
    }
    img2.onmouseout = function () {
        imgs.src = "img/s02.png";
    }


    var img3 =  document.getElementById("img3");
    img3.onmouseover = function () {
        imgs.src = "img/s03.png"
    }
    img3.onmouseout = function () {
        imgs.src = "img/s03.png";
    }

</script>

</body>
</html>