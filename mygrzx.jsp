<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
    <meta charset="utf-8"/>
    <title>个人中心</title>
    <link rel="stylesheet" type="text/css" href="css/public.css"/>
    <link rel="stylesheet" type="text/css" href="css/mygxin.css"/>
    <style type="text/css">
        .address .wrapper a:hover{
            color: #a10000;
        }
    </style>
</head>
<body>

<!------------------------------idea------------------------------>
<div class="address mt" id="add">
    <div class="wrapper clearfix">
        <a href="/MyShop/admin_tomain" class="fl">首页</a><span>/</span>
        <a href="/MyShop/admin_togrzx">个人中心</a><span>/</span>
        <a href="#" class="on">我的中心</a>
    </div>
</div><!------------------------------Bott------------------------------>
<div class="Bott">
    <div class="wrapper clearfix">
        <div class="zuo fl">
            <h3>
                <a href="#"><img src="<%=(String)request.getAttribute("photo")%>"/></a>
                <p class="clearfix">
                    <%--                    最多8个汉字 --%>
                    <span >[${name}]</span>
                    <br>
                    <span style="margin-left: -10px;"><a href="/MyShop/logout">[退出登录]</a></span>
                </p>
            </h3>
            <div>
                <h4>个人中心</h4>
                <ul>
                    <li><a href="/MyShop/admin_cate">我的购物车</a></li>
                    <li><a href="/MyShop/admin_tomyorder">我的订单</a></li>
                    <li><a href="/MyShop/admin_toprod">评价晒单</a></li>
                </ul>
                <ul>
                    <li class="on"><a href="#">我的中心</a></li>
                    <li><a href="/MyShop/admin_toaddress">地址管理</a></li>
                </ul>
                <ul>
                    <li ><a href="#">个人信息</a></li>
                    <li><a href="/MyShop/admin_toremima">修改密码</a></li>
                </ul>
            </div>
        </div>
        <div class="you fl">
            <div class="tx clearfix">
                <div class="fl clearfix">
                    <a href="#" class="fl">
                        <img src="<%=(String)request.getAttribute("photo")%>"/>
                    </a>
                    <p class="fl">
                        <span>${name}</span>
                        <a href="/MyShop/admin_togrxx">修改个人信息></a>
                    </p>
                </div>
                <div class="fr">绑定邮箱：${name}</div>
            </div>
            <div class="bott">
                <div class="clearfix"><a href="#" class="fl"><img src="image/gxin1.jpg"/></a>
                    <p class="fl"><span>待支付的订单：<strong>${cate}</strong></span><a href="/MyShop/admin_cate">查看待支付订单></a></p></div>
                <div class="clearfix"><a href="#" class="fl"><img src="image/gxin2.jpg"/></a>
                    <p class="fl"><span>待收货的订单：<strong>${order}</strong></span><a href="/MyShop/admin_tomyorder">查看待收货订单></a></p></div>
                <div class="clearfix"><a href="#" class="fl"><img src="image/gxin3.jpg"/></a>
                    <p class="fl"><span>待评价的订单：<strong>${comment}</strong></span><a href="/MyShop/admin_toprod">查看待评价订单></a></p></div>
                <div class="clearfix"><a href="#" class="fl"><img src="image/gxin4.jpg"/></a>
                    <p class="fl"><span>喜欢的商品：<strong>0</strong></span><a href="javascript:like()">查看喜欢的商品></a></p></div>
            </div>
        </div>
    </div>
</div>

<script>
    function like() {
        alert("功能开发中，敬请期待");
    }
</script>

<!--返回顶部-->
<div class="gotop">
    <a href="/MyShop/admin_cate">
    <dl>
        <dt><img src="image/gt1.png"/></dt>
        <dd>去购<br/>物车</dd>
    </dl>
</a><a href="#" class="dh">
    <dl>
        <dt><img src="image/gt2.png"/></dt>
        <dd>联系<br/>客服</dd>
    </dl>
</a><a href="#">
    <dl>
        <dt><img src="image/gt3.png"/></dt>
        <dd>个人<br/>中心</dd>
    </dl>
</a><a href="#" class="toptop" style="display: none">
    <dl>
        <dt><img src="image/gt4.png"/></dt>
        <dd>返回<br/>顶部</dd>
    </dl>
</a>
    <p>400-800-8200</p></div>
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
        违法和不良信息举报电话：400-800-8200，本网站所列数据，除特殊说明，所有数据均出自我司实验室测试</p></div>
<script src="js/jquery-1.12.4.min.js" type="text/javascript" charset="utf-8"></script>
<script src="js/public.js" type="text/javascript" charset="utf-8"></script>
<script src="js/user.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>