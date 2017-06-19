<%-- 
    Document   : Operation
    Created on : 2017-6-9, 13:19:12
    Author     : YAN YUE
--%>
<%@ include file="testsession.jsp"%>
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
        <link href="${pageContext.request.contextPath}/assets/css/custom/operations.css" rel="stylesheet">

    </head>
    <body style="background-color: #f5f5f5">
        <jsp:include flush="true" page="header_customer.jsp"></jsp:include>
        <div class=" container-fluid" style="min-height:100%">
                <div class="row" style="min-height:100%">
                    <div id="sidebar" class="col-sm-3 col-md-2 affix" style=" background-color: #f5f5f5;height: 100%">
                        <nav>
                            <h3>&nbsp;</h3>
                            <ul class="nav nav-sidebar">
                                <li class="active"><a onclick="account_info()" href="#"> Account Info <span class="sr-only">(current)</span></a></li>
                                <li><a onclick="transaction()" href="#"> Transaction </a></li>
                                <li><a href="#"> Loans </a></li>
                                <li><a href="#"> Record </a></li>
                                <legend></legend>
                                <li><a class="back-to-top" href="#top">Return Top</a></li>
                            </ul>
                        </nav>
                    </div>
                    <!-- AJAX -->
                    <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main" id="divAjax" style=" background-color: #f5f5f5;height: 100%">
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
            //AJAX
            var xmlhttp;
            
            //账户初始页面
            function init_page(){
                //兼容性写法创建请求实例,IE5 6支持else里面的方法
                if (window.XMLHttpRequest) { xmlhttp = new XMLHttpRequest();
            } else {xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");}
                //设置传送方式,地址,以及同步还是异步
                var initpage;
                var requestpage = null;
                if(requestpage===null){
                    initpage="account_info_ajax.jsp";}
                else{
                    initpage = requestpage;}
                xmlhttp.open("GET",initpage,true);
                //状态改变的时候执行这个函数,用来判断是否请求完毕
                xmlhttp.onreadystatechange = callback;
                //请求服务器,如果使用post方式,则send里面要带上传递的参数
                xmlhttp.send();
            }
            
            //账户信息页面
            function account_info(){
                if (window.XMLHttpRequest) { xmlhttp = new XMLHttpRequest();
            } else {xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");}
                xmlhttp.open("GET","account_info_ajax.jsp",true);
                xmlhttp.onreadystatechange = callback;
                xmlhttp.send();
            }
            
            //账户密码修改页面
            function account_changepw(){
                if (window.XMLHttpRequest) { xmlhttp = new XMLHttpRequest();
            } else {xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");}
                xmlhttp.open("GET","account_changepw_ajax.jsp",true);
                xmlhttp.onreadystatechange = callback;
                xmlhttp.send();
            }
            
            //转账页面
            function transaction(){
                if (window.XMLHttpRequest) { xmlhttp = new XMLHttpRequest();
            } else {xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");}
                xmlhttp.open("GET","transaction_ajax.jsp",true);
                xmlhttp.onreadystatechange = callback;
                xmlhttp.send();
            }

            function callback(){
                if(xmlhttp.readyState ===4 && xmlhttp.status===200){
                    var divid = $("#divAjax");
                    divid.html(xmlhttp.responseText);
                    //这里直接判断不为空,应该根据数据库返回值来进行不同的显示
                    /*if (xmlhttp.responseText){
                        alert("跳转成功！");
                    }else{
                        alert("跳转失败！");
                    }*/
                }
            }
            $(document).ready(function(){
                init_page();
                if(!$("#operations").hasClass("active")){
                    $("#operations").addClass("active");
                }
            });
        </script>
    </body>
</html>

