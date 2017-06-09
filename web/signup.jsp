<%-- 
    Document   : signup
    Created on : 2017-5-31, 17:05:35
    Author     : YAN YUE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up &middot;OnlineBankSystem</title>
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
    <!--  style="background-image: url(${pageContext.request.contextPath}/assets/img/background.jpg);background-repeat: repeat" -->
    <body style="background-image: url(${pageContext.request.contextPath}/assets/img/bg1.jpg);background-repeat: repeat">
        <jsp:include flush="true" page="header.jsp"></jsp:include>
            <div class="container">
                <form id="formSignUp" class="form-signin" action="/OnlineBankSystem/RegistServlet" method="post">
                    <legend class=""><h2 class="form-signin-heading">Sign Up for Online Bank System</h2></legend>
                    <div class="control-group">
                        <div class="controls">
                            <label for="inputCustomerID" class="control-label">Customer Id</label>
                            <input name="name" minlength="6" maxlength="16" type="text" id="inputCustomerID" class="form-control" placeholder="atleast 6 and atmost 16 char" required autofocus>
                            <font color="red" >${requestScope.error}</font>
                    </div>
                    <div class="controls">
                        <label class="control-label" for="inputPassword">Password</label>
                        <input name="password" id="inputPassword" minlength="6" maxlength="16" type="password" pattern="^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,16}$" class="form-control" placeholder="Password (Num/Char/Underline)" required>
                        <input name="confirm_password" id="inputConfirmPassword" minlength="6" maxlength="16" type="password" pattern="^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,16}$" class="form-control" placeholder="Confirm Password" required>
                        <span id="helpConfirmPW" class="help-inline" style=" color:red">Inconsistent with password</span>
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <label class="form-control-static" for="inputName">Name</label>
                        <input name="realname"id="inputName" type="text" placeholder="Real Name" class="form-control" required="required">
                    </div>

                    <div class="controls">
                        <label class="control-label" for="inputTelNum">Tel Num</label>
                        <input name="tel" id="inputTelNum" type="text" placeholder="tel number" class="form-control" required="required">
                    </div>

                    <div class="controls">
                        <label class="control-label" for="inputEmail">E-mail</label>
                        <input name="email" id="inputEmail" type="email" placeholder="email@sample.com" class="form-control">
                    </div>

                    <div class="controls">
                        <label class="control-label" for="inputAddress">Address</label>
                        <input name="address" id="inputAddress" class="form-control" placeholder="address" required>
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
                $(document).ready(function () {
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
                $("#formSignUp").submit(function () {
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
