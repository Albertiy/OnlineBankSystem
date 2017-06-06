<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Account &middot;OnlineBankSystem</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="${pageContext.request.contextPath}/assets/img/OnlineBankICO.png">
        <!-- Le styles -->
        <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/assets/css/custom/newaccount.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/assets/css/icheck/blue.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/assets/css/grumble/grumble.min.css" rel="stylesheet">
    </head>
    <body style="background-image: url(${pageContext.request.contextPath}/assets/img/bg1.jpg);background-repeat: repeat">
        <jsp:include flush="true" page="header_customer.jsp"></jsp:include>
        <div class="container-fluid placeholders">
            <legend><h1 class=" text-primary">Choose the Type of Your Account</h1></legend>
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-12">
                        <button class="btn-primary placeholder">
                            
                            <span style="font-size:xx-large" class="glyphicon glyphicon-yen"></span>
                            <h3>Current Account</h3>
                            <h4>Support:</h4>
                            <span class="text-left">
                                <ul>
                                    <li>Multiple Loans</li>
                                    <li>Transaction</li>
                                    <li>Current Deposit</li>
                                    <li>Fixed Deposit</li>
                                </ul>
                            </span>
                        </button>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12">
                        <button class="btn-success placeholder">
                            <span style="font-size:xx-large" class="glyphicon glyphicon-piggy-bank"></span>
                            <h3>Saving Account</h3>
                            <h4>Support:</h4>
                            <span class="text-justify">
                                <ul>
                                    <li>Current Deposit</li>
                                    <li>Fixed Deposit</li>
                                </ul>
                            </span>
                        </button>
                    </div>
                </div>
        </div> <!-- /container -->

        <!-- Footer -->
        <jsp:include flush="true" page="footer.jsp"></jsp:include>

            <!-- Scripts -->
            <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
            <script>window.jQuery || document.write('<script src="${pageContext.request.contextPath}/assets/js/jquery-3.2.1/jquery-3.2.1.min.js"><\/script>')</script>
        <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/icheck/icheck.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/grumble/jquery.grumble.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/custom/header.js"></script>
        <script>
                //document.load();
                //function check_blue(){$('#check-blue').iCheck('check');}
                $(document).ready(function () {
                });
        </script>
    </body>
</html>
