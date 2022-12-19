<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: 千木枫
  Date: 2021/7/7
  Time: 11:56
  To change this template use File | Settings | File Templates.
  <%@ taglib prefix="d" uri="http://java.sun.com/jsp/jstl/core"%>
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商城</title>
    <link rel="stylesheet" type="text/css" href="css/public1.css">
    <link rel="stylesheet" type="text/css" href="css/index.css">
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>
<script type="text/javascript">
    window.onload = function () {
      var s = "111";
      var str = <%
      String s = "11";
      %>
    }
</script>

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
                    <p><a href="#"><img  style="width: 120px;height: 120px" src="image/smewm.png"/></a></p>
                </div>
            </div>
        </div>
        <ul class="clearfix" id="bott">
            <li><a href="#">首页</a></li>
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
<!-------------------------banner--------------------------->
<div class="block_home_slider">
    <div id="home_slider" class="flexslider">
        <ul class="slides">
            <li>
                <div class="slide"><img src="image/images/banner1.jpg"/></div>
            </li>
            <li>
                <div class="slide"><img src="image/images/banner2.jpg"/></div>
            </li>
        </ul>
    </div>
</div><!------------------------------thImg------------------------------>
<div class="thImg">
    <div class="clearfix">
        <a href="javascript:toOther(9)"><img src="image/images/i1.jpg"/></a>
        <a href="javascript:toOther(4)"><img src="image/images/i2.jpg"/></a>
        <a href="javascript:toOther(5)"><img src="image/images/i3.jpg"/></a>
    </div>
</div><!------------------------------news------------------------------>
<div class="news">
    <div class="wrapper"><h2><img src="image/images/ih1.jpg"/></h2>
        <div class="top clearfix">
            <a href="javascript:pro('${list[6].getGoodsid()}','${list[6].getGoodsname()}','${list[6].getGoodsprice()}')">
            <img src="<%=(String)request.getAttribute("photo6")%>"/>
            <p>【简约】${list[6].getGoodsname()}</p>
            </a>
            <a href="javascript:pro('${list[7].getGoodsid()}','${list[7].getGoodsname()}','${list[7].getGoodsprice()}')">
            <img src="<%=(String)request.getAttribute("photo7")%>"/>
            <p>【简约】${list[7].getGoodsname()}</p>
            </a>
            <a href="javascript:pro('${list[8].getGoodsid()}','${list[8].getGoodsname()}','${list[8].getGoodsprice()}')">
            <img src="<%=(String)request.getAttribute("photo8")%>"/>
            <p>【简约】${list[8].getGoodsname()}</p>
            </a>
        </div>
        <div class="bott clearfix">
            <a href="javascript:pro('${list[9].getGoodsid()}','${list[9].getGoodsname()}','${list[9].getGoodsprice()}')">
            <img src="<%=(String)request.getAttribute("photo9")%>"/>
            <p>【简约】${list[9].getGoodsname()}</p>
            </a>
            <a href="javascript:pro('${list[10].getGoodsid()}','${list[10].getGoodsname()}','${list[10].getGoodsprice()}')">
            <img src="<%=(String)request.getAttribute("photo10")%>"/>
            <p>【简约】${list[10].getGoodsname()}</p>
            </a>
            <a href="javascript:pro('${list[11].getGoodsid()}','${list[11].getGoodsname()}','${list[11].getGoodsprice()}')">
            <img src="<%=(String)request.getAttribute("photo11")%>"/>
            <p>【简约】${list[11].getGoodsname()}</p>
            </a>
        </div>
        <h2><img src="image/images/ih2.jpg"/></h2>
