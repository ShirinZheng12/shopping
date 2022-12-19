<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="admin_menu.jsp" %>
    <!--/sidebar-->
    <div class="main-wrap">

        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font"></i><a href="index.html">首页</a><span class="crumb-step">&gt;</span><span class="crumb-name">分类管理</span></div>
        </div>

        <div class="search-wrap">
            <div class="search-content">
                <form action="/MyShop/manage/admin_querycate" method="get">
                    <table class="search-tab">
                        <tr>
                            <th width="70">电话:</th>
                            <td><input class="common-text" placeholder="关键字" name="phone"  id="1" type="text"></td>
                            <th width="70">商品id:</th>
                            <td><input class="common-text" placeholder="关键字" name="goodsid"  id="2" type="text"></td>
                            <th width="70">价格区间:</th>
                            <td>
                                <select name="price">
                                    <option selected value="0"></option>
                                    <option value="1">0-20</option>
                                    <option value="2">20-80</option>
                                    <option value="3">80-200</option>
                                    <option value="4">200-1000</option>
                                </select>
                            </td>
                            <td><input class="btn btn-primary btn2" value="查询" type="submit"></td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>

        <div id="register" class="result-wrap">
            <form action="/MonkeyShop/manage/admin_douserdel" id="myform" method="post">
                <div class="result-title">
                    <div class="result-list">
                        <a href="/MonkeyShop/manage/admin_tocateadd"><i class="icon-font"></i>新增分类</a>
                    </div>
                </div>
                <div class="result-content">
                    <table class="result-tab" width="100%">
                        <tr>
                            <th class="tc" width="5%"><input class="allChoose" name=""  onclick="selall(this)" type="checkbox"></th>
                            <th>购物车编号</th>
                            <th>电话</th>
                            <th>商品id</th>
                            <th>加入购物车时间</th>
                            <th>加入数量</th>
                            <th>商品价格</th>
                            <th>是否已付款</th>
                        </tr>

                        <c:forEach var="u" items="${list}">
                            <tr>
                                <td class="tc"><input name="id[]" value="${u.getCid()}" type="checkbox"></td>
                                <td>${u.getCid()}</td>
                                <td> ${u.getPid()}</td>
                                <td> ${u.getGid()}</td>
                                <td> ${u.getDate()}</td>
                                <td> ${u.getSum()}</td>
                                <td>${u.getPrice()}</td>
                                <td>
                                        ${u.getStatus() == 1?'否':'是'}
                                </td>
                            </tr>
                        </c:forEach>

                        <script>
                            function Delete(mess, url) {
                                if(confirm(mess)) {
                                    location.href=url;
                                }
                            }
                            function selall(o) {
                                var a = document.getElementsByName('id[]');
                                for(var i=0; i<a.length; i++) {
                                    a[i].checked = o.checked;
                                }
                            }
                            function delmore(mess, formname) {
                                if(confirm(mess)) {
                                    var form = document.getElementById(formname);
                                    form.submit();
                                }
                            }
                        </script>
                    </table>
                    <div class="list-page">
                        共 ${tsum} 条记录， 当前 ${cpage}/${tpage} 页
                        <a href="admin_mancateselect?cp=1${searchParams}">首页</a>
                        <a href="admin_mancateselect?cp=${cpage-1<1?1:cpage-1}${searchParams}">上一页</a>
                        <a href="admin_mancateselect?cp=${cpage+1>tpage?tpage:cpage+1}${searchParams}">下一页</a>
                        <a href="admin_mancateselect?cp=${tpage}${searchParams}">尾页</a>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>