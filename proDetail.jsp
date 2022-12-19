<%--
  Created by IntelliJ IDEA.
  User: 千木枫
  Date: 2021/7/27
  Time: 16:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="d" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>商品详情页</title>
    <link rel="stylesheet" type="text/css" href="css/public1.css"/>
    <link rel="stylesheet" type="text/css" href="css/proList.css"/>
    <style type="text/css">
        .address .wrapper a:hover{
            color: #a10000;
        }
    </style>
</head>
<body>
<!------------------------------head------------------------------>
<!-----------------address------------------------------->
<div class="address">
    <div class="wrapper clearfix">
        <a href="/MyShop/admin_tomain">首页</a><span>/</span>
        <a href="#">装饰摆件</a><span>/</span>
        <a href="#">干花花艺</a><span>/</span>
        <a href="#" class="on">【${pp}】${goodsname}</a>
    </div>
</div>
<!-----------------------Detail------------------------------>
<div class="detCon">
    <div class="proDet wrapper">
        <div class="proCon clearfix">
            <div class="proImg fl"><img class="det" src="<%=(String)request.getAttribute("photo")%>"/>
<%--                <div class="smallImg clearfix">--%>
<%--                    <img src="image/temp/proDet01.jpg" data-src="image/temp/proDet01_big.jpg">--%>
<%--                    <img src="image/temp/proDet02.jpg" data-src="image/temp/proDet02_big.jpg">--%>
<%--                    <img src="image/temp/proDet03.jpg" data-src="image/temp/proDet03_big.jpg">--%>
<%--                    <img src="image/temp/proDet04.jpg" data-src="image/temp/proDet04_big.jpg">--%>
<%--                </div>--%>
            </div>
            <div class="fr intro">
                <div class="title"><h4>【${pp}】${goodsname}</h4>
<%--                    <p>${dis}</p>--%>
                    <span>￥${price}</span></div>
                <div class="proIntro"><p>商品描述</p>
                        <div>
                            <p>${dis}</p>
                        </div>
<%--                    <div class="smallImg clearfix categ">--%>
<%--                        <p class="fl"><img src="image/temp/prosmall01.jpg" alt="白瓷花瓶+20支快乐花" data-src="image/temp/proBig01.jpg"></p>--%>
<%--                        <p class="fl"><img src="image/temp/prosmall02.jpg" alt="白瓷花瓶+20支兔尾巴草" data-src="image/temp/proBig02.jpg"></p>--%>
<%--                        <p class="fl"><img src="image/temp/prosmall03.jpg" alt="20支快乐花" data-src="image/temp/proBig03.jpg"></p>--%>
<%--                        <p class="fl"><img src="image/temp/prosmall04.jpg" alt="20支兔尾巴草" data-src="image/temp/proBig04.jpg">--%>
<%--                        </p>--%>
<%--                    </div>--%>
                    <p class="sspan1">数量&nbsp;&nbsp;库存<span id="sspan1">${goodssum}</span>件</p>
                    <div class="num clearfix">
                        <img class="fl sub" src="image/temp/sub.jpg">
                        <span class="fl" id="shuliang" contentEditable="true">1</span>
                        <img class="fl add" id="add1" src="image/temp/add.jpg">
<%--                        <p class="please fl">请选择商品属性!</p>--%>
                    </div>
                </div>
                <div class="btns clearfix">
                    <a href="javascript:toorder(${goodsid})"><p class="buy fl">立即购买</p></a>
                    <a href="javascript:addcate(${goodsid})"><p class="cart fr">加入购物车</p></a>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    function toorder(goodsid) {
        var shuliang = document.getElementById("shuliang").innerText;

        location.href = 'admin_order?gid='+goodsid+'&sum='+shuliang;
    }
   function addcate(goodsid){
       var shuliang = document.getElementById("shuliang").innerText;
       var price1 = ${price};
       location.href = 'admin_tocate?goodsid='+goodsid+'&sum='+shuliang+'&price='+price1;
   }
</script>
<%----------------------------------------评论div-------------------------------------%>
<div class="introMsg wrapper clearfix">
    <div class="msgL fl">
        <div class="msgTit clearfix">
<%--            <a class="on">商品详情</a>--%>
            <a onclick="isOn()" id="ison">所有评价</a></div>
        <div class="msgAll">
<%--            <div class="msgImgs">--%>
<%--                <img src="image/temp/det01.jpg">--%>
<%--                <img src="image/temp/det02.jpg">--%>
<%--                <img src="image/temp/det03.jpg">--%>
<%--                <img src="image/temp/det04.jpg">--%>
<%--                <img src="image/temp/det05.jpg">--%>
<%--                <img src="image/temp/det06.jpg">--%>
<%--                <img src="image/temp/det07.jpg">--%>
<%--            </div>--%>
<%--            <div class="eva">--%>
            <div class="msgImgs">
                <d:forEach var="u" items="${list}">
                    <div class="per clearfix">
                    <img class="fl" src="${u.getHeadphoto()}" style="border-radius: 50%;overflow: hidden;width: 40px">
                    <div class="perR fl"><p>${u.getUsername()}</p>
                        <p>${u.getComments()}</p>
                        <div class="clearfix">
                            <p><img  src="<%=(String)request.getAttribute("photo")%>" style="width: 40px;height: 40px"></p>
