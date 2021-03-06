<%@page import="cn.niit.domain.Loan"%>
<%--@ include file="testsession.jsp"--%>
<%
    /* 判断是否有state为3的loan行数据，若有则执行else */
    LoanDao ld = new LoanDaoImpl();
    Account a = (Account) request.getSession().getAttribute("account");
    Loan loansession = ld.findLoanById(a.getAccount_id());
    request.getSession().setAttribute("loan", loansession);
    if (session.getAttribute("loan") == null) {%>

<%--@page import="javax.enterprise.context.SessionScoped"程序包已过时--%>
<%@page import="cn.niit.domain.InterestRate"%>
<%@page import="java.util.List"%>
<%@page import="cn.niit.dao.impl.LoanDaoImpl"%>
<%@page import="cn.niit.dao.LoanDao"%>
<%@page import="cn.niit.domain.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    response.setHeader("Cache-Control", "no-store");//HTTP1.1
    response.setHeader("Pragma", "no-cache");//HTTP1.0
    response.setDateHeader("Expires", 0);//禁止在服务器中缓存
%>

<%
    List<InterestRate> list = ld.getAllInterestRates();
    InterestRate educationRate = list.get(0);
    InterestRate carRate = list.get(1);
    InterestRate houseRate = list.get(2);
    InterestRate personalRate = list.get(3);


%>
<!-- Styles -->
<link href="${pageContext.request.contextPath}/assets/css/custom/loan.css" rel="stylesheet">
<legend><h1>Loan</h1></legend>
<div class="row">
    <div class="col-lg-3 col-md-4 col-sm-6 col-xs-6">
        <button id="eduLoan" class="btn btn-primary placeholder" data-toggle="modal" data-target="#myModal">
            <span style="font-size:xx-large" class="glyphicon glyphicon-yen"></span>
            <h3><%=educationRate.getInterest_name()%></h3>
            <h4>Details:</h4>
            <span class="text-left">
                <ul>
                    <li>Interest Rate: <%=educationRate.getInterest_rate()%></li>
                    <li>Loan months:<%=educationRate.getMonth()%></li>
                    <li> <%=educationRate.getDescription()%></li>
                </ul>
            </span>
        </button>
    </div>
    <div class="col-lg-3 col-md-4 col-sm-6 col-xs-6">
        <button id="carLoan" class="btn btn-success placeholder" data-toggle="modal" data-target="#myModal">
            <span style="font-size:xx-large" class="glyphicon glyphicon-yen"></span>
            <h3><%=carRate.getInterest_name()%></h3>
            <h4>Details:</h4>
            <span class="text-left">
                <ul>
                    <li>Interest Rate: <%=carRate.getInterest_rate()%></li>
                    <li>Loan months:<%=carRate.getMonth()%></li>
                    <li> <%=carRate.getDescription()%></li>
                </ul>
            </span>
        </button>
    </div>
    <div class="col-lg-3 col-md-4 col-sm-6 col-xs-6">
        <button id="houseLoan" class="btn btn-primary placeholder" data-toggle="modal" data-target="#myModal">
            <span style="font-size:xx-large" class="glyphicon glyphicon-yen"></span>
            <h3><%=houseRate.getInterest_name()%></h3>
            <h4>Details:</h4>
            <span class="text-left">
                <ul>
                    <li>Interest Rate: <%=houseRate.getInterest_rate()%></li>
                    <li>Loan months:<%=houseRate.getMonth()%></li>
                    <li> <%=houseRate.getDescription()%></li>
                </ul>
            </span>
        </button>
    </div>
    <div class="col-lg-3 col-md-4 col-sm-6 col-xs-6">
        <button id="personalLoan" class="btn btn-success placeholder" data-toggle="modal" data-target="#myModal">
            <span style="font-size:xx-large" class="glyphicon glyphicon-yen"></span>
            <h3><%=personalRate.getInterest_name()%></h3>
            <h4>Details:</h4>
            <span class="text-left">
                <ul>
                    <li>Interest Rate: <%=personalRate.getInterest_rate()%></li>
                    <li>Loan months:<%=personalRate.getMonth()%></li>
                    <li> <%=personalRate.getDescription()%></li>
                </ul>
            </span>
        </button>
    </div>
</div>
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Fill table to loan!</h4>
            </div>
            <form id="formLoan" class="center-block" action="/OnlineBankSystem/LoanServlet" method="post">
                <div class="modal-body center-block">
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
                            <input name="loan_name" id="inputLoanName" type="text" placeholder="Loan Name" class="form-control" readonly>
                        </div>
                    </div>
                    <br>
                    <div class="controls">
                        <div class="input-group">
                            <span class="input-group-addon" style="font-weight: bold"> Interest Rate&nbsp;</span>
                            <input name="interest_rate" id="inputInterestRate" type="text" placeholder="Interest Rate" class="form-control" readonly>
                        </div>
                    </div>
                    <br>
                    <div class="controls">
                        <div class="input-group">
                            <span class="input-group-addon" style="font-weight: bold"> During Month</span>
                            <input name="during_month" id="inputDuringMonth" type="number" placeholder=" During Month" class="form-control" readonly>
                        </div>
                    </div>
                    <br>
                    <div class="controls">
                        <div class="input-group">
                            <span class="input-group-addon" style="font-weight: bold">Loan Amount</span>
                            <select name="loan_amount" id="selectLoanAmount" t placeholder=" Loan Amount" class="form-control" required="true">
                                <option value="1000">1000￥</option>
                                <option value="5000">5000￥</option>
                                <option value="10000">10000￥</option>
                            </select>
                        </div>
                    </div>
                    <br>
                    <!-- 开始时间与结束时间由提交的Servlet生成 -->
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Back</button>
                    <input type="submit" class="btn btn-success" value="Submit"/>
                </div>
            </form>
        </div>
    </div>
</div>
<script>
    $("#eduLoan").click(function () {
        $("#inputLoanName").val("<%=educationRate.getInterest_name()%>");
        $("#inputInterestRate").val("<%=educationRate.getInterest_rate()%>");
        $("#inputDuringMonth").val("<%=educationRate.getMonth()%>");
    });
    $("#carLoan").click(function () {
        $("#inputLoanName").val("<%=carRate.getInterest_name()%>");
        $("#inputInterestRate").val("<%=carRate.getInterest_rate()%>");
        $("#inputDuringMonth").val("<%=carRate.getMonth()%>");
    });
    $("#houseLoan").click(function () {
        $("#inputLoanName").val("<%=houseRate.getInterest_name()%>");
        $("#inputInterestRate").val("<%=houseRate.getInterest_rate()%>");
        $("#inputDuringMonth").val("<%=houseRate.getMonth()%>");
    });
    $("#personalLoan").click(function () {
        $("#inputLoanName").val("<%=personalRate.getInterest_name()%>");
        $("#inputInterestRate").val("<%=personalRate.getInterest_rate()%>");
        $("#inputDuringMonth").val("<%=personalRate.getMonth()%>");
    });
</script>
<%} else {%>
<jsp:include flush="true" page="loan_record_ajax.jsp"></jsp:include>
<%}%>