<%@ taglib prefix="d" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 千木枫
  Date: 2021/8/4
  Time: 11:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head lang="en">
    <meta charset="utf-8"/>
    <title>晒单评价</title>
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
        <a href="#" class="on">评价晒单</a></div>
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
                    <li class="on"><a href="#">评价晒单</a></li>
                </ul>
                <ul>
                    <li><a href="/MyShop/admin_togrzx">我的中心</a></li>
                    <li><a href="/MyShop/admin_toaddress">地址管理</a></li>
                </ul>
                <ul>
                    <li ><a href="/MyShop/admin_togrxx">个人信息</a></li>
                    <li><a href="/MyShop/admin_toremima">修改密码</a></li>
                </ul>
            </div>
        </div>
        <div class="you fl">
            <div class="my clearfix"><h2 class="fl">商品评价</h2></div>
            <div class="dlist">
                <ul class="clearfix" id="pro">
                    <li class="on"><a href="#2">待评价商品</a></li>
                    <li><a href="#2">已评价商品</a></li>
<%--                    <li><a href="#2">评价失效商品</a></li>--%>
                </ul>
            </div>
            <div class="sx clearfix">
                <div class="clearfix">
                    <d:forEach var="u" items="${list}">
                        <d:if test="${u.getIscomment() == 1}">
                            <dl class="fl">
                                <dt><a href="#"><img style="width: 60px;height: 60px;" src="${u.getPhoto()}"/></a></dt>
                                <dd><a href="#">${u.getGoodsname()}</a></dd>
                                <dd>¥${u.getPrice()}</dd>
                                <dd>${u.getSum()}人评价</dd>
                                <dd><a href="javascript:pingjia(${u.getCommentid()})">评价</a></dd>
                            </dl>
                        </d:if>
                    </d:forEach>
                </div>

                <div class="clearfix">
                    <d:forEach var="u" items="${list}">
                        <d:if test="${u.getIscomment() == 2}">
                            <dl class="fl">
                                <dt><a href="#"><img style="width: 60px;height: 60px;" src="${u.getPhoto()}"/></a></dt>
                                <dd><a href="#">${u.getGoodsname()}</a></dd>
<%--                                ${u.getSum()}--%>
                                <dd>¥${u.getPrice()}</dd>
                                <dd>${u.getSum()}人评价</dd>
                                <dd><a href="javascript:chakan('${u.getCommentid()}','${u.getComments()}')">查看评价</a></dd>
                            </dl>
                        </d:if>
                    </d:forEach>
                </div>

            </div>
        </div>
    </div>
</div>


<!--<dl class="fl"><dt><a href="#"><img src="img/nav3.jpg"/></a></dt><dd><a href="#">家用创意壁挂  釉下彩复古</a></dd><dd>¥199.00</dd><dd>16000人评价</dd><dd><a href="#">待评价</a></dd></dl><dl class="fl"><dt><a href="#"><img src="img/nav3.jpg"/></a></dt><dd><a href="#">家用创意壁挂  釉下彩复古</a></dd><dd>¥199.00</dd><dd>16000人评价</dd><dd><a href="#">待评价</a></dd></dl>-->
<!--遮罩-->
<div class="mask"></div>
<!--评价弹框-->
<div class="pj">
    <div class="clearfix">
        <a href="#" class="fr gb"><img src="image/icon4.png"/></a>
    </div>
    <h3>商品评分</h3>
    <form action=""  method="get">
        <div class="clearfix">
            <p class="fl">请打分：</p>
            <p class="fl" id="xin">
                <a href="#2"><img src="image/xin.png"/></a>
                <a href="#2"><img src="image/xin.png"/></a>
                <a href="#2"><img src="image/xin.png"/></a>
                <a href="#2"><img src="image/xin.png"/></a>
                <a href="#2"><img src="image/xin.png"/></a>
            </p>
        </div>
        <textarea name="" rows="" cols="" id="area1" placeholder="请输入评价"></textarea>
        <div class="bc"><input type="button" onclick="updatepingjia()" value="保存"/><input type="button" value="取消"/></div>
    </form>
</div>
<!--查看评价-->
<div class="chak">
    <div class="clearfix">
        <a href="#" class="fr gb"><img src="image/icon4.png"/></a>
    </div>
    <h3>商品评分</h3>
    <form action="#" method="get">
        <div class="clearfix"><p class="fl">请打分：</p>
            <p class="fl" id="hxin">
                <a href="#2"><img src="image/hxin.png"/></a>
                <a href="#2"><img src="image/hxin.png"/></a>
                <a href="#2"><img src="image/hxin.png"/></a>
                <a href="#2"><img src="image/hxin.png"/></a>
                <a href="#2"><img src="image/hxin.png"/></a>
            </p>
        </div>
        <textarea name="" rows="" cols="" placeholder="请输入评价" id="chankpj"></textarea>
        <div class="bc"><input type="button" onclick="pingjia1()" value="保存"/><input type="button" value="取消"/></div>
    </form>
</div>

<script>
    var comid;
    function pingjia(commid) {
        comid = commid;
    }
    function updatepingjia() {
        var area = document.getElementById("area1").value;
        if(area != ""){
            location.href='admin_toupdatecomm?commid='+comid+'&area='+area;
        }else{
            alert("评论不能为空");
        }
    }
    var comid1;
    function chakan(commid,area) {
        comid1 = commid;
        document.getElementById("chankpj").innerHTML = area;
    }
    function pingjia1() {
        var area1 = document.getElementById("chankpj").value;
        location.href='admin_toupdatemycomm?commid='+comid1+'&area='+area1;
    }
</script>

<!--返回顶部-->
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
