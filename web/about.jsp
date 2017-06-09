<%-- 
    Document   : About
    Created on : 2017-5-31, 16:59:40
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
        <title>About&middot;OnlineBankSystem</title>
        <link rel="icon" href="${pageContext.request.contextPath}/assets/img/OnlineBankICO.png">

        <!-- Styles -->
        <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/assets/css/custom/newaccount.css" rel="stylesheet">
        
    </head>
    <body style="background-image: url(${pageContext.request.contextPath}/assets/img/bg1.jpg);background-repeat: repeat">
        <!-- Navbar -->
        <jsp:include flush="true" page="header.jsp"></jsp:include>

        <div class="container">
            <div class="jumbotron">
                <legend><h1>Loan Category</h1></legend>
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-sm-12">
                        <div id="eduLoan" class="btn-primary placeholder" data-toggle="modal" data-target="#myModal">
                            <span style="font-size:xx-large" class="glyphicon glyphicon-yen"></span>
                            <h3>Education Loan</h3>
                            <h4>Details:</h4>
                            <span class="text-left">
                                <table>
                                    <tr><td></td>
                                        <td></td>
                                    </tr>
                                </table>
                            </span>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-12">
                        <div id="carLoan" class="btn-success placeholder" data-toggle="modal" data-target="#myModal">
                            <span style="font-size:xx-large" class="glyphicon glyphicon-yen"></span>
                            <h3>Car Loan</h3>
                            <h4>Details:</h4>
                            <span class="text-left">
                                <ul>
                                    <li>Multiple Loans</li>
                                    <li>Transaction</li>
                                    <li>Current Deposit</li>
                                    <li>Fixed Deposit</li>
                                </ul>
                            </span>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-12">
                        <div id="homeLoan" class="btn-primary placeholder" data-toggle="modal" data-target="#myModal">
                            <span style="font-size:xx-large" class="glyphicon glyphicon-yen"></span>
                            <h3>Home Loan</h3>
                            <h4>Details:</h4>
                            <span class="text-justify">
                                <ul>
                                    <li>Current Deposit</li>
                                    <li>Fixed Deposit</li>
                                </ul>
                            </span>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-sm-12">
                        <div id="personalLoan" class="btn-success placeholder" data-toggle="modal" data-target="#myModal">
                            <span style="font-size:xx-large" class="glyphicon glyphicon-yen"></span>
                            <h3>Personal Loan</h3>
                            <h4>Details:</h4>
                            <span class="text-justify">
                                <ul>
                                    <li>Current Deposit</li>
                                    <li>Fixed Deposit</li>
                                </ul>
                            </span>
                        </div>
                    </div>
                </div>
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