<%--        <c:forEach var="u" items="${list}">--%>
        <div class="flower clearfix tran">
        <a href="javascript:pro('${list[0].getGoodsid()}','${list[0].getGoodsname()}','${list[0].getGoodsprice()}')" class="clearfix">
            <dl>
                <dt><span class="abl"></span><img src="<%=(String)request.getAttribute("photo0")%>" id="p1"/><span class="abr"></span></dt>
                <dd>【花艺】${list[0].getGoodsname()}</dd>
                <dd><span>¥ ${list[0].getGoodsprice()}</span></dd>
            </dl>
        </a>
        <a href="javascript:pro('${list[1].getGoodsid()}','${list[1].getGoodsname()}','${list[1].getGoodsprice()}')" class="clearfix">
            <dl>
                <dt><span class="abl"></span><img src="<%=(String)request.getAttribute("photo1")%>"/><span class="abr"></span></dt>
                <dd>【花艺】${list[1].getGoodsname()}</dd>
                <dd><span>¥ ${list[1].getGoodsprice()}</span></dd>
            </dl>
        </a>
            <a href="javascript:pro('${list[2].getGoodsid()}','${list[2].getGoodsname()}','${list[2].getGoodsprice()}')" class="clearfix">
                <dl>
                    <dt><span class="abl"></span><img src="<%=(String)request.getAttribute("photo2")%>"/><span class="abr"></span></dt>
                    <dd>【花艺】${list[2].getGoodsname()}</dd>
                    <dd><span>¥ ${list[2].getGoodsprice()}</span></dd>
                </dl>
            </a>
            <a href="javascript:pro('${list[3].getGoodsid()}','${list[3].getGoodsname()}','${list[3].getGoodsprice()}')" class="clearfix">
                <dl>
                    <dt><span class="abl"></span><img src="<%=(String)request.getAttribute("photo3")%>"/><span class="abr"></span></dt>
                    <dd>【花艺】${list[3].getGoodsname()}</dd>
                    <dd><span>¥ ${list[3].getGoodsprice()}</span></dd>
                </dl>
            </a>
            <a href="javascript:pro('${list[4].getGoodsid()}','${list[4].getGoodsname()}','${list[4].getGoodsprice()}')" class="clearfix">
                <dl>
                    <dt><span class="abl"></span><img src="<%=(String)request.getAttribute("photo4")%>"/><span class="abr"></span></dt>
                    <dd>【花艺】${list[4].getGoodsname()}</dd>
                    <dd><span>¥ ${list[4].getGoodsprice()}</span></dd>
                </dl>
            </a>
            <a href="javascript:pro('${list[5].getGoodsid()}','${list[5].getGoodsname()}','${list[5].getGoodsprice()}')" class="clearfix">
                <dl>
                    <dt><span class="abl"></span><img src="<%=(String)request.getAttribute("photo5")%>"/><span class="abr"></span></dt>
                    <dd>【花艺】${list[5].getGoodsname()}</dd>
                    <dd><span>¥ ${list[5].getGoodsprice()}</span></dd>
                </dl>
            </a>
           </div>

    </div>

</div>

<!------------------------------ad------------------------------>
<a href="#" class="ad">
    <img src="image/images/ib1.jpg"/>
