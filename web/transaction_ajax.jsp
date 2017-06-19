<%-- 
    Document   : Transaction
    Created on : Jun 9, 2017, 2:42:40 PM
    Author     : Damon
--%>
<%--<%@ include file="testsession.jsp"%>--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    response.setHeader("Cache-Control", "no-store");//HTTP1.1
    response.setHeader("Pragma", "no-cache");//HTTP1.0
    response.setDateHeader("Expires", 0);//禁止在服务器中缓存
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Le styles -->
<link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet">
<!--link href="${pageContext.request.contextPath}/assets/css/custom/loginin.css" rel="stylesheet"-->

<!-- 不可编辑 -->
<legend class=""><h1 style="text-align: left">Transaction</h1></legend>
<form id="formSignUp" class="form-signin" action="/OnlineBankSystem/TransactionServlet" method="post">
    <div class=" center-block" style="max-width: 320px; padding: 10px">
        <div class="controls">
            <label for="inputCustomerID" class="control-label">Transfer Id</label>
            <input name="transfer_id" minlength="18" maxlength="18" type="text" id="inputTransferID" class="form-control input-lg" placeholder="The Account ID is 18 num" required autofocus>
            <font color="red" >${requestScope.error}</font>
        </div>

        <div class="controls">
            <label class="control-label" for="inputTargetName">Remittee</label>
            <input name="target_name" id="inputTargetName" type="text" placeholder="Remittee" class="form-control input-lg" required="required">
        </div>

        <div class="controls">
            <label class="form-control-static" for="inputAmount">Amount</label>
            <input name="transfer_amount"id="inputAmount" placeholder="Amount you want to transfer" type="number" pattern="[0-9]\d{1,}" min="1" max="${sessionScope.account.balance}" class="form-control input-lg" required="required">
        </div>
        <br>
        <div class="controls" style="text-align: right">
            <button class="btn btn-success btn-lg" type="submit">Submit</button>
        </div>
    </div>
</form>
