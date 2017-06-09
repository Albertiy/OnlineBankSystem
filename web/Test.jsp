<%-- 
    Document   : Test
    Created on : 2017-6-5, 15:38:32
    Author     : BearK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include flush="true" page="header.jsp"></jsp:include>

        

        <jsp:include flush="true" page="footer.jsp"></jsp:include>

            <!-- Script -->
            <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
            <script>window.jQuery || document.write('<script src="${pageContext.request.contextPath}/assets/js/jquery-3.2.1/jquery-3.2.1.min.js"><\/script>')</script>
        <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/unslider/unslider.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/custom/header.js"></script>
        <script>
                $(document).ready(function () {
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
