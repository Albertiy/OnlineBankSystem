<%--@ include file="testsession.jsp"--%><%@page import="cn.niit.domain.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Account Info &middot;OnlineBankSystem</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="${pageContext.request.contextPath}/assets/img/OnlineBankICO.png">
        <!-- Le styles -->
        <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/assets/css/custom/message.css" rel="stylesheet">

    </head>
    <body style="background-image: url(./assets/img/bg2.jpg)">
        <jsp:include flush="true" page="header_customer.jsp"></jsp:include>
            <!-- Main Content -->
            <div class="container">
                <div class="main" style="align-content:center">
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
                        <a class="btn btn-primary btn-lg" role="button" href="#" >Change PayKey</a>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- /container -->

    <!-- Footer -->
    <jsp:include flush="true" page="footer.jsp"></jsp:include>

        <!-- Scripts -->
        <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="${pageContext.request.contextPath}/assets/js/jquery-3.2.1/jquery-3.2.1.min.js"><\/script>')</script>
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/custom/header.js"></script>
    <script>
            $(document).ready(function () {
                if(${sessionScope.account.account_type})
                    $("#accountType").val("Current");
                else
                    $("#accountType").val("Saving");
            });
    </script>


</body>
</html>