<%--                            <p><img src="image/temp/eva02.jpg"></p>--%>
<%--                            <p><img src="image/temp/eva03.jpg"></p>--%>
<%--                            <p><img src="image/temp/eva04.jpg"></p>--%>
<%--                            <p><img src="image/temp/eva05.jpg"></p>--%>
                        </div>
                        <p>
                            <span>${u.getCommenttime()}</span>
                            <span>颜色分类：大中小三件套（不含花）</span>
                        </p>
                    </div>
                </div>
                </d:forEach>
            </div>

        </div>
    </div>
    <script>
        function isOn(){
            alert(true);
            return true;
        }
    </script>

<%--    <div class="msgR fr"><h4>为你推荐</h4>--%>
<%--        <div class="seeList"><a href="#">--%>
<%--            <dl>--%>
<%--                <dt><img src="image/temp/see01.jpg"></dt>--%>
<%--                <dd>【最家】复古文艺风玻璃花瓶</dd>--%>
<%--                <dd>￥193.20</dd>--%>
<%--            </dl>--%>
<%--        </a><a href="#">--%>
<%--            <dl>--%>
<%--                <dt><img src="image/temp/see02.jpg"></dt>--%>
<%--                <dd>【最家】复古文艺风玻璃花瓶</dd>--%>
<%--                <dd>￥193.20</dd>--%>
<%--            </dl>--%>
<%--        </a><a href="#">--%>
<%--            <dl>--%>
<%--                <dt><img src="image/temp/see03.jpg"></dt>--%>
<%--                <dd>【最家】复古文艺风玻璃花瓶</dd>--%>
<%--                <dd>￥193.20</dd>--%>
<%--            </dl>--%>
<%--        </a><a href="#">--%>
<%--            <dl>--%>
<%--                <dt><img src="image/temp/see04.jpg"></dt>--%>
<%--                <dd>【最家】复古文艺风玻璃花瓶</dd>--%>
<%--                <dd>￥193.20</dd>--%>
<%--            </dl>--%>
<%--        </a></div>--%>
<%--    </div>--%>
<%--</div>--%>
<!--返回顶部-->
<div class="gotop">
    <a href="/MyShop/admin_cate">
    <dl class="goCart">
        <dt><img src="image/gt1.png"/></dt>
        <dd>去购<br/>物车</dd>
        <span>1</span></dl>
    </a>
    <a href="#" class="dh">
    <dl>
        <dt><img src="image/gt2.png"/></dt>
        <dd>联系<br/>客服</dd>
    </dl>
    </a>
    <a href="/MyShop/admin_togrzx">
    <dl>
        <dt><img src="image/gt3.png"/></dt>
        <dd>个人<br/>中心</dd>
    </dl>
    </a>
    <a href="#" class="toptop" style="display: none;">
    <dl>
        <dt><img src="image/gt4.png"/></dt>
        <dd>返回<br/>顶部</dd>
    </dl>
    </a>
    <p>400-800-8200</p>
</div>
<div class="msk"></div><!--footer-->
<div class="footer">
    <div class="top">
        <div class="wrapper">
            <div class="clearfix"><a href="#2" class="fl"><img src="image/foot1.png"/></a><span class="fl">7天无理由退货</span>
            </div>
            <div class="clearfix"><a href="#2" class="fl"><img src="image/foot2.png"/></a><span class="fl">15天免费换货</span>
            </div>
            <div class="clearfix"><a href="#2" class="fl"><img src="image/foot3.png"/></a><span class="fl">满599包邮</span>
            </div>
            <div class="clearfix"><a href="#2" class="fl"><img src="image/foot4.png"/></a><span class="fl">手机特色服务</span>
            </div>
        </div>
    </div>
    <p class="dibu">最家家居&copy;2013-2017公司版权所有 京ICP备080100-44备0000111000号<br/>
        违法和不良信息举报电话：188-0130-1238，本网站所列数据，除特殊说明，所有数据均出自我司实验室测试</p></div>
<script src="js/jquery-1.12.4.min.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.SuperSlide.2.1.1.js" type="text/javascript" charset="utf-8"></script>
<script src="js/public.js" type="text/javascript" charset="utf-8"></script>
<script src="js/nav.js" type="text/javascript" charset="utf-8"></script>
<script src="js/pro.js" type="text/javascript" charset="utf-8"></script>
<script src="js/cart.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">jQuery(".bottom").slide({
    titCell: ".hd ul",
    mainCell: ".bd .likeList",
    autoPage: true,
    autoPlay: false,
    effect: "leftLoop",
    autoPlay: true,
    vis: 1
});</script>
</body>
</html>