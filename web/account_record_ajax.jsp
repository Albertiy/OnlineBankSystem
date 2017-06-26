<%--@ include file="testsession.jsp"--%><%@page import="cn.niit.domain.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    response.setHeader("Cache-Control", "no-store");//HTTP1.1
    response.setHeader("Pragma", "no-cache");//HTTP1.0
    response.setDateHeader("Expires", 0);//禁止在服务器中缓存
%>
<!DOCTYPE html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<legend><h1 style="text-align: left">Transaction Record</h1></legend>
<div class="center-block">
        
        <!-- Core Code -->
        <div id="divTable" class="table-responsive">          
            <table class=" table table-striped table-bordered" style="background-color: #cccccc">
                <thead>
                <tr>
                    <th>Target ID</th>
                    <th>Target Name</th>
                    <th>Amount</th>
                    <th>Date Time</th>
                </tr>
                </thead>
                <tbody id="records">
                </tbody>
            </table>
        </div>

    <script>
        $("#divTable").ready(function () {
            var tbody = document.getElementById("records");
            //获得所有商品的数组
            var ListArray = eval(${requestScope.json});
            //遍历数组,将商品添加到页面中的列表中
            for (var i = 0; i < ListArray.length; ) {
                //创建tr对象
                var tr = document.createElement("tr");
                //取出一个商品
                var record1 = ListArray[i++];
                //创建td对象
                var td = document.createElement("td");
                td.innerHTML = record1["transfer_id"];
                //将td添加到tr中
                tr.appendChild(td);
                var td = document.createElement("td");
                td.innerHTML = record1["transfer_name"];
                tr.appendChild(td);
                var td = document.createElement("td");
                td.innerHTML = record1["amount"];
                tr.appendChild(td);
                var td = document.createElement("td");
                td.innerHTML = record1["datetime"];
                tr.appendChild(td);
                //tr添加到表格中
                tbody.appendChild(tr);
            }
        });
    </script>
</div>
