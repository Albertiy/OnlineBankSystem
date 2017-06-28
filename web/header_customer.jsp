<%@page import="cn.niit.domain.Account"%>
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
        <link href="${pageContext.request.contextPath}/assets/css/navbar-header.css" rel="stylesheet">


    </head>
    <body>
        <!-- Navbar -->
        <nav id="top_navbar" class="navbar navbar-inverse  navbar-fixed-top"><!-- 白色导航条是 navbar-default navbar-fixed-top让导航条固定在顶部，static-top为默认-->
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand">Online Bank</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a id="home" href="home.jsp">Home</a></li>
                        <li><a id="about" href="about.jsp">About</a></li>
                        <li><a id="contact" href="contact.jsp">Contact</a></li>
                        <li><a id="operations" class="dropdown-toggle" data-toggle="dropdown" href="operations.jsp"> Operation <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a onclick="account_info()" href="#"> Account Info <span class="sr-only">(current)</span></a></li>
                                <% Account a= (Account)request.getSession().getAttribute("account");
                                if(a.getAccount_type()){%>
                                    <li><a onclick="transaction()" href="#"> Transaction </a></li>
                                    <li><a onclick="loans()" href="#"> Loans </a></li>
                                    <li><a onclick="record()" href="#"> Record </a></li>
                                <%}%>
                                    <legend></legend>
                                    <li><a class="back-to-top" href="#top">Return Top</a></li>
                                </ul>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <div class="btn-group navbar-btn navbar-left">
                            <a class="btn btn-warning" href="#"><i class="icon-user icon-white"></i> ${sessionScope.user.name}</a>
                            <a class="btn btn-warning dropdown-toggle" data-toggle="dropdown" href="#"><span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="userinfo.jsp"><i class="icon-pencil"></i> User Info</a></li>
                                <li><a href="userinfo_changepw.jsp"><i class="icon-trash"></i> Change Password</a></li>
                                <!--<li><a href="#"><i class="icon-ban-circle"></i> Loan</a></li>-->
                                <li class="divider"></li>
                                <li><a href="/OnlineBankSystem/LogoutServlet"><i class="i"></i> Sign out</a></li>
                            </ul>
                        </div>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Style<span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a id="typical" href="#">Typical</a></li>
                                <li><a id="night" href="#">Night</a></li>
                            </ul>
                        </li>
                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </nav>
        <!-- No Script -->
    </body>
</html>
