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
            if(user.length < 2 || user.length > 10){
                userspan.innerHTML = "用户名长度必须在2-10之间"
                k1 = false;
            }else{
                // 匹配数字，字母，汉字---- ^[A-Za-z0-9\u4e00-\u9fa5]+$
                var regExp = /^[A-Za-z0-9\u4e00-\u9fa5]+$/;
                var ok = regExp.test(user);
                if(!ok){
                    userspan.innerHTML = "用户名只能由字母，数字，汉字组成";
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
        useremail.focus();
        useremail.blur();

        username.focus();
        username.blur();
        //alert("111");
        confirmpwd.focus();
        confirmpwd.blur();
        //alert("222");
        userphone.focus();
        userphone.blur();
        //alert("333"); userspan.innerHTML == "" && pwdspan.innerHTML == "" && numberspan.innerHTML == ""
        if((k1 == true) && (k2 == true) && (k3 == true)){
            var userform = document.getElementById("userform");
            userform.submit();
        }
    }
}
