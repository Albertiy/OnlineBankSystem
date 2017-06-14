<%-- 
    Document   : loginin
    Created on : 2017-5-30, 15:29:14
    Author     : YAN YUE
--%>
<%@page import="java.net.URLDecoder"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
    String password = "";
    String name = "";
    String checked = "";
    Cookie[] cookies = request.getCookies();        //取出cookie对象组  
    for (int i = 0; cookies != null && i < cookies.length; i++) {
        Cookie cookie = cookies[i];       //  取出其中的一个对象，含有name ,value  
        if (cookie != null && "name".equals(cookie.getName())) {      //获取第一个cookie对象的name  
            name = URLDecoder.decode(cookie.getValue(), "UTF-8");//进行解码  
            checked = "checked";
        }
        if (cookie != null && "password".equals(cookie.getName())) {
            password = cookie.getValue();
        }
    }
%>  
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
        <link href="${pageContext.request.contextPath}/assets/css/custom/loginin.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/assets/css/icheck/blue.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/assets/css/grumble/grumble.min.css" rel="stylesheet">
    </head>
    <body style="background-image: url(${pageContext.request.contextPath}/assets/img/bg1.jpg);background-repeat: repeat">
        <jsp:include flush="true" page="header.jsp"></jsp:include>
            <div class="container">
                    <form class="form-signin" action="/OnlineBankSystem/LoginServlet" method="post">
                        <!-这里是用post的方式进行提交的，然后提交到LoginServlet进行操作->
                        <h2 class="form-signin-heading">Please sign in</h2>
                        <div>
                            <label for="inputCustomerID" class="sr-only">Customer Id</label>
                            <input name="name" value="<%=name%>"  type="text" id="inputCustomerID" class="form-control" placeholder="Customer Id" required autofocus><font color="red" >${requestScope.errors.name}</font>
                    </div>
                    <div>
                        <label for="inputPassword" class="sr-only">Password</label>
                        <input name="password" value="<%=password%>" type="password" id="inputPassword" class="form-control" placeholder="Password" required>${requestScope.errors.password}</font>
                    </div>

                    <font color="red" >${requestScope.error}</font>

                    <div class="form-control-static">
                        <label class="checkbox" style="font-size:medium; color: #fff">
                            <div class="icheckbox_square-blue">

                                <input name="remember" type="checkbox"  id="check-blue" value="yes" <%=checked%> style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;">

                                <ins class="iCheck-helper" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
                            </div> Remember me</label>
                        <a id="forgetpw" class=" text-primary" style="font-size:medium;" href="#">forget your password?</a>
                    </div>
                    <div class="btn-block">
                        <button class="btn btn-lg btn-block btn-primary" type="submit">Sign in</button>
                        <button class="btn btn-lg btn-block btn-success" type="button" onclick="window.location.href = 'signup.jsp'">Sign up</button>
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
//                        $(this).grumble({
//                            text: 'SORRY, I CANNOT!',
//                            angle: 295,
//                            distance: 10,
//                            showAfter: 100,
//                            type: 'alt-',
//                            hideAfter: 1100
//                        });
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