</a><!------------------------------people------------------------------>
<div class="people">
    <div class="wrapper"><h2><img src="image/images/ih3.jpg"/></h2>
        <div class="pList clearfix tran">
            <a href="javascript:pro('${list[12].getGoodsid()}','${list[12].getGoodsname()}','${list[12].getGoodsprice()}')">
            <dl>
                <dt><span class="abl"></span><img src="<%=(String)request.getAttribute("photo12")%>"/><span class="abr"></span></dt>
                <dd>【最家】${list[12].getGoodsname()}</dd>
                <dd><span>￥${list[12].getGoodsprice()}</span></dd>
            </dl>
            </a>
            <a href="javascript:pro('${list[13].getGoodsid()}','${list[13].getGoodsname()}','${list[13].getGoodsprice()}')">
                <dl>
                    <dt><span class="abl"></span><img src="<%=(String)request.getAttribute("photo13")%>"/><span class="abr"></span></dt>
                    <dd>【最家】${list[13].getGoodsname()}</dd>
                    <dd><span>￥${list[13].getGoodsprice()}</span></dd>
                </dl>
            </a>
            <a href="javascript:pro('${list[14].getGoodsid()}','${list[14].getGoodsname()}','${list[14].getGoodsprice()}')">
                <dl>
                    <dt><span class="abl"></span><img src="<%=(String)request.getAttribute("photo14")%>"/><span class="abr"></span></dt>
                    <dd>【最家】${list[14].getGoodsname()}</dd>
                    <dd><span>￥${list[14].getGoodsprice()}</span></dd>
                </dl>
            </a>
            <a href="javascript:pro('${list[15].getGoodsid()}','${list[15].getGoodsname()}','${list[15].getGoodsprice()}')">
                <dl>
                    <dt><span class="abl"></span><img src="<%=(String)request.getAttribute("photo15")%>"/><span class="abr"></span></dt>
                    <dd>【最家】${list[15].getGoodsname()}</dd>
                    <dd><span>￥${list[15].getGoodsprice()}</span></dd>
                </dl>
            </a>
        </div>
        <div class="pList clearfix tran">
            <a href="javascript:pro('${list[16].getGoodsid()}','${list[16].getGoodsname()}','${list[16].getGoodsprice()}')">
                <dl>
                    <dt><span class="abl"></span><img src="<%=(String)request.getAttribute("photo16")%>"/><span class="abr"></span></dt>
                    <dd>【最家】${list[16].getGoodsname()}</dd>
                    <dd><span>￥${list[16].getGoodsprice()}</span></dd>
                </dl>
            </a>
            <a href="javascript:pro('${list[17].getGoodsid()}','${list[17].getGoodsname()}','${list[17].getGoodsprice()}')">
                <dl>
                    <dt><span class="abl"></span><img src="<%=(String)request.getAttribute("photo17")%>"/><span class="abr"></span></dt>
                    <dd>【最家】${list[17].getGoodsname()}</dd>
                    <dd><span>￥${list[17].getGoodsprice()}</span></dd>
                </dl>
            </a>
            <a href="javascript:pro('${list[18].getGoodsid()}','${list[18].getGoodsname()}','${list[18].getGoodsprice()}')">
                <dl>
                    <dt><span class="abl"></span><img src="<%=(String)request.getAttribute("photo18")%>"/><span class="abr"></span></dt>
                    <dd>【最家】${list[18].getGoodsname()}</dd>
                    <dd><span>￥${list[18].getGoodsprice()}</span></dd>
                </dl>
            </a>
            <a href="javascript:pro('${list[20].getGoodsid()}','${list[20].getGoodsname()}','${list[20].getGoodsprice()}')">
                <dl>
                    <dt><span class="abl"></span><img src="<%=(String)request.getAttribute("photo20")%>"/><span class="abr"></span></dt>
                    <dd>【最家】${list[20].getGoodsname()}</dd>
                    <dd><span>￥${list[20].getGoodsprice()}</span></dd>
                </dl>
            </a>
        </div>
        <div class="pList clearfix tran">
            <a href="javascript:pro('${list[21].getGoodsid()}','${list[21].getGoodsname()}','${list[21].getGoodsprice()}')">
                <dl>
                    <dt><span class="abl"></span><img src="<%=(String)request.getAttribute("photo21")%>"/><span class="abr"></span></dt>
                    <dd>【最家】${list[21].getGoodsname()}</dd>
                    <dd><span>￥${list[21].getGoodsprice()}</span></dd>
                </dl>
            </a>
            <a href="javascript:pro('${list[22].getGoodsid()}','${list[22].getGoodsname()}','${list[22].getGoodsprice()}')">
                <dl>
                    <dt><span class="abl"></span><img src="<%=(String)request.getAttribute("photo22")%>"/><span class="abr"></span></dt>
                    <dd>【最家】${list[22].getGoodsname()}</dd>
                    <dd><span>￥${list[22].getGoodsprice()}</span></dd>
                </dl>
            </a>
            <a href="javascript:pro('${list[23].getGoodsid()}','${list[23].getGoodsname()}','${list[23].getGoodsprice()}')">
                <dl>
                    <dt><span class="abl"></span><img src="<%=(String)request.getAttribute("photo23")%>"/><span class="abr"></span></dt>
                    <dd>【最家】${list[23].getGoodsname()}</dd>
                    <dd><span>￥${list[23].getGoodsprice()}</span></dd>
                </dl>
            </a>
            <a href="javascript:pro('${list[19].getGoodsid()}','${list[19].getGoodsname()}','${list[19].getGoodsprice()}')">
                <dl>
                    <dt><span class="abl"></span><img src="<%=(String)request.getAttribute("photo19")%>"/><span class="abr"></span></dt>
                    <dd>【最家】${list[19].getGoodsname()}</dd>
                    <dd><span>￥${list[19].getGoodsprice()}</span></dd>
                </dl>
            </a>
        </div>
    </div>
</div>
<%--进入商品细节页面要传递的参数商品id，商品name,商品price--%>
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
    <p>400-800-8200</p></div><!-------------------login--------------------------><!--footer-->
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
<script src="js/nav.js" type="text/javascript" charset="utf-8"></script>
<script src="js/jquery.flexslider-min.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">$(function () {
    $('#home_slider').flexslider({
        animation: 'slide',
        controlNav: true,
        directionNav: true,
        animationLoop: true,
        slideshow: true,
        slideshowSpeed: 4000,
        useCSS: false
    });
});</script>
</body>
</html>
