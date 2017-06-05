<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login In &middot;OnlineBankSystem</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="${pageContext.request.contextPath}/assets/img/OnlineBankICO.png">
        <!-- Le styles -->
        <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/assets/css/loginin.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/assets/css/icheck/blue.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/assets/css/grumble/grumble.min.css" rel="stylesheet">
    </head>
    <body style="background-image: url(${pageContext.request.contextPath}/assets/img/background.jpg);background-repeat: repeat">
        <jsp:include flush="true" page="header_customer.jsp"></jsp:include>
        <div class="container">
            <form class="form-">
                <h2 class="form-signin-heading">Please sign in</h2>
                <label for="inputCustomerID" class="sr-only">Customer Id</label>
                <input type="text" id="inputCustomerID" class="form-control" placeholder="Customer Id" required autofocus>
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
                //document.load();
                //function check_blue(){$('#check-blue').iCheck('check');}
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
                    $('#check-blue').iCheck({
                        checkboxClass: 'icheckbox_square-blue',
                        increaseArea: '20%',
                        labelHover: false,
                        cursor: true
                    });
                    //$("#forgetpw").addClass("grumble-button");
                    $("#forgetpw").click(function (e) {
                        e.preventDefault();
                        var $me = $(this), interval;
                        $me.grumble({
                                    text: 'Contact our support',
                                    angle: 75,
                                    distance: 100,
                                    showAfter: 200,
                                    type: 'alt-',
                                    hideAfter: false,
                                    //hasHideButton: true
                                    hideOnClick: true
                                });
                    });
                });
        </script>
    </body>
</html>
