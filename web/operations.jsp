<%-- 
    Document   : Operation
    Created on : 2017-6-9, 13:19:12
    Author     : YAN YUE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Operation &middot;OnlineBankSystem</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="${pageContext.request.contextPath}/assets/img/OnlineBankICO.png">
        <!-- Le styles -->
        <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/assets/css/custom/operation.css" rel="stylesheet">

    </head>
    <body style="background-image: url(${pageContext.request.contextPath}/assets/img/bg1.jpg);background-repeat: repeat">
        <jsp:include flush="true" page="header_customer.jsp"></jsp:include>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-3 col-md-2 sidebar affix">
                        <nav>
                            <h3>Operation</h3>
                            <ul class="nav nav-sidebar">
                                <li class="active"><a href="#"> Account Details <span class="sr-only">(current)</span></a></li>
                                <li><a href="#"> Transaction </a></li>
                                <li><a href="#"> Loans </a></li>
                                <li><a href="#"> Record </a></li>
                                <legend></legend>
                                <li><a class="back-to-top" href="#top">Return to Page Top</a></li>
                            </ul>
                        </nav>
                    </div>
                    <div class="col-sm-8 col-sm-offset-4 col-md-9 col-md-offset-3 main">
                        <h1 class="page-header">Operation Info</h1>
                        <h2 class="sub-header">Section title</h2>
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Header</th>
                                        <th>Header</th>
                                        <th>Header</th>
                                        <th>Header</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1,001</td>
                                        <td>Lorem</td>
                                        <td>ipsum</td>
                                        <td>dolor</td>
                                        <td>sit</td>
                                    </tr>
                                    <tr>
                                        <td>1,002</td>
                                        <td>amet</td>
                                        <td>consectetur</td>
                                        <td>adipiscing</td>
                                        <td>elit</td>
                                    </tr>
                                    <tr>
                                        <td>1,003</td>
                                        <td>Integer</td>
                                        <td>nec</td>
                                        <td>odio</td>
                                        <td>Praesent</td>
                                    </tr>
                                    <tr>
                                        <td>1,003</td>
                                        <td>libero</td>
                                        <td>Sed</td>
                                        <td>cursus</td>
                                        <td>ante</td>
                                    </tr>
                                    <tr>
                                        <td>1,004</td>
                                        <td>dapibus</td>
                                        <td>diam</td>
                                        <td>Sed</td>
                                        <td>nisi</td>
                                    </tr>
                                    <tr>
                                        <td>1,005</td>
                                        <td>Nulla</td>
                                        <td>quis</td>
                                        <td>sem</td>
                                        <td>at</td>
                                    </tr>
                                    <tr>
                                        <td>1,008</td>
                                        <td>Fusce</td>
                                        <td>nec</td>
                                        <td>tellus</td>
                                        <td>sed</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div><!-- Container -->

            <!-- Footer -->
        <jsp:include flush="true" page="footer.jsp"></jsp:include>

            <!-- Scripts -->
            <script src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
            <script>window.jQuery || document.write('<script src="${pageContext.request.contextPath}/assets/js/jquery-3.2.1/jquery-3.2.1.min.js"><\/script>')</script>
        <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/custom/header.js"></script>
        <script src="${pageContext.request.contextPath}/assets/js/jquery.pin.js"></script>
        <script>
            $(document).ready(function(){
                $(".pinned").pin({containerSelector: ".container", minWidth: 940});
            });
        </script>
    </body>
</html>

