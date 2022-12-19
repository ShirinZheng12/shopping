<%--
  Created by IntelliJ IDEA.
  User: 千木枫
  Date: 2021/7/28
  Time: 17:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户注册</title>
    <style>
        *{
            margin: 0px;
            padding: 1px;
            box-sizing: border-box;
        }

        body{
            background-image: url("image/bg1.jpg");
            padding-top: 25px;
        }

        .re_div{
            /*border: 8px solid #EEEEEE;*/
            width: 900px;
            height: 500px;
            /*设置div背景透明*/
            background-color:rgba(0,0,0,0);
            margin: auto;
        }

        .cLeft{
            float: left;
            margin: 15px;
        }
        #p1{
            color: #FFD026;
            font-size: 20px;
        }
        #p2{
            color: #A6A6A6;
            font-size: 20px;
        }
        .cCenter{
            float: left;
        }
        .td_left{
            width: 100px;
            height: 50px;
            text-align: right;
            color: #A6A6A6;
        }
        .td_right{
            padding-left: 50px;
            color: #A6A6A6;
        }
        #username,#userpwd,#confirmpwd,#userphone,#checkcode{
            width: 251px;
            height: 32px;
            border: 1px solid #A6A6A6;
            /*    设置边框圆角*/
            border-radius: 10px;
            padding-left: 10px;
        }
        #checkcode{
            width: 110px;
        }
        #cheImg{
            height: 32px;
            vertical-align: middle;
        }
        #userbut,#btn_cz{
            width: 150px;
            height: 40px;
            background-color: white;
            border: 1px solid white;
        }
        .cRight{
            font-size: 15px;
            margin: 15px;
            float: right;
        }
        .cRight p a{
            color: pink;
        }

        /*#div{*/
        /*    position: absolute;*/
        /*    background-color: #00FFFF;*/
        /*    width: 200px;*/
        /*    height: 30px;*/
        /*    margin-top: -85px;*/
        /*    margin-left: 86px;*/
        /*    display: none;*/
        /*    font-size: 23px;*/
        /*}*/

    </style>
</head>
<body>
<div class="re_div">
    <div class="cLeft">
        <p id="p1">新用户注册</p>
        <p id="p2">USER REGISTER</p>
    </div>
    <div class="cCenter">
        <form action="/MyShop/reg" method="post" id="userform">
            <table>
                <tr>
                    <td class="td_left"><label for="username">用户名</label></td>
                    <td class="td_right"><input type="text" name="username" id="username" placeholder="请输入您的昵称">
                        <span style="color: red" id="userspan"></span>
                    </td>
                </tr>

                <tr>
                    <td class="td_left"><label for="userpwd">密码</label></td>
                    <td class="td_right"><input type="password" name="password" id="userpwd" placeholder="请输入密码">
                    </td>
                </tr>
                <tr>
                    <td class="td_left"><label for="confirmpwd">确认密码</label></td>
                    <td class="td_right"><input type="password" name="conpassword" id="confirmpwd" placeholder="请确认密码">
                        <span style="color: red" id="pwdspan"></span>
                    </td>

                </tr>
                <tr>
                    <td class="td_left"><label for="userphone">手机号</label></td>
                    <td class="td_right"><input type="text" name="phone" id="userphone" placeholder="请输入手机号">
                        <span style="color: red" id="numberspan"></span>
                    </td>

                </tr>
            </table>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <td colspan="2" ><input id="userbut" type="button" value="注册"></td>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <td colspan="2" ><input id="btn_cz" type="reset" value="重置"></td>
        </form>

    </div>
    <div class="cRight">
        <p id="p3">已有账号？<a href="login.jsp">立即登录</a></p>
    </div>

</div>
<script>
    window.onload = function () {
        var k1 = false;
        var k2 = false;
        var k3 = false;

        //检验用户名-------------------------------------------------------
        var username = document.getElementById("username");
        var userspan = document.getElementById("userspan");
        username.onblur = function(){
            var user = username.value;
            if(user == ""){
                userspan.innerHTML = "用户名不能为空";
                k1 = false;
            }else{
                if(user.length < 1 || user.length > 10){
                    userspan.innerHTML = "用户名长度必须在1-10之间"
                    k1 = false;
                }else{
                    // 匹配数字，字母，汉字---- ^[A-Za-z0-9\u4e00-\u9fa5]+$
                    var regExp = /^[A-Za-z0-9_\u4e00-\u9fa5]+$/;
                    var ok = regExp.test(user);
                    if(!ok){
                        userspan.innerHTML = "用户名只能由字母，数字，汉字,下划线组成";
                        k1 = false;
                    }else{
                        k1 = true;
                    }
                }
            }
        }
        username.onfocus = function(){
            userspan.innerHTML = "";
        }
//检验密码--------------------------------------------------------
        var userpwd = document.getElementById("userpwd");
        var confirmpwd = document.getElementById("confirmpwd");
        var pwdspan = document.getElementById("pwdspan");
        confirmpwd.onblur = function(){
            if(userpwd.value != confirmpwd.value){
                pwdspan.innerHTML = "两次输入的密码不一致";
                k2 = false;
            }else{
                if(userpwd.value == "" || confirmpwd.value == ""){
                    pwdspan.innerHTML = "密码不能为空";
                    k2 = false;
                }else{
                    k2 = true;
                }
            }
        }
        userpwd.onfocus = function(){
            pwdspan.innerHTML = "";
        }
        confirmpwd.onfocus = function(){
            pwdspan.innerHTML = "";
        }
//检验电话-------------------------------------------------------------
        var userphone = document.getElementById("userphone");
        var numberspan = document.getElementById("numberspan");

        userphone.onblur = function(){
            //匹配数字--
            var regNumber = /^1\d{10}$/;
            var number = userphone.value;
            var ok1 = regNumber.test(number);
            if(!ok1){
                numberspan.innerHTML = "电话号码只能由11位数字构成且由1开头";
                k3 = false;
            }else{
                k3 = true;
            }

        }
        var div1 = document.getElementById("obj");
        userphone.onkeyup = function(){
            div1.style.display = "block";
            var number = userphone.value;;
            if(number.length == 11){
                number = number.slice(0,3)+" "+number.slice(3,7)+" "+number.slice(7);
            }
            div1.innerHTML = number;
        }
        userphone.onkeydown = function(){
            div1.style.display = "none";
        }
        userphone.onmouseout = function(){
            div1.style.display = "none";
        }

        userphone.onfocus = function(){
            numberspan.innerHTML = "";
        }
        //提交检测----------------------------------------------------------------------------------------
        var userbut = document.getElementById("userbut");
        userbut.onclick = function(){
            // alert(1111);

            username.focus();
            username.blur();
            //alert("111");
            confirmpwd.focus();
            confirmpwd.blur();
            //alert("222");
            userphone.focus();
            userphone.blur();
            //alert("333"); userspan.innerHTML == "" && pwdspan.innerHTML == "" && numberspan.innerHTML == ""
            // alert(k1);
            // alert(k2);
            // alert(k3);
            if((k1 == true) && (k2 == true) && (k3 == true)){
                var userform = document.getElementById("userform");
                userform.submit();
            }
        }
    }

</script>
</body>
</html>

