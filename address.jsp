<%--
  Created by IntelliJ IDEA.
  User: 千木枫
  Date: 2021/8/4
  Time: 11:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="d" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head lang="en">
    <meta charset="utf-8"/>
    <title>最家</title>
    <link rel="stylesheet" type="text/css" href="css/public.css"/>
    <link rel="stylesheet" type="text/css" href="css/mygxin.css"/>

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
        <a href="mygrzx.jsp">个人中心</a><span>/</span>
        <a href="address.jsp" class="on">地址管理</a>
    </div>
</div>
<!------------------------------Bott------------------------------>
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
                    <li><a href="/MyShop/admin_togrzx">我的中心</a></li>
                    <li class="on"><a href="/MyShop/admin_toaddress">地址管理</a></li>
                </ul>
                <ul>
                    <li><a href="/MyShop/admin_togrxx">个人信息</a></li>
                    <li ><a href="/MyShop/adimn_toremima">修改密码</a></li>
                </ul>
            </div>
        </div>
        <div class="you fl">
            <h2>收货地址</h2>
            <div class="add">
                <div>
                    <a href="#2" id="addxad"><img src="image/jia.png"/>
                    </a><span>添加新地址</span>
                </div>
                <div style="width: 80%">
                       <table style="border:1px solid black;width:100%;border-collapse: collapse;margin-right: 10px">
                           <tr>
                               <th style="border: 1px solid #000000;text-align: center;">联系人</th>
                               <th style="border: 1px solid #000000;text-align: center;">联系方式</th>
                               <th style="border: 1px solid #a00000;text-align: center;">区域</th>
                               <th style="border: 1px solid #a00000;text-align: center;">详细地址</th>
                               <th style="border: 1px solid #a00000;text-align: center;">操作</th>
                           </tr>
                           <d:forEach var="u" items="${list}">
                           <tr>
                               <td style="border: 1px solid #a00000;">${u.getName()}</td>
                               <td style="border: 1px solid #a00000;">${u.getMobile()}</td>
                               <td style="border: 1px solid #a00000;">${u.getProvince()}&nbsp;&nbsp; ${u.getCity()}&nbsp;&nbsp;${u.getCounty()}</td>
                               <td style="border: 1px solid #a00000;">${u.getAddress()}</td>
                               <td style="border: 1px solid #a00000;">
                                   <a href="javascript:updateaddress('${u.getAid()}','${u.getName()}','${u.getMobile()}','${u.getProvince()}','${u.getCity()}','${u.getCounty()}','${u.getAddress()}')" id="readd" style="color: red">修改</a>
                                   <a href="javascript:deleteaddress(${u.getAid()})" style="color: red">删除</a>
                               </td>
                           </tr>
                           </d:forEach>
                       </table>
                </div>
            </div>
        </div>
    </div>
</div><!--编辑弹框--><!--遮罩-->
<div class="mask"></div>
<div class="adddz">
    <div style="padding: 10px">
        <p style="color: red">建议您选择下拉列表中有的区域，否则可能会报错</p>
        <input style="border: 1px solid;border-color: #a10000;height: 40px;width: 300px " type="text" placeholder="姓名"  id="name1" class="on" name="name"/>
        <br>
        <input style="margin-top:10px;border: 1px solid;border-color: #a10000;height: 40px;width: 300px" type="text" placeholder="联系方式" id="mobile1" name="mobile"/>
        <div class="city" style="padding-top: 10px;padding-bottom: 10px">
            <select style="border: 1px solid;border-color: #A10000;height: 30px" name="province" id="province">
            </select>
            <select style="margin-left:10px;border: 1px solid;border-color: #A10000;height: 30px" name="city" id="city">
            </select>
            <select style="margin-left:10px;border: 1px solid;border-color: #A10000;height: 30px" name="county" id="county">
            </select>
        </div>
        <textarea name="address" id="address" rows="10" cols="45" placeholder="详细地址"></textarea>
        <div class="bc" style="margin: 10px">
            &nbsp;&nbsp;&nbsp;
            <input type="button" onclick="address()" onmouseover="this.style.borderColor='#a10000'" onmouseout="this.style.borderColor='#000000'" value="保存" style="width: 100px;height: 40px;border: 1px solid;"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="button" onmouseover="this.style.borderColor='#a10000'" onmouseout="this.style.borderColor='#000000'" value="取消" style="width: 100px;height: 40px;border: 1px solid;"/>
        </div>
<%--    </form>--%>
    </div>
</div>
<script>
    function address(){
        var name = document.getElementById("name1").value;
        var mobile = document.getElementById("mobile1").value;

        var index1 = document.getElementById("province").selectedIndex;
        var province = document.getElementById("province").options[index1].innerText;

        var index2 = document.getElementById("city").selectedIndex;
        var city = document.getElementById("city").options[index2].innerHTML;

        var index3 = document.getElementById("county").selectedIndex;
        var county = document.getElementById("county").options[index3].innerText;

        var address = document.getElementById("address").value;

        // alert(name);
        // alert(mobile);
        // alert(province);
        location.href = 'admin_address?name='+name+'&mobile='+mobile+'&province='+province+'&city='+city+'&county='+county+'&address='+address;

    }
</script>
<script>
    function updateaddress(aid,name,mobile,province,city,county,address){
        alert("暂无修改，建议直接删除");
        // document.getElementById("div12").style.display='block';
        // alert(aid);
        // alert(name);
        // alert(mobile);
        // alert(province);
        // alert(city);
        // alert(county);
        // alert(address);
        // location.href = 'admin_address?name='+name+'&mobile='+mobile+'&province='+province+'&city='+city+'&county='+county+'&address='+address;
    }
    function okupdate() {
        document.getElementById("div12").style.display='none';

    }
    function deleteaddress(aid){
        var a = confirm("你确定删除该地址吗?");
        if(a){
            location.href = 'admin_deleteaddress?aid='+aid;
        }
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
<script src="js/pcc.js" type="text/javascript"  charset="utf-8"></script>
<script src="js/index1.js" type="text/javascript" charset="utf-8"></script>
</body>
</html>
