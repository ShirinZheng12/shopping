<%--
  Created by IntelliJ IDEA.
  User: 千木枫
  Date: 2021/8/15
  Time: 21:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="d" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head lang="en">
    <meta charset="utf-8"/>
    <title>创意家居</title>
    <link rel="stylesheet" type="text/css" href="css/public.css"/>
    <link rel="stylesheet" type="text/css" href="css/idea.css"/>
</head>
<body><!------------------------------head------------------------------>
<div class="head">
    <div class="wrapper clearfix"><%--<img src="image/logo2.png"/>--%>
        <div class="clearfix" id="top">
            <h1 class="fl">
                <c:if test="${sessionScope.status == 2}">
                    <a href="/MyShop/admin_manlogin"><span id="userspan1" value="">去后台</span></a>
                </c:if>

            </h1>
            <div class="fr clearfix" id="top1">
                <p class="fl"><a href="/MyShop/logout" id="login">退出登录</a><a href="reg.jsp" id="reg">注册</a></p>
                <form action="#" method="get" class="fl">
                    <input type="text" placeholder="热门搜索：干花花瓶"/><input type="button"/>
                </form>
                <div class="btn fl clearfix">
                    <a href="/MyShop/admin_togrzx"><img src="image/grzx.png"/></a>
                    <a href="#" class=" er1"><img src="image/ewm.png"/></a>
                    <a href="/MyShop/admin_cate"><img src="image/gwc.png"/></a>
                    <p><a href="#"><img src="image/smewm.png"/></a></p>
                </div>
            </div>
        </div>
        <ul class="clearfix" id="bott">
            <li><a href="/MyShop/admin_tomain">首页</a></li>
            <li><a href="#">所有商品</a>
                <div class="sList">
                    <div class="wrapper  clearfix">
                        <a href="javascript:toOther(7)">
                            <dl>
                                <dt><img src="image/images/nav1.jpg"/></dt>
                                <dd>浓情欧式</dd>
                            </dl>
                        </a><a href="javascript:toOther(6)">
                        <dl>
                            <dt><img src="image/images/nav2.jpg"/></dt>
                            <dd>浪漫美式</dd>
                        </dl>
                    </a><a href="javascript:toOther(8)">
                        <dl>
                            <dt><img src="image/images/nav3.jpg"/></dt>
                            <dd>雅致中式</dd>
                        </dl>
                    </a><a href="javascript:toOther(5)">
                        <dl>
                            <dt><img src="image/images/nav6.jpg"/></dt>
                            <dd>简约现代</dd>
                        </dl>
                    </a><a href="javascript:toOther(9)">
                        <dl>
                            <dt><img src="image/images/nav7.jpg"/></dt>
                            <dd>创意装饰</dd>
                        </dl>
                    </a></div>
                </div>
            </li>
            <li><a href="javascript:toOther(4)">装饰摆件</a>
                <div class="sList2">
                    <div class="clearfix"><a href="javascript:toOther(4)">干花花艺</a>
                        <a href="javascript:toOther(5)">花瓶花器</a></div>
                </div>
            </li>
            <li><a href="javascript:toOther(6)">布艺软饰</a>
            </li>
            <li><a href="javascript:toOther(7)">墙式壁挂</a></li>
            <li><a href="javascript:toOther(8)">蜡艺香薰</a></li>
            <li><a href="javascript:toOther(9)">创意家居</a></li>
        </ul>
    </div>
</div><!------------------------------idea------------------------------>
<div class="address">
    <div class="wrapper clearfix"><a href="/MyShop/admin_tomain" class="fl">首页</a><span>/</span><a href="#" class="on">创意家居</a>
    </div>
