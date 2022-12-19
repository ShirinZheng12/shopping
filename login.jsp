<%--
  Created by IntelliJ IDEA.
  User: 千木枫
  Date: 2021/7/6
  Time: 22:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆</title>
    <link rel="stylesheet" type="text/css" href="css/MyLogin.css">
</head>
<body background="image/bg1.jpg">
<div class="box">
    <h1><span id="span3">${msg}</span></h1>
    <h2>登陆</h2>
    <form action="/MyShop/admin_login" method="post">
        <div class="inputBox">
            <input type="text" name="name" required="" autofocus="autofocus" placeholder="手机号" id="username">
            <label>手机号</label>
        </div>
        <div class="inputBox">
            <input type="password" name="password" required="" id="password">
            <label>密码</label>
        </div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="submit" name="" value="登录"/>
        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
        <input type="reset" name="" value="重置"/>
    </form>
    <p class="admin_copyright">
        <a tabindex="5" href="reg.jsp" target="_blank">注册</a>
        &copy; 2014 Powered by 更多模板：<a href="http://www.baidu.com" target="_blank">自行百度</a></p>
</div>
<script>
   var username =  document.getElementById("userform");
   var pwd = document.getElementById("password");
   username.onfocus = function () {
        document.getElementById("span3").innerHTML = "";
   }
   pwd.onfocus = function () {
       document.getElementById("span3").innerHTML = "";
   }
</script>
</body>
</html>
