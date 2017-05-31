<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Header&middot;OnlineBankSystem</title>
        <link rel="icon" href="${pageContext.request.contextPath}/assets/img/OnlineBankICO.png">
        <!-- Styles -->
        <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/assets/css/nav-header" rel="stylesheet">
    </head>
    <body>
        <!-- Navbar -->
        <nav class="navbar navbar-inverse  navbar-fixed-top"><!-- 白色导航条是 navbar-default navbar-fixed-top让导航条固定在顶部，static-top为默认-->
        <div class="container">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Online Bank</a>
          </div>
          <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
              <li><a href="home.jsp">Home</a></li>
              <li><a href="about.jsp">About</a></li>
              <li><a href="contact.jsp">Contact</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="loginin.jsp">Login In/Sign Up</a></li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Style<span class="caret"></span></a>
                  <ul class="dropdown-menu">
                    <li><a href="#">Typical</a></li>
                    <li><a href="#">Night</a></li>
                  </ul>
                </li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </nav>
        <!-- Script -->
        <%-- 
            String s = pageContext.getRequest().getParameter("nav");
        --%>
    </body>
</html>
