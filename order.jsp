<%--
  Created by IntelliJ IDEA.
  User: 千木枫
  Date: 2021/8/6
  Time: 17:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="d" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head lang="en">
    <meta charset="utf-8"/>
    <title>订单</title>
    <link rel="stylesheet" type="text/css" href="css/public1.css"/>
    <link rel="stylesheet" type="text/css" href="css/proList.css"/>
    <link rel="stylesheet" type="text/css" href="css/mygxin.css"/>
</head>
<body>
<!----------------------------------------order------------------>
<div class="order cart mt">
    <!-----------------site------------------->
    <div class="site">
        <p class="wrapper clearfix"><span class="fl">订单确认</span>
            <img class="top" src="image/temp/cartTop02.png">
        </p>
    </div><!-----------------orderCon------------------->
    <div class="orderCon wrapper clearfix">
        <div class="orderL fl">
            <!--------h3---------------->
            <h3>收件信息<a href="/MyShop/admin_toaddress" class="fr">新增地址</a></h3>
            <!--------addres---------------->
            <div class="addres clearfix">
                <table style="border:1px solid black;width:100%;border-collapse: collapse;margin-right: 10px">
                    <tr>
                        <th style="border: 1px solid #a00000;text-align: center;">地址</th>
                        <th style="border: 1px solid #000000;text-align: center;">联系人</th>
                        <th style="border: 1px solid #000000;text-align: center;">联系方式</th>
                        <th style="border: 1px solid #a00000;text-align: center;">区域</th>
                        <th style="border: 1px solid #a00000;text-align: center;">详细地址</th>
                    </tr>
                    <d:forEach var="u" items="${address}">
                        <tr>
                            <td style="border: 1px solid #a00000;text-align: center;" >
                                <input type="checkbox" name="id1" value="${u.getAid()}" onclick="cilck1(this)" id="checkbox1">
                            </td>
                            <td style="border: 1px solid #a00000;">${u.getName()}</td>
                            <td style="border: 1px solid #a00000;">${u.getMobile()}</td>
                            <td style="border: 1px solid #a00000;">${u.getProvince()}&nbsp;&nbsp; ${u.getCity()}&nbsp;&nbsp;${u.getCounty()}</td>
                            <td style="border: 1px solid #a00000;">${u.getAddress()}</td>
                        </tr>
                    </d:forEach>
                </table>
            </div>

            <h3>支付方式</h3><!--------way---------------->
            <div class="way clearfix">
                <img id="img1" onclick="image1(1)" class="on" src="image/temp/way01.jpg">
                <img onclick="image1(2)" src="image/temp/way02.jpg">
                <img onclick="image1(3)" src="image/temp/way03.jpg">
                <img onclick="image1(4)" src="image/temp/way04.jpg">
            </div>
            <h3>选择快递</h3><!--------dis---------------->
            <div class="dis clearfix">
                <span onclick="kuaidi(1)" class="on">顺风速运</span>
                <span onclick="kuaidi(2)">百世汇通</span>
                <span onclick="kuaidi(3)">圆通快递</span>
                <span onclick="kuaidi(4)">中通快递</span>
                <br>
                <span onclick="kuaidi(5)">中国邮政</span>
                <span onclick="kuaidi(6)">京东速运</span>
                <span onclick="kuaidi(7)">韵达快递</span>
                <span onclick="kuaidi(8)">申通快递</span>
            </div>
        </div>
        <div class="orderR fr">
            <div class="msg"><h3>订单内容<a href="/MyShop/admin_cate" class="fr">返回购物车</a></h3><!--------ul---------------->
                <d:forEach var="u" items="${list}">
                    <ul class="clearfix">
                        <li class="fl"><img src="${u.getPhoto()}" width="40px" height="40px"></li>
                        <li class="fl">
                            <p>${u.getGname()}</p>
                            <p id="sum12">数量：${u.getSum()}</p></li>
                        <li class="fr">小计:￥${u.getPrice() * u.getSum()}</li>
                    </ul>
                    <input type="hidden"  id="price1" value="${u.getPrice()}">
                </d:forEach>
            </div>
            <!--------tips---------------->
            <div class="tips">
                <p><span class="fl">商品金额：</span><span class="fr">￥${sumprice}</span></p>
                <p><span class="fl">优惠金额：</span><span class="fr">￥0.00</span></p>
                <p><span class="fl">运费：</span><span class="fr">免运费</span></p>
            </div><!--------tips count---------------->
            <div class="count tips">
                <p>
                    <span class="fl">合计：</span>
                    <span class="fr">￥${sumprice}</span>
                </p>
            </div>
            <a href="javascript:topay(${sumprice})" class="pay">去支付</a>
        </div>
    </div>
</div>
<script>
    //开始就让第一个地址选择
    var a1 = document.getElementsByName("id1");
    a1[0].checked = true;
    var a = a1[0].value;

    var ima = 1;
    var k = 1;

    function cilck1(o){
        //地址的id
        a = o.value;
        var b = document.getElementsByName("id1");
        for(var i = 0;i < b.length;i++){
            b[i].checked = false;
        }
        o.checked = true;
    }
    function image1(index){
        ima = index;
    }
    function kuaidi(index) {
        k = index;
    }



    function topay(sumprice){
        if(typeof (a) == "undefined"){
            alert("请先选择收货地址");
        }else{
            var str = 1;
            var gid = "";
            var gid1 = <%=request.getAttribute("gid")%>;
            var sum = 0;
            if(gid1 != null){
                //商品id
                gid += gid1;
                sum = <%=request.getAttribute("sum")%>;
            }else {
                //购物车id
                var idlist = <%=request.getAttribute("idlist")%>;
                for (var i = 0;i < idlist.length;i++){
                    gid += idlist[i]+",";
                }
                str = 2;
            }
            // alert("订单id"+gid);
            // alert("是否为数组2是"+str);
            // alert("商品数量"+sum);
            // alert("地址id："+a);
            // alert("支付id："+ima);
            // alert("快递id："+k);
            // alert("商品总价格："+sumprice);
            location.href = 'admin_took?aid='+a+'&payid='+ima+'&kid='+k+'&sumprice='+sumprice+'&str='+str+'&gid='+gid+'&sum='+sum;
        }


    }

</script>
<div class="mask"></div>
<div class="adddz editAddre">
    <form action="#" method="get"><input type="text" placeholder="姓名" class="on"/><input type="text" placeholder="手机号"/>
        <div class="city"><select name="">
            <option value="省份/自治区">省份/自治区</option>
        </select><select>
            <option value="城市/地区">城市/地区</option>
        </select><select>
            <option value="区/县">区/县</option>
        </select><select>
            <option value="配送区域">配送区域</option>
        </select></div>
        <textarea name="" rows="" cols="" placeholder="详细地址"></textarea><input type="text" placeholder="邮政编码"/>
        <div class="bc"><input type="button" value="保存"/><input type="button" value="取消"/></div>
    </form>
</div>
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
<script src="js/pro.js" type="text/javascript" charset="utf-8"></script>
<script src="js/user.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>
