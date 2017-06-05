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
    <body>
        <jsp:include flush="true" page="header.jsp"></jsp:include>
            <div class="container">                
                <form class="form-signin">
                    <div id="legend" class="">
                        <legend class=""><h2 class="form-signin-heading">Sign up for Online Bank System</h2></legend>
                    </div>
                    <div class="control-group">
                        <!-- Text input-->
                        <label class=" form-control-static" for="input01">NAME</label>
                        <div class="controls">
                            <input id="input01" type="text" placeholder="（例：张三）" class=" form-control">
                            <p class="help-block">Ensure your name is consistent with your id card!</p>
                        </div>
                    </div>
                    <div class="control-group">
                        <!-- Text input-->
                        <label class="control-label" for="input01">Login Password</label>
                        <div class="controls">
                            <input type="text" placeholder="6位数字" class="input-xlarge">
                            <p class="help-block">Only for login in this Online Bank System!</p>
                        </div>
                    </div>
                    <div class="control-group">
                        <!-- Text input-->
                        <label class="control-label" for="input01">Ensure Password</label>
                        <div class="controls">
                            <input type="text" placeholder="6位数字" class="input-xlarge">
                        </div>
                    </div>
                    <div class="control-group">
                        <!-- Select Basic -->
                        <label class="control-label">Account Type</label>
                        <div class="controls">
                            <select class="input-xlarge">
                                <option>We suggest the current type for complete servers.</option>
                                <option>Current Account</option>
                                <option>Savings Account</option></select>
                        </div>
                    </div>
                    <div class="control-group">
                        <!-- Select Basic -->
                        <label class="control-label">Country/Region</label>
                        <div class="controls">
                            <select class="input-xlarge">
                                <option>China (Mainland)</option>
                                <option>Tai Wan</option>
                                <option>Hong Kong</option>
                                <option>Ao Men</option>
                                <option>Others not supported temporary.</option></select>
                        </div>
                    </div>
                    <div class="control-group">
                        <!-- Text input-->
                        <label class="control-label" for="input01">Tele Number</label>
                        <div class="controls">
                            <input type="text" placeholder="加区号（例：0527-81234123）" class="input-xlarge">
                            <p class="help-block">Required</p>
                        </div>
                    </div>
                    <div class="control-group">
                        <!-- Text input-->
                        <label class="control-label" for="input01">E-mail</label>
                        <div class="controls">
                            <input type="text" placeholder="（例：123@outlook.com）" class="input-xlarge">
                            <p class="help-block">Not Required</p>
                        </div>
                    </div>
                    <div class="control-group">
                        <!-- Text input-->
                        <label class="control-label" for="input01">ID Card</label>
                        <div class="controls">
                            <input type="text" placeholder="18位" class="input-xlarge">
                            <p class="help-block">Required</p>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label"></label>
                        <!-- Button -->
                        <div class="controls">
                            <button class="btn btn-success btn-block btn-lg">Submit</button>
                        </div>
                    </div>
                    <label for="inputCustomerID" class="sr-only">Customer Id</label>
                    <input type="text" id="inputCustomerID" class="form-control" placeholder="Customer Id" required>
                    <label for="inputPassword" class="sr-only">Password</label>
                    <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
                    <div class="form-control-static">
                        <label class="checkbox">
                            <div class="icheckbox_square-blue">
                                <input type="checkbox" id="check-blue" value="remember-me" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;">
                                <ins class="iCheck-helper" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
                            </div>Remember me</label>
                        <a id="forgetpw" href="#">forget your password?</a>
                    </div>
                    <div class="btn-block">
                        <button class="btn btn-lg btn-block btn-primary" type="submit">Sign in</button>
                        <button class="btn btn-lg btn-block btn-success" type="button">Sign up</button>
                    </div>
                </form>
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
                $(document).ready(function () {
                    $('#check-blue').on('ifChecked', function (event) {
                        $('#check-blue').iCheck('destory');
                        $(this).grumble({
                            text: 'SORRY, I CANNOT!',
                            angle: 295,
                            distance: 10,
                            showAfter: 100,
                            type: 'alt-',
                            hideAfter: 1100
                        });
                    });
                });
        </script>
    </body>
</html>

