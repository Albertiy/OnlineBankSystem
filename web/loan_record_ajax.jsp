<%@ include file="testsession.jsp"%><%@page import="cn.niit.domain.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    response.setHeader("Cache-Control", "no-store");//HTTP1.1
    response.setHeader("Pragma", "no-cache");//HTTP1.0
    response.setDateHeader("Expires", 0);//禁止在服务器中缓存
%>
<!-- Styles -->
<link href="${pageContext.request.contextPath}/assets/css/custom/loan.css" rel="stylesheet">
<legend><h1>Loan Record</h1></legend>
<div class="center-block" style="max-width: 350px">
    <div class="controls">
        <div class="input-group">
            <span class="input-group-addon" style="font-weight: bold"> Account&nbsp;&nbsp; ID&nbsp;&nbsp;</span>
            <input name="account_id" id="inputAccountId" minlength="6" size="16" type="text" class="form-control" placeholder="Account ID" value="${sessionScope.account.account_id}" required readonly>
        </div>
    </div>
    <br>
    <div class="controls">
        <div class="input-group">
            <span class="input-group-addon" style="font-weight: bold"> Loan&nbsp;&nbsp; Name&nbsp;&nbsp;</span>
            <input name="loan_name" id="inputLoanName" type="text" placeholder="Loan Name"
                   class="form-control" value="${sessionScope.loan.Loan_name}" readonly>
        </div>
    </div>
    <br>
    <div class="controls">
        <div class="input-group">
            <span class="input-group-addon" style="font-weight: bold"> Interest Rate&nbsp;</span>
            <input name="interest_rate" id="inputInterestRate" type="text" placeholder="Interest Rate"
                   class="form-control" value="${sessionScope.loan.Interest_Rate}" readonly>
        </div>
    </div>
    <br>
    <div class="controls">
        <div class="input-group">
            <span class="input-group-addon" style="font-weight: bold"> Start Date</span>
            <input name="start_date" id="inputStartDate" type="text" placeholder=" Start Date"
                   class="form-control" value="${sessionScope.loan.Start_Date}" readonly>
        </div>
    </div>
    <br>
    <div class="controls">
        <div class="input-group">
            <span class="input-group-addon" style="font-weight: bold"> Due Date</span>
            <input name="due_date" id="inputDueDate" type="text" placeholder=" Due Date"
                   class="form-control" value="${sessionScope.loan.Due_Date}" readonly>
        </div>
    </div>
    <br>
    <div class="controls">
        <div class="input-group">
            <span class="input-group-addon" style="font-weight: bold">Loan Amount</span>
            <input name="loan_amount" id="inputLoanAmount" t placeholder=" Loan Amount"
                   class="form-control" required="true" value="${sessionScope.loan.Amount}" readonly>
        </div>
    </div>
    <br>
    <div class="controls">
        <div class="input-group">
            <span class="input-group-addon" style="font-weight: bold"> State</span>
            <input name="state" id="inputState" type="text" placeholder=" State"
                   class="form-control" value="${sessionScope.loan.state}" readonly>
        </div>
    </div>
    <br>
</div>