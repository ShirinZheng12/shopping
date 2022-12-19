<%--
  Created by IntelliJ IDEA.
  User: 千木枫
  Date: 2021/8/2
  Time: 23:10
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="d" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head lang="en">
    <meta charset="utf-8"/>
    <title>我的订单</title>
    <link rel="stylesheet" type="text/css" href="css/public.css"/>
    <link rel="stylesheet" type="text/css" href="css/proList.css"/>
    <script src="js/jquery-1.12.4.min.js" type="text/javascript" charset="utf-8"></script>
    <style type="text/css">
        a:hover{
            color: #a10000;
        }
        /*.pro .clearfix .photo1 image{*/
        /*    width: 10%;*/
        /*    height: 10%;*/
        /*}*/
    </style>
</head>
<body><!--------------------------------------cart--------------------->
<div class="head ding">
</div>
<div class="address mt">
    <div class="wrapper clearfix">
        <a href="/MyShop/admin_tomain " class="fl">首页</a><span>/</span>
        <a href="/MyShop/admin_togrzx">个人中心</a><span>/</span>
        <a href="#" class="on">我的购物车</a>
    </div>
</div>
<div class="cart mt"><!-----------------logo------------------->
    <!--<div class="logo"><h1 class="wrapper clearfix"><a href="index.html"><img class="fl" src="img/temp/logo.png"></a>
    <img class="top" src="img/temp/cartTop01.png"></h1></div>-->
    <!-----------------site------------------->
    <div class="site">
        <p class=" wrapper clearfix"><span class="fl" style="color: blue">购物车</span>
            <img class="top" src="image/temp/cartTop01.png">
            <a href="/MyShop/admin_tomain" class="fr">继续购物&gt;</a>
        </p>
    </div>
    <!-----------------table------------------->
    <div class="table wrapper">
        <table class="table wrapper">
            <tr>
                <th><div>选择</div></th>
                <th><div>订单编号</div></th>
                <th><div>商品详情</div></th>
                <th><div>单价</div></th>
                <th><div>数量</div></th>
                <th><div>小计</div></th>
                <th><div>操作</div></th>
            </tr>
            <d:forEach var="u" items="${list1}">
                <tr>
                    <td>
                        <input type="checkbox" name="ck" value="${u.getCid()}" />
                    </td>
                    <td>
                        <div class="pro clearfix">
                            <p>${u.getCid()}</p>
                        </div>
                    </td>
                    <td>
                        <div class="pro clearfix">
                            <dl class="clearfix">
                                    <dd class="fl photo1"><img src="${u.getPhoto()}" width="60px" height="60px"></dd>
                                    &nbsp;&nbsp;
                                    <dd class="fl">
                                        <p class="fl">${u.getGname()}</p>
                                    </dd>
                            </dl>
                        </div>
                    </td>
                    <td>
                        <div class="price">￥${u.getPrice()}</div>
                    </td>
                    <td>
                            <div class="number">
                                <p class="num clearfix">
<%--                                    <img class="fl sub" src="image/temp/sub.jpg">--%>
                                    <span class="fl" id="AllSum">${u.getSum()}</span>
<%--                                    <img class="fl add" src="image/temp/add.jpg">--%>
                                </p>
                            </div>
                    </td>
                    <td>
                        <div class="price sAll" >￥<span id="Allp">${u.getPrice() * u.getSum()}</span></div>
                    </td>
                    <td>
                        <div class="price"><a class="del"  href="javascript:catedel(${u.getCid()})">删除</a></div>
<%--                        <a href="javascript:addcate(${goodsid})"><p class="cart fr">加入购物车</p></a>--%>
                    </td>
                </tr>
            </d:forEach>
        </table>

        <div class="goOn">空空如也~<a href="/MyShop/admin_tomain">去逛逛</a></div>
        <div class="tr clearfix">
<%--            <label class="fl">--%>
<%--                <input class="checkAll" type="checkbox" />--%>
<%--            </label>--%>
<%--            <p class="fl"><a href="#">全选</a><a href="#" class="del">删除</a></p>--%>
            <p class="fr">
