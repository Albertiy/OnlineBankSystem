<!--%@ include file="testsession.jsp"%-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="refresh" content ="3; url=newaccount.jsp; charset=UTF-8">
        <title>Failed &middot;OnlineBankSystem</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="${pageContext.request.contextPath}/assets/img/OnlineBankICO.png">
        <!-- Le styles -->
        <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/assets/css/custom/message.css" rel="stylesheet">
        <script type="text/javascript">
            var i = 4;
            function shownum() {
                i = i - 1;
                var time = document.getElementById("time");
                if (time !== null) {
                    document.getElementById("time").innerHTML = "Redirect to create account page after " + i +"s";
                }
                setTimeout('shownum()', 1000);
            }
        </script>
    </head>
    <body onload="shownum()" style="background-image: url(./assets/img/bg2.jpg);">
        <jsp:include flush="true" page="header_customer.jsp"></jsp:include>
        <!--%response.setHeader("refresh", "3;URL=newaccount.jsp");%-->
            <div class="container">
                <div class="message">
                    <h1>Create Account Failed</h1>
                    <p id="time" style="font-size:large"></p>
                    <p style="font-size:large">If there is no automatic jump, please click <a href="newaccount.jsp">Here</a></p>
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

