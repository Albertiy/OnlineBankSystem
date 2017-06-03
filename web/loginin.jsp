<%-- 
    Document   : loginin
    Created on : 2017-5-30, 15:29:14
    Author     : YAN YUE
--%>

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
    <body style="background-image:${pageContext.request.contextPath}/img/background.jpg">
        <jsp:include flush="true" page="header.jsp"></jsp:include>
        <div class="container">
            <form class="form-signin">
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
            <p id="location">Hi!</p>
        </div> <!-- /container -->
        
        <!-- Footer -->
        <jsp:include flush="true" page="footer.jsp"></jsp:include>
        
        <!-- Scripts -->
        <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="${pageContext.request.contextPath}/assets/js/jquery-3.2.1/jquery-3.2.1.min.js"><\/script>')</script>
        <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/icheck/icheck.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/grumble/jquery.grumble.min.js"></script>
        <script>
            //document.load();
            //function check_blue(){$('#check-blue').iCheck('check');}
            $(document).ready(function(){
                $("#typical").click(function(){
                    if($('#top_navbar').hasClass('navbar-inverse'))
                        $('#top_navbar').removeClass('navbar-inverse');
                    if(!$('#top_navbar').hasClass('navbar-default'))
                        $('#top_navbar').addClass('navbar-default');
                    $('.footer').css("background-color","#f5f5f5");
                });
                $("#night").click(function(){
                    if($('#top_navbar').hasClass('navbar-default'))
                        $('#top_navbar').removeClass('navbar-default');
                    if(!$('#top_navbar').hasClass('navbar-inverse'))
                        $('#top_navbar').addClass('navbar-inverse');
                    $('.footer').css("background-color","#111111");
                });
                
                $("#location").ready(function() {
                    var s=String(window.location);
                    var a=s.lastIndexOf("/");
                    var b=s.lastIndexOf(".");
                    var s1="#"+s.substr(a+1,b-a-1);
                    if(!$(s1).parent().hasClass("active"))
                    {
                        $(s1).parent().addClass("active");
                    }                    
                    //just for test
                    //$("#location").text(s1);
                });
                
                $('#check-blue').on('ifChecked', function(event){
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
                $("#forgetpw").click(function(e){
                    e.preventDefault();
                    var $me = $(this),interval;
                    $me.grumble(
                    {
                        text: 'Contact our support', 
                        angle: 75, 
                        distance: 100, 
                        showAfter: 200,
                        type: 'alt-',
                        hideAfter: false,
                        //hasHideButton: true
                        hideOnClick: true
                        //转动效果看这里
			/*onShow: function(){
				var angle = 45, dir = 1;
				interval = setInterval(function(){
					(angle > 135 ? (dir=-1, angle--) : ( angle < 45 ? (dir=1, angle++) : angle+=dir));
					$me.grumble('adjust',{angle: angle});
				},25);
			},
			onHide: function(){
				clearInterval(interval);
			}*/
                    });
                });
            });
        </script>
    </body>
</html>