<%--                <span>共<small id="sl">0</small>件商品</span><span>合计:&nbsp;<small id="all">￥0.00</small></span>--%>
                <a href="javascript:toorder()" class="count">结算</a>
            </p>
        </div>
    </div>
    <script>
        //点击复选框时
        $("input[type='checkbox']").on("click",function () {
            //选了几个框
            var e = 0;
            var c = $("input[name='ck']:checked").length;
            var d = $("input[name='ck']:checked");
            var k = 0;
            if(c>0){
                //总共多少小件
                // d.each(function () {
                //     e += Number($('#AllSum').text());
                //     $("#sl").text(e);
                // });
                // //总小计多少钱
                // $("input[type='checkbox']:checked").each(function () {
                //     var e1 = Number($('#Allp').text());
                //     alert(e1);
                //     k += parseFloat(e1);
                //     $("#all").text("￥" + k.toFixed(2))
                // });
                //有选中的复选框就将结算按钮变成红色
                $(".count").css("background", "#c10000");
            }else{
                //改成0件
                // $("#sl").text(0);
                // //将总计改成0元
                // $("#all").text("￥" + parseFloat(0).toFixed(2));
                //改成灰色
                $(".count").css("background", "#8e8e8e");
            }
        });
        //结算时传入所有的订单id
        function toorder() {
            var str = "";
            $("input[name='ck']:checked").each(function (index,item) {
                if($("input[name='ck']:checked").length-1 == index){
                    str+=$(this).val();
                }else{
                    str+=$(this).val()+",";
                }
            });
            if(str.length == 0){
                alert("请选择要结算的商品");
            }else{
                location.href="admin_toorder?cids="+str;
            }

        }
        function catedel(cid){
            // location.href = 'admin_tocate?goodsid='+goodsid+'&sum='+shuliang+'&price='+price1;
            var flag = confirm("确定删除？")
            if(flag){
                location.href = 'admin_delcate?cid='+cid;
            }else{
                location.reload();
            }
        }
    </script>
</div>
<div class="mask"></div>
<div class="tipDel"><p>确定要删除该商品吗？</p>
    <p class="clearfix"><a class="fl cer" href="#">确定</a><a class="fr cancel" href="#">取消</a></p></div><!--返回顶部-->
<div class="gotop">
    <a href="#">
    <dl>
        <dt><img src="image/gt1.png"/></dt>
        <dd>去购<br/>物车</dd>
    </dl>
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
        违法和不良信息举报电话：188-0130-1238，本网站所列数据，除特殊说明，所有数据均出自我司实验室测试</p></div><!----------------mask------------------->
<%--<div class="mask"></div><!-------------------mask内容------------------->--%>
<%--<div class="proDets"><img class="off" src="img/temp/off.jpg"/>--%>
<%--    <div class="proCon clearfix">--%>
<%--        <div class="proImg fr"><img class="list" src="img/temp/proDet.jpg"/>--%>
<%--            <div class="smallImg clearfix">--%>
<%--                <img src="image/temp/proDet01.jpg" data-src="image//temp/proDet01_big.jpg">--%>
<%--                <img src="image/temp/proDet02.jpg" data-src="image/temp/proDet02_big.jpg">--%>
<%--                <img src="image/temp/proDet03.jpg" data-src="image/temp/proDet03_big.jpg">--%>
<%--                <img src="image/temp/proDet04.jpg" data-src="image/temp/proDet04_big.jpg">--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="fl">--%>
<%--            <div class="proIntro change"><p>颜色分类</p>--%>
<%--                <div class="smallImg clearfix"><p class="fl on"><img src="img/temp/prosmall01.jpg" alt="白瓷花瓶+20支快乐花"--%>
<%--                                                                     data-src="img/temp/proBig01.jpg"></p>--%>
<%--                    <p class="fl"><img src="img/temp/prosmall02.jpg" alt="白瓷花瓶+20支兔尾巴草"--%>
<%--                                       data-src="img/temp/proBig02.jpg"></p>--%>
<%--                    <p class="fl"><img src="img/temp/prosmall03.jpg" alt="20支快乐花" data-src="img/temp/proBig03.jpg"></p>--%>
<%--                    <p class="fl"><img src="img/temp/prosmall04.jpg" alt="20支兔尾巴草" data-src="img/temp/proBig04.jpg"></p>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="changeBtn clearfix"><a href="#2" class="fl"><p class="buy">确认</p></a><a href="#2" class="fr"><p--%>
<%--                    class="cart">取消</p></a></div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<%--<div class="pleaseC"><p>请选择宝贝</p><img class="off" src="image/temp/off.jpg"/></div>--%>

<script src="js/public.js" type="text/javascript" charset="utf-8"></script>
<script src="js/pro.js" type="text/javascript" charset="utf-8"></script>
<script src="js/cart.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>