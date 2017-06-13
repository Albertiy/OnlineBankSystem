<%-- 
    Document   : Transaction
    Created on : Jun 9, 2017, 2:42:40 PM
    Author     : Damon
--%>
<%@ include file="testsession.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Operation &middot;OnlineBankSystem</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="${pageContext.request.contextPath}/assets/img/OnlineBankICO.png">
        <!-- Le styles -->
        <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/assets/css/custom/loginin.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/assets/css/icheck/blue.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/assets/css/grumble/grumble.min.css" rel="stylesheet">
        
    </head>
    <body style="background-image: url(${pageContext.request.contextPath}/assets/img/bg1.jpg);background-repeat: repeat">
        <jsp:include flush="true" page="header_customer.jsp"></jsp:include>
            <!-- Container -->
            <div class="container">
                <form id="formSignUp" class="form-signin" action="" method="post">
                    <legend class=""><h2 class="form-signin-heading">Transaction Info</h2></legend>
                    <div class="control-group">
                        <div class="controls">
                            <label for="inputCustomerID" class="control-label">Transfer Id</label>
                            <input name="transfer_id" minlength="6" maxlength="16" type="text" id="inputTransferID" class="form-control" placeholder="atleast 6 and atmost 16 char" required autofocus>
                            <font color="red" >${requestScope.error}</font>
                        </div>
                        <div class="controls">
                            <label class="control-label" for="inputTargetName">Remittee</label>
                            <input name="target_name" id="inputTargetName" type="text" placeholder="Remittee" class="form-control" required="required">
                        </div>
                    </div>
                    <div class="control-group">
                        <div class="controls">
                            <label class="form-control-static" for="inputAmount">Amount</label>
                            <input name="transfer_amount"id="inputAmount" placeholder="Amount you want to transfer" type="number" pattern="[0-9]\d{1,}" min="1" class="form-control" required="required">
                        </div>
                    </div>

                <div class="control-group">
                    <label class="control-label"></label>
                    <div class="controls">
                        <button class="btn btn-success btn-block btn-lg" type="submit">Submit</button>
                    </div>
                </div>
                </form>
            </div>
            
            
            
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
        </script>
    </body>
</html>
