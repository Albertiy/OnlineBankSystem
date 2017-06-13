<%@ include file="testsession.jsp"%>
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
                        <button id="btnCurrent" class="btn-primary placeholder" data-toggle="modal" data-target="#myModal">
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
                        <button id="btnSaving" class="btn-success placeholder" data-toggle="modal" data-target="#myModal">
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

            <!-- Modal -->
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="myModalLabel">Create Account</h4>
                        </div>
                        <form id="formNewAccount" class="form-newaccount" action="/OnlineBankSystem/NewAccountServlet" method="post">
                            <div class="modal-body">
                                <div class="control-group">

                                    <div class="controls">
                                        <label for="inputAccountType" class="control-label">Account Type</label>
                                        <input name="account_type" minlength="6" size="16" type="text" id="inputAccountType" class="form-control" placeholder="Account Type"  value="Current Account" required readonly>
                                    </div>

                                    <div class="controls">
                                        <label class="control-label" for="inputInterestRate">Interest Rate</label>
                                        <input name="interest_rate" id="inputInterestRate" type="text" placeholder="tel number" class="form-control"readonly>
                                    </div>

                                    <div class="controls">
                                        <label class="form-control-static" for="inputMinBalance">Min Balance</label>
                                        <div class="input-group">
                                            <input name="min_balance" id="inputMinBalance" type="text" placeholder="Min Balance" class="form-control" readonly>
                                            <span class="input-group-addon">￥</span>
                                        </div>
                                    </div>

                                    <div class="controls">
                                        <label class="form-control-static" for="inputBalance">First Deposit</label>
                                        <div class="input-group">
                                            <input name="balance" id="inputBalance" type="number" min="50" placeholder="Not less than min balance" class="form-control" required="required">
                                            <span class="input-group-addon">￥</span>
                                        </div>
                                    </div>

                                    <div class="controls">
                                        <label class="control-label" for="inputPassword">Account Password</label>
                                        <input name="password" type="password" id="inputPassword" class="form-control" maxlength="6"
                                               placeholder="Enter Password (six numbers)" size="6" pattern="[0-9][0-9][0-9][0-9][0-9][0-9]" required>
                                    </div>

                                    <div class="controls">
                                        <input name="confirm_password" type="password" id="inputConfirmPassword" class="form-control" maxlength="6"
                                               placeholder="Confirm Password" size="6" pattern="[0-9][0-9][0-9][0-9][0-9][0-9]" required>
                                        <span id="helpConfirmPW" class="help-inline" style=" color:red">Inconsistent with password</span>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Back</button>
                                <input type="submit" class="btn btn-success" value="Submit"/>
                            </div>
                        </form>
                    </div>
                </div>
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
                $(document).ready(function () {
                    $("#btnCurrent").click(function () {
                        $("#inputAccountType").val("Current Account");
                    });
                    $("#btnSaving").click(function () {
                        $("#inputAccountType").val("Saving Account");
                    });
                    $("#inputInterestRate").val("0.35%");
                    $("#inputMinBalance").val("50");
                    $("#helpConfirmPW").hide();
                });
                $("#inputPassword").change(function () {
                    if ($("#inputPassword").val() !== $("#inputConfirmPassword").val())
                    {
                        $("#helpConfirmPW").show();
                    } else {
                        $("#helpConfirmPW").hide();
                    }
                });
                $("#inputConfirmPassword").change(function () {
                    if ($("#inputPassword").val() !== $("#inputConfirmPassword").val())
                    {
                        $("#helpConfirmPW").show();
                    } else {
                        $("#helpConfirmPW").hide();
                    }
                });
                $("#formNewAccount").submit(function () {
                    if ($("#inputPassword").val() !== $("#inputConfirmPassword").val())
                    {
                        return mySubmit(false);
                    }
                });
                //掩体函数
                function mySubmit(flag) {
                    return flag;
                }
        </script>
    </body>
</html>
