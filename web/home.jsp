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
        <link href="${pageContext.request.contextPath}/assets/css/carousel.css" rel="stylesheet">
    </head>
    <body>
        <!-- Navbar -->
        <jsp:include flush="true" page="header.jsp">
            <jsp:param name="nav" value="home.jsp"></jsp:param>
        </jsp:include>

                <!-- 滚动图片 -->
        <div class="carousel slide" id="carousel_1">
            <ol class="carousel-indicators">
                <li class="active" data-slide-to="0" data-target="#carousel_1"></li>
                <li data-slide-to="1" data-target="#carousel_1"></li>
                <li data-slide-to="2" data-target="carousel_1"></li>
            </ol>
            <div class="carousel-inner">
                <div class="item active">
                    <img alt="Sorry, this picture cannot be loaded." src="${pageContext.request.contextPath}/assets/img/default.jpg"/>
                    <div class="carousel-caption">
                        <h1>Welcome to Online Bank</h1>
                        <p>
                            <a class="btn btn-lg btn-info" href="signup.jsp" role="button">SIGN UP NOW &raquo;</a>
                        </p>
                    </div>
                </div>
                <div class="item">
                    <img alt="Sorry, this picture cannot be loaded." src="${pageContext.request.contextPath}/assets/img/default1.png" />
                    <div class="carousel-caption">
                        <h4>Second Thumbnail label</h4>
                        <p>这是第二张图片</p>
                    </div>
                </div>
                <div class="item">
                    <img alt="Sorry, this picture cannot be loaded." src="${pageContext.request.contextPath}/assets/img/default2.png" />
                    <div class="carousel-caption">
                    <h4>Third Thumbnail label</h4>
                    <p>这是第三张图片</p>
                </div>
            </div>
	</div>
            <a class="left carousel-control" href="#carousel_1" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span></a>
            <a class="right carousel-control" href="#carousel_1" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span></a>
    </div>
    
    <!--
    <div class="container">        
        <div class="jumbotron">
            <h1>Welcome to Online Bank</h1>
            <p>
                <a class="btn btn-lg btn-info" href="signup.jsp" role="button">SIGN UP NOW &raquo;</a>
            </p>
            <p id="location">Hi!</p>
        </div>
    </div> <!-- /container -->

    <jsp:include flush="true" page="footer.jsp"></jsp:include>
    
        <!-- Script -->
        <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="${pageContext.request.contextPath}/assets/js/jquery-3.2.1/jquery-3.2.1.min.js"><\/script>')</script>
        <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
        <script type="text/javascript">
            $("#location").function() {
                    $this.text(String(window.location));
            }
            $(".nav navbar_nav a").each(function(){
                $this = $(this); 
                if($this[0].href===String(window.location)){ 
                    
                    $this.parent().addClass("active");  
                }
            }); 
        </script>
    </body>
</html>
