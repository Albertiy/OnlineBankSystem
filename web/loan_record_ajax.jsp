<%--@ include file="testsession.jsp"--%><%@page import="cn.niit.domain.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%
            response.setHeader("Cache-Control", "no-store");//HTTP1.1
            response.setHeader("Pragma", "no-cache");//HTTP1.0
            response.setDateHeader("Expires", 0);//禁止在服务器中缓存
        %>
        <!-- Styles -->
        <link href="${pageContext.request.contextPath}/assets/css/custom/loan.css" rel="stylesheet">
        
        <legend><h1>Loan Record</h1></legend>
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">Fill table to loan!</h4>
                    </div>
                    <form id="formLoan" class="center-block" action="/OnlineBankSystem/NewAccountServlet" method="post">
                        <div class="modal-body center-block">
                            <div class="controls">
                                <div class="input-group">
                                    <span class="input-group-addon" style="font-weight: bold"> Account&nbsp;&nbsp; ID&nbsp;&nbsp;</span>
                                    <input name="account_id" id="inputAccountId" minlength="6" size="16" type="text" class="form-control" placeholder="Account ID" value="${sessionScope.Account.account_id}" required readonly>
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