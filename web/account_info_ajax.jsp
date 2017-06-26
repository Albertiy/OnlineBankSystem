<%--@ include file="testsession.jsp"--%><%@page import="cn.niit.domain.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%
            response.setHeader("Cache-Control", "no-store");//HTTP1.1
            response.setHeader("Pragma", "no-cache");//HTTP1.0
            response.setDateHeader("Expires", 0);//禁止在服务器中缓存
        %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

                    <legend><h1 style="text-align: left">Account Info</h1></legend>
                    <!-- 不可编辑 -->
                    <div class="center-block" style="max-width: 350px">
                        <div class="input-group ">
                            <div class="input-group-addon">
                                <span class="glyphicon glyphicon-user"></span> &nbsp;&nbsp;Account ID&nbsp;&nbsp;
                            </div>
                            <input class="form-control" type="text" readonly="readonly" value="${sessionScope.account.account_id}">
                        </div>
                    <br>
                    <div class="input-group ">
                        <div class="input-group-addon">
                            <span class="glyphicon glyphicon-globe"></span> Account Type
                        </div>
                        <input id="accountType" class="form-control" type="text" readonly="readonly" value="${sessionScope.account.account_type}">
                    </div>
                    <br>
                    <div class="input-group ">
                        <div class="input-group-addon">
                            <span class="glyphicon glyphicon-piggy-bank"></span> &nbsp;&nbsp;&nbsp;&nbsp;Interest&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </div>
                        <input class="form-control" type="text" readonly="readonly" value="${sessionScope.account.interest_rate}">
                    </div>
                    <br>
                    <div class="input-group ">
                        <div class="input-group-addon">
                            <span class="glyphicon glyphicon-yen"></span> &nbsp;&nbsp;&nbsp;&nbsp;Balance&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </div>
                        <input class="form-control" type="text" readonly="readonly" value="${sessionScope.account.balance}">
                    </div>
                    <br>
                    <div class="controls" style="text-align: right">
                        <a class="btn btn-warning btn-lg" role="button" href="/OnlineBankSystem/AccountOperationServlet" >Cancel</a>
                        <a class="btn btn-primary btn-lg" role="button" onclick="account_changepw()" href="#" >Change PayKey</a>
                    </div>
                </div>
    <script>
            $("#accountType").ready(function () {
                if(${sessionScope.account.account_type})
                    $("#accountType").val("Current");
                else
                    $("#accountType").val("Saving");
            });
    </script>