</div>
<!------------------------------imgList1------------------------------>
<div class="imgList1">
    <div class="wrapper">
        <div class="box1">
            <p style="text-align: center"><a href="#" class="banner"><img src="image/idea1.jpg"/></a></p>
            <ul>
                <d:forEach var="u" items="${list1}">
                    <li>
                        <a href="javascript:pro('${u.getGoodsid()}','${u.getGoodsname()}','${u.getGoodsprice()}')">
                            <dl>
                                <dt><img src="${u.getGoodsphoto()}"></dt>
                                <dd>【最家】${u.getGoodsname()}</dd>
                                <dd>￥${u.getGoodsprice()}</dd>
                            </dl>
                        </a>
                    </li>
                </d:forEach>
            </ul>
            <ul>
                <d:forEach var="u" items="${list2}">
                    <li>
                        <a href="javascript:pro('${u.getGoodsid()}','${u.getGoodsname()}','${u.getGoodsprice()}')">
                            <dl>
                                <dt><img src="${u.getGoodsphoto()}"></dt>
                                <dd>【最家】${u.getGoodsname()}</dd>
                                <dd>￥${u.getGoodsprice()}</dd>
                            </dl>
                        </a>
                    </li>
                </d:forEach>
            </ul>
            <ul>
                <d:forEach var="u" items="${list3}">
                    <li>
                        <a href="javascript:pro('${u.getGoodsid()}','${u.getGoodsname()}','${u.getGoodsprice()}')">
                            <dl>
                                <dt><img src="${u.getGoodsphoto()}"></dt>
                                <dd>【最家】${u.getGoodsname()}</dd>
                                <dd>￥${u.getGoodsprice()}</dd>
                            </dl>
                        </a>
                    </li>
                </d:forEach>
            </ul>
        </div>
        <h2><img src="image/ih5.jpg"/></h2>
        <div class="box2">
            <p style="text-align: center"><a href="#" class="banner"><img src="image/idea22.jpg"/></a></p>
            <ul>
                <d:forEach var="u" items="${list4}">
                    <li>
                        <a href="javascript:pro('${u.getGoodsid()}','${u.getGoodsname()}','${u.getGoodsprice()}')" class="on">
                            <dl>
                                <dt><img src="${u.getGoodsphoto()}"></dt>
                                <dd>【最家】${u.getGoodsname()}</dd>
                                <dd>￥${u.getGoodsprice()}</dd>
                            </dl>
                        </a>
                    </li>
                </d:forEach>
            </ul>
            <ul>
                <d:forEach var="u" items="${list5}">
                    <li>
                        <a href="javascript:pro('${u.getGoodsid()}','${u.getGoodsname()}','${u.getGoodsprice()}')" class="on">
                            <dl>
                                <dt><img src="${u.getGoodsphoto()}"></dt>
                                <dd>【最家】${u.getGoodsname()}</dd>
                                <dd>￥${u.getGoodsprice()}</dd>
                            </dl>
                        </a>
                    </li>
                </d:forEach>
            </ul>
        </div>
        <h2><img src="image/ih6.jpg"/></h2>
        <div class="box3">
            <ul>
                <d:forEach var="u" items="${list6}">
                    <li>
                        <a href="javascript:pro('${u.getGoodsid()}','${u.getGoodsname()}','${u.getGoodsprice()}')" class="on">
                            <dl>
                                <dt><img src="${u.getGoodsphoto()}"></dt>
                                <dd>【最家】${u.getGoodsname()}</dd>
                                <dd>￥${u.getGoodsprice()}</dd>
                            </dl>
                        </a>
                    </li>
                </d:forEach>
            </ul>
            <ul>
                <d:forEach var="u" items="${list7}">
                    <li>
                        <a href="javascript:pro('${u.getGoodsid()}','${u.getGoodsname()}','${u.getGoodsprice()}')" class="on">
                            <dl>
                                <dt><img src="${u.getGoodsphoto()}"></dt>
                                <dd>【最家】${u.getGoodsname()}</dd>
                                <dd>￥${u.getGoodsprice()}</dd>
                            </dl>
                        </a>
                    </li>
                </d:forEach>
            </ul>
        </div>
    </div>
</div>

<script>
    function toOther(typeid){
        if (typeid == 4){
            location.href = 'admin_toghhy?typeid='+typeid;
        }else if (typeid == 5){
            location.href = 'admin_tohphy?typeid='+typeid;
        }else if(typeid == 6){
            location.href = 'admin_tobyrs?typeid='+typeid;
        }else if(typeid == 7){
            location.href = 'admin_toqbgs?typeid='+typeid;
        }else if(typeid == 8){
            location.href = 'admin_tolyxx?typeid='+typeid;
        }else if(typeid == 9){
            location.href = 'admin_tozj?typeid='+typeid;
        }

    }
</script>
<script>
    function pro(id,name,price){
        location.href = 'admin_toprodt?id='+id+'&name='+name+'&price='+price;
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
</a>
    <a href="/MyShop/admin_togrzx">
        <dl>
            <dt><img src="image/gt3.png"/></dt>
            <dd>个人<br/>中心</dd>
        </dl>
    </a><a href="#" class="toptop" style="display: none;">
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
        违法和不良信息举报电话：188-0130-1238，本网站所列数据，除特殊说明，所有数据均出自我司实验室测试</p></div>
<script src="js/jquery-1.12.4.min.js" type="text/javascript" charset="utf-8"></script>
<script src="js/public.js" type="text/javascript" charset="utf-8"></script>
<script src="js/nav.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>