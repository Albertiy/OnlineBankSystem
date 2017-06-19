<%--@ include file="testsession.jsp"--%><%@page import="cn.niit.domain.Account"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%
            response.setHeader("Cache-Control", "no-store");//HTTP1.1
            response.setHeader("Pragma", "no-cache");//HTTP1.0
            response.setDateHeader("Expires", 0);//禁止在服务器中缓存
        %>
<!DOCTYPE html>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <div class="center-block">
                <div class="main" style="align-content:center">
                    <legend><h1 style="text-align: left">Account PayKey</h1></legend>

                    <!-- Core Code -->
                    <div class="center-block" style="max-width: 350px">
                        <form id="formChangePW" action="/OnlineBankSystem/AccountPsdModifyServlet" method="post">
                            <div class="input-group ">
                                <div class="input-group-addon">
                                    <span class="glyphicon glyphicon-user"></span>
                                </div>
                                <input class="form-control" name="account_id" type="text" readonly="readonly" value="${sessionScope.account.account_id}">
                            </div>
                            <br>
                            <div class="input-group ">
                                <div class="input-group-addon">
                                    <span class="glyphicon glyphicon-lock"></span>
                                </div>
                                <input id="inputOldPassword" minlength="6" maxlength="16" type="password"
                                       pattern="^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,16}$" class="form-control" placeholder="Old Password" autofocus="true" required>
                            </div>
                            <br>
                            <div id="groupPassword" class="input-group ">
                                <div class="input-group-addon">
                                    <span class="glyphicon glyphicon-pencil"></span>
                                </div>
                                <input name="password" id="inputPassword" minlength="6" maxlength="6" type="password"
                                       pattern="[0-9][0-9][0-9][0-9][0-9][0-9]" class="form-control" placeholder="New Password" required>
                                <input name="confirm_password" id="inputConfirmPassword" minlength="6" maxlength="6" type="password"
                                       pattern="[0-9][0-9][0-9][0-9][0-9][0-9]" class="form-control" placeholder="Confirm Password" required>
                            </div>
                            <div style="text-align: right">
                            <span id="helpConfirmPW" class="help-inline" style="color:red">Inconsistent with password</span>
                            </div>
                            <br>
                            <div class="controls" style="text-align: right">
                                <a class="btn btn-warning btn-lg" role="button" href="/OnlineBankSystem/AccountOperationServlet">Cancel</a>
                                <button id="btnSubmit" class="btn btn-primary btn-lg" type="submit">Change</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
    <script>
            $(document).ready(function () {
                    $("#helpConfirmPW").hide();
                    $("#groupPassword").hide();
                    $("#btnSubmit").hide();
                    var oldpw= '${sessionScope.account.account_pw}';
                    $("#inputOldPassword").change(function (){
                        if ($("#inputOldPassword").val() === oldpw.toString())
                        {
                            $("#groupPassword").show();
                            $("#btnSubmit").show();
                        }else
                        {
                            $("#groupPassword").hide();
                            $("#btnSubmit").hide();
                        }
                    });
                });
                
                $("#inputPassword").change(function () {
                    if ($("#inputPassword").val() !== $("#inputConfirmPassword").val())
                    {
                        $("#helpConfirmPW").show();
                    } else {
                        $("#helpConfirmPW").hide();
                    }
                });
                $("#inputConfirmPassword").change(function () {
                    if ($("#inputPassword").val() !== $("#inputConfirmPassword").val())
                    {
                        $("#helpConfirmPW").show();
                    } else {
                        $("#helpConfirmPW").hide();
                    }
                });
                $("#formChangePW").submit(function () {
                    if ($("#inputPassword").val() !== $("#inputConfirmPassword").val())
                    {
                        return mySubmit(false);
                    }
                });
                //掩体函数
                function mySubmit(flag) {
                    return flag;
                }
    </script>

