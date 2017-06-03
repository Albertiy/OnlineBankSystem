<%-- 
    Document   : home
    Created on : 2017-5-30, 16:55:55
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
        <title>Home&middot;OnlineBankSystem</title>
        <link rel="icon" href="${pageContext.request.contextPath}/assets/img/OnlineBankICO.png">

        <!-- Styles -->
        <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/assets/css/unslider/unslider.css" rel="stylesheet">
    </head>
    <body>
        <!-- Navbar -->
        <jsp:include flush="true" page="header.jsp">
            <jsp:param name="nav" value="home.jsp"></jsp:param>
        </jsp:include>

        <!-- unslider -->
        <div class="banner">
            <ul>
                <li style="background-image: url('${pageContext.request.contextPath}/assets/img/sunset.jpg');">
                    <div class="inner">
                        <h1>Welcome to Online Bank</h1>
                        <p>
                            <a class="btn btn-lg btn-info" href="signup.jsp" role="button">SIGN UP NOW &raquo;</a>
                        </p>
                        <a href="#" class="unslider-arrow prev"><span class="icon-prev"></span>prev</a>
                        <a href="#" class="unslider-arrow next"><span class="icon-next"></span>next</a>
                    </div>
                </li>
                <li style="background-image: url('${pageContext.request.contextPath}/assets/img/wood.jpg');">
                    <div class="inner">
                        <h1>Welcome to Online Bank</h1>
                        <p>
                            <a class="btn btn-lg btn-info" href="signup.jsp" role="button">SIGN UP NOW &raquo;</a>
                        </p>
                        <a href="#" class="unslider-arrow prev"><span class="icon-prev"></span>prev</a>
                        <a href="#" class="unslider-arrow next"><span class="icon-next"></span>next</a>
                    </div>
                </li>
                <li style="background-image: url('${pageContext.request.contextPath}/assets/img/subway.jpg');">
                    <div class="inner">
                        <h1>Welcome to Online Bank</h1>
                        <p>
                            <a class="btn btn-lg btn-info" href="signup.jsp" role="button">SIGN UP NOW &raquo;</a>
                        </p>
                        <a href="#" class="unslider-arrow prev"><span class="icon-prev"></span>prev</a>
                        <a href="#" class="unslider-arrow next"><span class="icon-next"></span>next</a>
                    </div>
                </li>
            </ul>
        </div>

        <jsp:include flush="true" page="footer.jsp"></jsp:include>

            <!-- Script -->
            <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
            <script>window.jQuery || document.write('<script src="${pageContext.request.contextPath}/assets/js/jquery-3.2.1/jquery-3.2.1.min.js"><\/script>')</script>
        <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/unslider/unslider.min.js"></script>
        <script>
                $(document).ready(function () {
                    $("#typical").click(function () {
                        if ($('#top_navbar').hasClass('navbar-inverse'))
                            $('#top_navbar').removeClass('navbar-inverse');
                        if (!$('#top_navbar').hasClass('navbar-default'))
                            $('#top_navbar').addClass('navbar-default');
                        $('.footer').css("background-color", "#f5f5f5");
                    });
                    $("#night").click(function () {
                        if ($('#top_navbar').hasClass('navbar-default'))
                            $('#top_navbar').removeClass('navbar-default');
                        if (!$('#top_navbar').hasClass('navbar-inverse'))
                            $('#top_navbar').addClass('navbar-inverse');
                        $('.footer').css("background-color", "#111111");
                    });

                    $("#location").ready(function () {
                        var s = String(window.location);
                        var a = s.lastIndexOf("/");
                        var b = s.lastIndexOf(".");
                        var s1 = "#" + s.substr(a + 1, b - a - 1);
                        if (!$(s1).parent().hasClass("active"))
                        {
                            $(s1).parent().addClass("active");
                        }
                        //just for test
                        //$("#location").text(s1);
                    });

                    //幻灯片unslider插件
                    $(function () {
                        var unslider = $('.banner').unslider({
                            speed: 500, //  The speed to animate each slide (in milliseconds)
                            delay: 3000, //  The delay between slide animations (in milliseconds)
                            complete: function () {}, //  A function that gets called after every slide animation
                            keys: true, //  Enable keyboard (left, right) arrow shortcuts
                            dots: true, //  Display dot navigation
                            fluid: true //  Support responsive design. May break non-responsive designs
                        });

                        $('.unslider-arrow').click(function () {
                            var fn = this.className.split(' ')[1];
                            //  Either do unslider.data('unslider').next() or .prev() depending on the className
                            unslider.data('unslider')[fn]();
                        });
                    });
                });
        </script>
    </body>
</html>
