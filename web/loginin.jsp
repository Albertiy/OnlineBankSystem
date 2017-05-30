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
        <title>Login in &middot;OnlineBankSystem</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="${pageContext.request.contextPath}/assets/img/OnlineBankICO.png">
        <!-- Le styles -->
    <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/loginin.css" rel="stylesheet">
    <!--旧的定制化样式表
    <style type="text/css">
      body {
        padding-top: 40px;
        padding-bottom: 40px;
        background-color: #f5f5f5;
      }

      .form-signin {
        max-width: 300px;
        padding: 19px 29px 29px;
        margin: 0 auto 20px;
        background-color: #fff;
        border: 1px solid #e5e5e5;
        -webkit-border-radius: 5px;
           -moz-border-radius: 5px;
                border-radius: 5px;
        -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.05);
           -moz-box-shadow: 0 1px 2px rgba(0,0,0,.05);
                box-shadow: 0 1px 2px rgba(0,0,0,.05);
      }
      .form-signin .form-signin-heading,
      .form-signin .checkbox {
        margin-bottom: 10px;
      }
      .form-signin input[type="text"],
      .form-signin input[type="password"] {
        font-size: 16px;
        height: auto;
        margin-bottom: 15px;
        padding: 7px 9px;
      }

    </style>-->
    </head>
    <body>
        <div class="container">
            <form class="form-signin">
                <h2 class="form-signin-heading">Please login in</h2>
                <label for="inputCustomerID" class="sr-only">Customer Id</label>
                <input type="text" id="inputCustomerID" class="form-control" placeholder="Customer Id" required autofocus>
                <label for="inputPassword" class="sr-only">Password</label>
                <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
                <label class="checkbox">
                  <input type="checkbox" value="remember-me"> Remember me
                </label>
                <button class="btn btn-block btn-lg btn-primary" type="submit">Sign in</button>
            </form>
        </div> <!-- /container -->
        
        <script src="${pageContext.request.contextPath}/assets/js/jquery.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
    </body>
</html>
