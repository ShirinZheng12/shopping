<%--
  Created by IntelliJ IDEA.
  User: 千木枫
  Date: 2021/8/4
  Time: 11:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head lang="en">
    <meta charset="utf-8"/>
    <title>个人信息</title>
    <link rel="stylesheet" type="text/css" href="css/public.css"/>
    <link rel="stylesheet" type="text/css" href="css/mygrxx.css"/>
    <style type="text/css">
        .ul1 li{
            list-style-type: none;
            float: left;
        }
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
        <a href="#" class="on">个人信息</a>
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
                    <li><a href="/MyShop/admin_togrzx">我的中心</a></li>
                    <li><a href="/MyShop/admin_toaddress">地址管理</a></li>
                </ul>
                <ul>
                    <li class="on"><a href="#">个人信息</a></li>
                    <li><a href="/MyShop/admin_toremima">修改密码</a></li>
                </ul>
            </div>
        </div>
        <div class="you fl"><h2>个人信息</h2>
            <div class="gxin">
                <div class="tx"><a href="#"><img src="<%=(String)request.getAttribute("photo")%>"/>
                    <p id="avatar">修改头像</p></a></div>
                <div class="xx">
                    <h3 class="clearfix">
                        <strong class="fl">基础资料</strong>
                        <a href="#" class="fr" id="edit1">编辑</a>
                    </h3>
                    <div>姓名：${name}</div>
                    <div>生日：${birthday}</div>
                    <div>性别：${sex}</div>
                    <h3>高级设置</h3><!--<div><span class="fl">银行卡</span><a href="#" class="fr">管理</a></div>-->
                    <div>
                        <span class="fl">账号地区：中国</span>
                        <a href="#" class="fr" id="edit2">修改</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div><!--遮罩-->
<div class="mask"></div><!--编辑弹框-->
<%--修改基本资料--%>
<div class="bj">
    <div class="clearfix">
        <a href="#" class="fr gb">
            <img src="image/icon4.png"/>
        </a>
    </div>
    <h3>编辑基础资料</h3>
    <form action="/MyShop/admin_doupdategrxx" id="userform" method="get">
        <p >
            <label>昵称：</label><input type="text" id="nicp1" name="name" value="${name}"/>
        </p>
        <p >
            <label>生日：</label><input type="date" name="birthday" id="birt" value="${birthday}"/>
        </p >
        <p>
            <label>性别：</label>
            <span><input type="radio" checked="checked" name="sex" value="1"/>男</span>
            <span><input type="radio" name="sex" value="2"/>女</span>
        </p>
        <div class="bc">
            <input type="button" id="baocun" value="保存"/>
            <input type="button" value="取消"/>
        </div>
    </form>
    <script>
        var name1 = document.getElementById("nicp1");
        var birthday = document.getElementById("birt");

        var baocun = document.getElementById("baocun");
        var flag1 = false;
        var flag2 = false;
        baocun.onclick = function () {
            if(name1.value == ""){
                alert("昵称不能为空");
            }else{
                flag1 = true;
            }
            if (birthday.value == ""){
                alert("生日不能为空");
            }else{
                flag2 = true;
            }
            if((flag1==true) && (flag2==true)){
                var userform = document.getElementById("userform");
                userform.submit();
            }else{
                document.getElementById("edit1").click();
            }
        }
    </script>
</div>
<!--高级设置修改-->
<div class="xg">
    <div class="clearfix"><a href="#" class="fr gb"><img src="image/icon4.png"/></a></div>
    <h3>切换账号地区</h3>
    <form action="#" method="get"><p><label>地区：</label><input type="text" value="中国"/></p>
        <div class="bc"><input type="button" value="保存"/><input type="button" value="取消"/></div>
    </form>
</div>
<!--修改头像-->
<div class="avatar">
    <div class="clearfix">
        <a href="#" class="fr gb">
            <img src="image/icon4.png"/>
        </a>
    </div>
    <h3>修改头像</h3>
    <div>
        <p>选择你要修改的头像</p>
        <div class="way clearfix">
            <img src="image/tx0.png" class="on" id="i12" onclick="imagechose(0)">
            <img src="image/tx1.png" id="i13" onclick="imagechose(1)">
            <img src="image/tx2.png" id="i14" onclick="imagechose(2)">
            <img src="image/tx3.png" id="i15" onclick="imagechose(3)">
            <img src="image/tx4.png" id="i16" onclick="imagechose(4)">
            <img src="image/tx5.png" id="i17" onclick="imagechose(5)">
            <img src="image/tx6.png" id="i18" onclick="imagechose(6)">
            <img src="image/tx7.png" id="i19" onclick="imagechose(7)">
        </div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="button" value="提交" onclick="choseimg()" style="width: 60px;height: 40px;text-align: center;"/>
    </div>
    <script>
       var imgid;
       function imagechose(id) {
           imgid = id;
           var i1 = document.getElementById("i12");
           var i2 = document.getElementById("i13");
           var i3 = document.getElementById("i14");
           var i4 = document.getElementById("i15");
           var i5 = document.getElementById("i16");
           var i6 = document.getElementById("i17");
           var i7 = document.getElementById("i18");
           var i8 = document.getElementById("i19");

           i1.style.border = "";
           i2.style.border = "";
           i3.style.border = "";
           i4.style.border = "";
           i5.style.border = "";
           i6.style.border = "";
           i7.style.border = "";
           i8.style.border = "";

           if(id == 0){
                i1.style.border="1px solid red";
           }
           if(id == 1){
                i2.style.border="1px solid red";
           }
           if(id == 2){
                i3.style.border="1px solid red";
           }
           if(id == 3){
                i4.style.border="1px solid red";
           }
           if(id == 4){
                i5.style.border="1px solid red";
           }
           if(id == 5){
                i6.style.border="1px solid red";
           }
           if(id == 6){
               i7.style.border="1px solid red";
           }
           if(id == 7){
               i8.style.border="1px solid red";
           }
        }
       function choseimg(){
           location.href='admin_doupdategrxx?imgid='+imgid;
       }
    </script>
</div>

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
        <dt><img src="image/grzx.png"/></dt>
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