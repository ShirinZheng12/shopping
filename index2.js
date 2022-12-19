window.onload = function () {
    var provinceNode = document.getElementById('province5'),
        cityNode = document.getElementById('city5'),
        countyNode = document.getElementById('county5');
    //省会获取
    var provincestr = "";
    for(var i = 0;i < province.length;i++){
        provincestr += '<option value=' + province[i][0] +'>' + province[i][1] + '</option>';
    }
    provinceNode.innerHTML = provincestr;

    //城市获取
    var cityArr = city[provinceNode.value];
    var citystr = "";
    for(var i = 0; i < cityArr.length;i++){
        citystr += '<option value=' + cityArr[i][0] +'>' + cityArr[i][1] + '</option>';
    }
    citystr += '<option>其他</option>';
    cityNode.innerHTML = citystr;

    //区获取
    var countyArr = county[cityNode.value];
    var countystr = "";
    for(var i = 0;i < countyArr.length;i++){
        countystr += '<option value=' + countyArr[i][0] +'>' + countyArr[i][2] + '</option>';
    }
    countystr += '<option>其他</option>';
    countyNode.innerHTML = countystr;

    //联动的实现
    provinceNode.onchange = function(){//省会改变-城市和院校都会变
        //城市获取
        var cityArr = city[provinceNode.value];
        //console.log(cityArr);
        var citystr = "";
        for(var i = 0;i<cityArr.length;i++){
            citystr += '<option value=' + cityArr[i][0] +'>' + cityArr[i][1] + '</option>';
        }
        citystr += '<option>其他</option>';
        cityNode.innerHTML = citystr;

        //区获取
        var countyArr = county[cityNode.value];
        var countystr = "";
        for(var i = 0;i < countyArr.length;i++){
            countystr += '<option value=' + countyArr[i][0] +'>' + countyArr[i][2] + '</option>';
        }
        countystr += '<option>其他</option>';
        countyNode.innerHTML = countystr;
    }
    //二级联动
    cityNode.onchange = function(){
        //区获取
        var countyArr = county[cityNode.value];
        var countystr = "";
        if(countyArr){
            for(var i = 0;i < countyArr.length;i++){
                countystr += '<option value=' + countyArr[i][0] +'>' + countyArr[i][2] + '</option>';
            }
            countyNode.innerHTML = countystr;
        }else{
            countystr += '<option>其他</option>';
            countyNode.innerHTML = countystr;
        }
    }


}
