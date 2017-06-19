<%-- 
    Document   : transaction_record
    Created on : Jun 19, 2017, 7:15:14 PM
    Author     : BearK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript">
            function loadRecords() {
                var table = document.getElementById("records");
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
                    table.appendChild(tr);
                }

            }
        </script>
    </head>
    <body onload="loadRecords()">
        <table id="records" border="1">
            <tr>
                <th>Transfer ID</th>
                <th>Name</th>
                <th>Amount</th>
                <th>DateTime</th>
            </tr>
        </table>
    </body>
</html>
