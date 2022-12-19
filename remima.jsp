<%--
  Created by IntelliJ IDEA.
  User: 千木枫
  Date: 2021/8/4
  Time: 11:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head lang="en">
    <meta charset="utf-8"/>
    <title>修改密码</title>
    <link rel="stylesheet" type="text/css" href="css/public.css"/>
    <link rel="stylesheet" type="text/css" href="css/mygrxx.css"/>
</head>
<body><!------------------------------head------------------------------>
<!------------------------------idea------------------------------>
<div class="address mt">
    <div class="wrapper clearfix">
        <a href="/MyShop/admin_tomain" class="fl">首页</a><span>/</span>
        <a href="/MyShop/admin_togrzx">个人中心</a><span>/</span>
        <a href="#" class="on">修改密码</a>
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
                    <li><a href="/MyShop/admin_togrxx">个人信息</a></li>
                    <li class="on"><a href="#">修改密码</a></li>
                </ul>
            </div>
        </div>
        <div class="you fl"><h2>修改密码</h2>
            <form action="/MyShop/admin_toupdatemima" method="get" id="userform" class="remima">
                <p><span>选择验证身份方式：</span><input type="checkbox"/>密码验证 <input type="checkbox"/>手机验证</p>
                <p><span>原密码：</span><input id="input1" type="password" style="border: black solid 1px"/><span id="span1" style="color: red"></span></p>
                <p class="op">输入原密码</p>
                <p><span>新密码：</span><input id="input2" type="password" style="border: black solid 1px"/><span id="span2" style="color: red"></span></p>
                <p class="op">请输入新密码</p>
                <p><span>确认新密码：</span><input id="input3" type="password" name="pwd" style="border: black solid 1px"/><span id="span3" style="color: red"></span></p>
                <p class="op">请再次输入密码</p>
                <p><span>验证码：</span><input type="text"/><img src="img/temp/code.jpg" alt=""/></p>
                <p class="op">按右图输入验证码，不区分大小写</p>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="button" value="提交" onclick="oncheck1()" style="width: 60px;height: 40px;text-align: center;"/>
            </form>
        </div>
    </div>
</div>
<script>
    //数据库中原密码
    var yunpwd = <%=request.getAttribute("pwd")%>;
    //输入的原密码
    var inputsp1 = document.getElementById("input1");
    //输入的新密码
    var inputsp2 = document.getElementById("input2");
    //输入的确认新密码
    var inputsp3 = document.getElementById("input3");
    //span1,span2,span3
    //判定能否提交
    var falg1 = false;
    var k2 = false;
    inputsp1.onblur = function () {
        var yuan = inputsp1.value;
        if(yunpwd != yuan){
            document.getElementById("span1").innerHTML = "密码有误";
        }else{
            falg1 = true;
        }
    }
    inputsp1.onfocus = function () {
        document.getElementById("span1").innerHTML = "";
    }
    inputsp3.onblur = function () {
        if(inputsp2.value != inputsp3.value){
            document.getElementById("span3").innerHTML = "两次输入的密码不一致";
            k2 = false;
        }else{
            if(inputsp2.value == "" || inputsp3.value == ""){
                document.getElementById("span2").innerHTML = "新密码不能为空";
                k2 = false;
            }else{
                k2 = true;
            }

        }
    }
    inputsp2.onfocus = function(){
        document.getElementById("span2").innerHTML = "";
        document.getElementById("span3").innerHTML = "";
    }
    inputsp3.onfocus = function () {
        document.getElementById("span2").innerHTML = "";
        document.getElementById("span3").innerHTML = "";
    }
    function oncheck1() {
        inputsp1.focus();
        inputsp1.blur();

        inputsp3.focus();
        inputsp3.blur();
        if((falg1 == true) && (k2 == true)){
            var userform = document.getElementById("userform");
            userform.submit();
        }
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
