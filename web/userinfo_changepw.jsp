<!--%@ include file="testsession.jsp"%-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password &middot;OnlineBankSystem</title>
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
                    <legend><h1 style="text-align: left">Login Password</h1></legend>

                    <!-- Core Code -->
                    <div class="center-block" style="max-width: 350px">
                        <form id="formChangePW" action="/OnlineBankSystem/UserPsdModifyServlet" method="post">
                            <div class="input-group ">
                                <div class="input-group-addon">
                                    <span class="glyphicon glyphicon-list-alt"></span>
                                </div>
                                <input class="form-control" name="login_id" type="text" readonly="readonly" value="${sessionScope.user.login_id}">
                            </div>
                            <br>
                            <div class="input-group ">
                                <div class="input-group-addon">
                                    <span class="glyphicon glyphicon-lock"></span>
                                </div>
                                <input id="inputOldPassword" minlength="6" maxlength="16" type="password"
                                       pattern="^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,16}$" class="form-control" placeholder="Old Password" autofocus="true" required>
                            </div>
                            <br>
                            <div id="groupPassword" class="input-group ">
                                <div class="input-group-addon">
                                    <span class="glyphicon glyphicon-pencil"></span>
                                </div>
                                <input name="password" id="inputPassword" minlength="6" maxlength="16" type="password"
                                       pattern="^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,16}$" class="form-control" placeholder="New Password" required>
                                <input name="confirm_password" id="inputConfirmPassword" minlength="6" maxlength="16" type="password"
                                       pattern="^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,16}$" class="form-control" placeholder="Confirm Password" required>
                            </div>
                            <div style="text-align: right">
                            <span id="helpConfirmPW" class="help-inline" style="color:red">Inconsistent with password</span>
                            </div>
                            <br>
                            <div class="controls" style="text-align: right">
                                <a class="btn btn-warning btn-lg" role="button" href="/OnlineBankSystem/AccountOperationServlet">Cancel</a>
                                <button id="btnSubmit" class="btn btn-primary btn-lg" type="submit">Change</button>
                            </div>
                        </form>
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
                    $("#helpConfirmPW").hide();
                    $("#groupPassword").hide();
                    $("#btnSubmit").hide();
                    var oldpw= '${sessionScope.user.login_pw}';
                    $("#inputOldPassword").change(function (){
                        if ($("#inputOldPassword").val() === oldpw.toString())
                        {
                            $("#groupPassword").show();
                            $("#btnSubmit").show();
                        }else
                        {
                            $("#groupPassword").hide();
                            $("#btnSubmit").hide();
                        }
                    });
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
                $("#formChangePW").submit(function () {
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

