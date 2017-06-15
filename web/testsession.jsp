<%-- 
    Document   : testsession
    Created on : Jun 13, 2017, 4:06:00 PM
    Author     : BearK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Miss Login &middot;OnlineBankSystem</title>
        <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0">
        <link rel="icon" href="${pageContext.request.contextPath}/assets/img/OnlineBankICO.png">
        <!-- CSS -->
        <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/assets/css/custom/message.css" rel="stylesheet">
        <script type="text/javascript">
            var i = 4;
            function shownum() {
                i = i - 1;
                var time = document.getElementById("time");
                var time2 = document.getElementById("time2");
                if (time !== null) {
                    document.getElementById("time").innerHTML = "Redirect to login page after " + i +"s";
                }
                if (time2 !== null) {
                    document.getElementById("time2").innerHTML = "Redirect to customer page after " + i +"s";
                }
                setTimeout('shownum()', 1000);
            }
        </script>
    </head>
    <body onload="shownum()" style="background-image: url(./assets/img/bg2.jpg);">
        <div class="container">
            <%
                if (session.getAttribute("user") == null) {%>
            <div class="message">
                <h1>Please Login First！</h1>
                <p id="time" style="font-size:large"></p>
                <p style="font-size:    large">If there is no automatic jump, please click <a href="loginin.jsp">Here</a></p>
            </div>
            <%
                response.setHeader("refresh", "3;URL=loginin.jsp");
                return;
               } %>

        </div>
    </body>
</html>
