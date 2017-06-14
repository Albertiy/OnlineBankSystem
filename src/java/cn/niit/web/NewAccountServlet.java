/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cn.niit.web;

import cn.niit.domain.Account;
import cn.niit.domain.User;
import cn.niit.service.AccountService;
import cn.niit.utils.ArithUtils;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author BearK
 */
public class NewAccountServlet extends HttpServlet {

    private AccountService as = new AccountService();

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            //记得要将这行代码加上
            request.setCharacterEncoding("UTF-8");
            //1 封装参数到Account对象
            Account a = new Account();
            //设置账户类型
            String account_typeString = request.getParameter("account_type");

            if (account_typeString.equalsIgnoreCase("Saving Account")) {
                a.setAccount_type(false);
            } else {
                a.setAccount_type(true);
            }
            //设置账户利率
            String interest_rateString = request.getParameter("interest_rate");
            String substring = interest_rateString.substring(0,interest_rateString.length()-1);
            double interest_rate = ArithUtils.div(Double.parseDouble(substring), 100);
            a.setInterest_rate(interest_rate);
            //设置账户最小金额
            a.setMin_balance(Integer.parseInt(request.getParameter("min_balance")));
            //设置账户金额
            a.setBalance(Integer.parseInt(request.getParameter("balance")));//用户的金额支付问题。。。。。
            //设置账户密码
            a.setAccount_pw(request.getParameter("password"));
            //设置用户登录id
            User sessionUser = (User) request.getSession().getAttribute("user");
            String login_id = sessionUser.getLogin_id();
            a.setLogin_id(login_id);

//            //2 校验
//            Map<String, String> errors = CheckUtils.CheckUser(u);
//            if (errors.size() > 0) {
//                //有错误信息=> 将错误信息放到request域=>转发到注册页面显示
//                request.setAttribute("errors", errors);
//                request.getRequestDispatcher("/signup.jsp").forward(request, response);
//                return;
//            }
            //3 调用Service保存
            try {
                as.regist(a);
            } catch (Exception e) {
                e.printStackTrace();
                request.setAttribute("error", e.getMessage());
                request.getRequestDispatcher("/newaccount.jsp").forward(request, response);
                return;
            }
            //4 根据结果,跳转到对应页面
            response.sendRedirect(request.getContextPath() + "/operations.jsp");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
