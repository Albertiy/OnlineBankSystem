<%-- 
    Document   : testsession
    Created on : Jun 13, 2017, 4:06:00 PM
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
        <%

            if (session.getAttribute("user") == null) {%>
        <h1>未登录！</h1>
        3秒后跳转到登录页面
        <p>
            如果没有跳转，请点<a href="loginin.jsp">这里</a></p>
            <%
                    response.setHeader("refresh", "3;URL=loginin.jsp");
                    return;
                }
            %>
    </body>
</html>
