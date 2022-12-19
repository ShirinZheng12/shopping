<%--
  Created by IntelliJ IDEA.
  User: 千木枫
  Date: 2021/8/12
  Time: 14:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="d" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head lang="en">
    <meta charset="utf-8"/>
    <title>订单详情</title>
    <link rel="stylesheet" type="text/css" href="css/public.css"/>
    <link rel="stylesheet" type="text/css" href="css/myorder.css"/>
</head>
<body><!------------------------------head------------------------------>
<!------------------------------idea------------------------------>
<div class="address mt">
    <div class="wrapper clearfix">
        <a href="/MyShop/amdin_tomain" class="fl">首页</a><span>/</span>
        <a href="/MyShop/admin_tomyorder">我的订单</a><span>/</span>
        <a href="#" class="on">订单详情</a>
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
                    <li class="on"><a href="/MyShop/admin_tomyorder">我的订单</a></li>
                    <li><a href="/MyShop/admin_toprod">评价晒单</a></li>
                </ul>
                <ul>
                    <li><a href="/MyShop/admin_togrzx">我的中心</a></li>
                    <li><a href="/MyShop/admin_toaddress">地址管理</a></li>
                </ul>
                <ul>
                    <li><a href="/MyShop/admin_togrxx">个人信息</a></li>
                    <li><a href="/MyShop/admin_toremima">修改密码</a></li>
                </ul>
            </div>
        </div>
        <div class="you fl">
            <div class="my clearfix">
                <h2>订单详情<a href="#">请谨防钓鱼链接或诈骗电话，了解更多&gt;</a></h2>
                <h3>订单号：<span>${list.getCateid()}</span></h3></div>
            <div class="orderList">
                <div class="orderList1">
                    <h3>已收货</h3>
                    <div class="clearfix"><a href="#" class="fl">
                        <img style="width: 80px;height: 80px;" src="${list.getGoodsphoto()}"/></a>
                        <p class="fl"><a href="#">${list.getGoodsname()}</a><a href="#">¥${list.getPrice()}×${list.getSum()}</a></p></div>
                </div>
                <div class="orderList1"><h3>收货信息</h3>
                    <p>姓 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：<span>${name}</span></p>
                    <p>联系电话：<span>${list.getPhone()}</span></p>
                    <p>收货地址：<span>
                        ${address.getProvince()}&nbsp;&nbsp;
                        ${address.getCity()}&nbsp;&nbsp;
                        ${address.getCounty()}&nbsp;&nbsp;
                        ${address.getAddress()}
                        </span></p></div>
                <div class="orderList1"><h3>支付方式及送货时间</h3>
                    <p>支付方式：<span>
                        <d:if test="${list.getPayway()==1}">支付宝支付</d:if>
                        <d:if test="${list.getPayway()==2}">微信付款</d:if>
                        <d:if test="${list.getPayway()==3}">银联付款</d:if>
                        <d:if test="${list.getPayway()==4}">货到付款</d:if>
                    </span></p>
                    <p>送货时间：<span>不限送货时间</span></p></div>
                <div class="orderList1 hei"><h3><strong>商品总价：</strong><span>¥${list.getPrice() * list.getSum()}</span></h3>
                    <p><strong>运费：</strong><span>¥0</span></p>
                    <p><strong>订单金额：</strong><span>¥${list.getPrice() * list.getSum()}</span></p>
                    <p><strong>实付金额：</strong><span>¥${list.getPrice() * list.getSum()}</span></p></div>
            </div>
        </div>
    </div>
</div>
<<!--返回顶部-->
<div class="gotop"><a href="/MyShop/admin_cate">
    <dl>
        <dt><img src="image/gt1.png"/></dt>
        <dd>去购<br/>物车</dd>
    </dl>
</a><a href="#" class="dh">
    <dl>
        <dt><img src="image/gt2.png"/></dt>
        <dd>联系<br/>客服</dd>
    </dl>
</a><a href="/MyShop/admin_togrzx">
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
    <p>400-800-8200</p></div><!--footer-->
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
