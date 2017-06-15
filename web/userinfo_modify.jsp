<%@ include file="testsession.jsp"%><!--%@ include file="testsession.jsp"%-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modify Info &middot;OnlineBankSystem</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="${pageContext.request.contextPath}/assets/img/OnlineBankICO.png">
        <!-- Le styles -->
        <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/assets/css/custom/message.css" rel="stylesheet">
    </head>
    <body style="background-image: url(./assets/img/bg2.jpg)">
        <jsp:include flush="true" page="header_customer.jsp"></jsp:include>

            <!-- Main Content -->
            <div class="container">
                <div class="main" style="align-content:center">
                    <legend><h1 style="text-align: left">Modify Info</h1></legend>

                    <!-- Core Code -->
                    <div class="center-block" style="max-width: 350px">
                        <form action="/OnlineBankSystem/UserInfoModifyServlet" method="post">
                            <div class="input-group ">
                                <div class="input-group-addon">
                                    <span class="glyphicon glyphicon-list-alt"></span>
                                </div>
                                <input class="form-control" type="text" name="login_id" readonly="readonly" value="${sessionScope.user.login_id}">
                            </div>
                            <br>
                            <div class="input-group ">
                                <div class="input-group-addon">
                                    <span class="glyphicon glyphicon-user"></span>
                                </div>
                                <input class="form-control" type="text" name="name" id="inputName" minlength="2" maxlength="32"
                                       placeholder="Real Name" required="required" value="${sessionScope.user.name}">
                            </div>

                            <div class="input-group ">
                                <div class="input-group-addon">
                                    <span class="glyphicon glyphicon-home"></span>
                                </div>
                                <input class="form-control" type="text" name="address" id="inputTelNum" maxlength="256"
                                       placeholder="tel number" required="required" value="${sessionScope.user.address}">
                            </div>

                            <div class="input-group ">
                                <div class="input-group-addon">
                                    <span class="glyphicon glyphicon-envelope"></span>
                                </div>
                                <input class="form-control" type="email" name="email" id="inputEmail" maxlength="32"
                                       placeholder="email@sample.com" value="${sessionScope.user.email}">
                            </div>

                            <div class="input-group ">
                                <div class="input-group-addon">
                                    <span class="glyphicon glyphicon-earphone"></span>
                                </div>
                                <input class="form-control" id="inputTelNum" name="contact_no" type="tel" minlength="8" maxlength="13" pattern="[0-9]*"
                                       placeholder="tel number" required="required" value="${sessionScope.user.contact_no}">
                            </div>
                            <br>
                            <div class="controls" style="text-align: right">
                                <a class="btn btn-warning btn-lg" role="button" href="userinfo.jsp">Cancel</a>
                                <button class="btn btn-success btn-lg" type="submit">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div> <!-- /container -->

        <!-- Footer -->
    <jsp:include flush="true" page="footer.jsp"></jsp:include>

        <!-- Scripts -->
        <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="${pageContext.request.contextPath}/assets/js/jquery-3.2.1/jquery-3.2.1.min.js"><\/script>')</script>
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/custom/header.js"></script>
    <script>
            $(document).ready(function () {

            });
    </script>
</body>
</html>

