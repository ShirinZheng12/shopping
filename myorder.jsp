<%--
  Created by IntelliJ IDEA.
  User: 千木枫
  Date: 2021/8/4
  Time: 10:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="d" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head lang="en">
    <meta charset="utf-8"/>
    <title>我的订单</title>
    <link rel="stylesheet" type="text/css" href="css/public.css"/>
    <link rel="stylesheet" type="text/css" href="css/myorder.css"/>
    <style type="text/css">
        .address .wrapper a:hover{
            color: #a10000;
        }
    </style>
</head>
<body><!------------------------------head------------------------------>
<!------------------------------idea------------------------------>
<div class="address mt">
    <div class="wrapper clearfix">
        <a href="/MyShop/admin_tomain" class="fl">首页</a><span>/</span>
        <a href="/MyShop/admin_togrzx">个人中心</a><span>/</span>
        <a href="#" class="on">我的订单</a>
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
                    <li class="on"><a href="#">我的订单</a></li>
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
                <h2 class="fl">我的订单</h2>
                <a href="#" class="fl">请谨防钓鱼链接或诈骗电话，了解更多&gt;</a>
            </div>
            <div class="dlist clearfix">
                <ul class="fl clearfix" id="wa">
                    <li class="on"><a href="#2">全部有效订单</a></li>
<%--                    <li><a href="#2l">待收货</a></li>--%>
                </ul>
                <form action="#" method="get" class="fr clearfix">
                    <input type="text" name="" id="111" value="" placeholder="请输入商品名称"/>
                    <input type="button" name="" id="222" value="查询"/>
                </form>
            </div>
            <d:forEach var="u" items="${list}">
                <div class="dkuang">
                    <d:if test="${u.getIsget()==2}">
                            <p class="one">已收货</p>
                        </d:if>
                    <d:if test="${u.getIsget() == 1}">
                            <p class="one fl" style="color:#a00000">待收货</p>
                            <div class="clearfix">
                                <div class="fl vewwl">
                                    <a href="wuliu.jsp" class="ckwl">查看物流</a>
                                    <div class="wuliu">
                                        <h4>
                                            <d:if test="${u.getKuaidi() == 1}">顺风速运:888888888888880</d:if>
                                            <d:if test="${u.getKuaidi() == 2}">百世汇通:888888888888881</d:if>
                                            <d:if test="${u.getKuaidi() == 3}">圆通快递:888888888888882</d:if>
                                            <d:if test="${u.getKuaidi() == 4}">中通快递:888888888888883</d:if>
                                            <d:if test="${u.getKuaidi() == 5}">中国邮政:888888888888884</d:if>
                                            <d:if test="${u.getKuaidi() == 6}">京东速运:888888888888885</d:if>
                                            <d:if test="${u.getKuaidi() == 7}">韵达快递:888888888888886</d:if>
                                            <d:if test="${u.getKuaidi() == 8}">申通快递:888888888888887</d:if>
                                        </h4>
                                        <ul>
                                            <li><p>妥投投递并签收，已签收。签收人：本人签收</p>
                                                <p>2016-12-03 17:30:00</p></li>
                                            <li><p>深圳市南油速递营销部安排投递（投递员姓名：六六六。联系电话：14243452522;</p>
                                                <p>2016-12-03 08:50:00</p></li>
                                            <li><p>到达广东省邮政速递物流有限公司深圳航空邮件处理中心处理中心（经转）</p>
                                                <p>2016-12-03 02:20:00</p></li>
                                            <li>以上为最新跟踪信息<a href="wuliu.jsp">查看全部</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                    </d:if>
                    <div class="word clearfix">
                            <ul class="fl clearfix">
                                <li>${u.getShoptime()}</li>
                                <li>${sessionScope.username}</li>
                                <li>订单号:${u.getCateid()}</li>
                                <li>
                                    <d:if test="${u.getPayway()==1}">支付宝支付</d:if>
                                    <d:if test="${u.getPayway()==2}">微信付款</d:if>
                                    <d:if test="${u.getPayway()==3}">银联付款</d:if>
                                    <d:if test="${u.getPayway()==4}">货到付款</d:if>
                                </li>
                            </ul>
                            <p class="fr">订单金额：<span>${u.getSum() * u.getPrice()}</span>元</p></div>
                    <div class="shohou clearfix">
                                <a href="#" class="fl">
                                    <img src="${u.getGoodsphoto()}"/>
                                </a>
                                <p class="fl">
                                    <a href="#">${u.getGoodsname()}</a>
                                    <a href="#">¥${u.getPrice()}×${u.getSum()}</a>
                                </p>
                                <p class="fr">
                                    <d:if test="${u.getIsget() == 1}">
                                        <a href="javascript:alreadyGet(${u.getCateid()})" style="background-color:#a10000;color: white">确认收货</a>
                                    </d:if>
                                    <d:if test="${u.getIsget() == 2}">
                                        <a href="/MyShop/admin_toprod">去评价</a>
                                    </d:if>
                                        <a href="javascript:orderxq(${u.getCateid()})">订单详情</a>
                                </p>
                            </div>
                </div>
            </d:forEach>

            <div class="fenye clearfix">
                <a href="admin_tomyorder?cp=${cpage-1<1?1:cpage-1}"><img src="image/zuo.jpg"/></a>
                <a href="">${cpage}</a>
                <a href="admin_tomyorder?cp=${cpage+1>tpage?tpage:cpage+1}"><img src="image/you.jpg"/></a>
            </div>
        </div>
    </div>
    <script>
        function alreadyGet(cateid) {
            location.href='admin_toalreadyget?cateid='+cateid;
        }
        function orderxq(cateid) {
            location.href='admin_toorderxq?cateid='+cateid;
        }
    </script>
</div><!--返回顶部-->
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
    <p>400-800-8200</p></div>
<!--footer-->
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
<script src="js/public.js" type="text/javascript" charset="utf-8"></script>
<script src="js/user.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>
