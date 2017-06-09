<%-- 
    Document   : Contact
    Created on : 2017-5-31, 16:59:51
    Author     : YAN YUE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Contact&middot;OnlineBankSystem</title>
        <link rel="icon" href="${pageContext.request.contextPath}/assets/img/OnlineBankICO.png">

        <!-- Styles -->
        <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/assets/css/unslider/unslider.css" rel="stylesheet">
    </head>
    <body style="background-image: url(${pageContext.request.contextPath}/assets/img/bg1.jpg);background-repeat: repeat">
        <!-- Navbar -->
        <jsp:include flush="true" page="header.jsp"></jsp:include>

        <div class="container">
            <div class="jumbotron" style="min-height: 400px">
                <h1>Contact Us</h1>
                <table>
                    <tr>
                        <td><p>Tel-Number: </p></td>
                        <td><p>12312312312</p></td>
                    </tr>
                    <tr>
                        <td><p>Email: </p></td>
                        <td><p>123@123.com</p></td>
                    </tr>
                </table>
            </div>
        </div>

        <jsp:include flush="true" page="footer.jsp"></jsp:include>

            <!-- Script -->
            <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
            <script>window.jQuery || document.write('<script src="${pageContext.request.contextPath}/assets/js/jquery-3.2.1/jquery-3.2.1.min.js"><\/script>')</script>
        <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/unslider/unslider.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/custom/header.js"></script>
        <script>
        </script>
    </body>
</html>
