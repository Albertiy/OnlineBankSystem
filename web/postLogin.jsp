<%-- 
    Document   : postLogin
    Created on : 2017-6-12, 14:24:39
    Author     : YAN YUE
--%>
<!--%@ include file="testsession.jsp"%-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>No account &middot;OnlineBankSystem</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="${pageContext.request.contextPath}/assets/img/OnlineBankICO.png">
        <!-- Le styles -->
        <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/assets/css/custom/message.css" rel="stylesheet">
    </head>
    <body style="background-image: url(./assets/img/bg2.jpg);">
        <jsp:include flush="true" page="header_customer.jsp"></jsp:include>
            <div class="container">
                <div class="message">
                    <h1>Login Success</h1>
                    <p style="font-size: medium">You doesn't have an account yet, click the button below to create an account.</p>
                    <p>&nbsp;</p><p>&nbsp;</p>
                    <p style="float:right"><a class="btn btn-primary btn-lg" href="/OnlineBankSystem/newaccount.jsp" role="button">New Account</a></p>
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

                });
        </script>
    </body>
</html>

