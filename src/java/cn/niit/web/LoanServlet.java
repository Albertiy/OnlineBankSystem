/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cn.niit.web;

import cn.niit.dao.AccountDao;
import cn.niit.dao.LoanDao;
import cn.niit.dao.impl.AccoutDaoImpl;
import cn.niit.dao.impl.LoanDaoImpl;
import cn.niit.domain.Account;
import cn.niit.domain.Loan;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author BearK
 */
@WebServlet(name = "LoanServlet", urlPatterns = {"/LoanServlet"})
public class LoanServlet extends HttpServlet {

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

            String account_id = (String) request.getAttribute("account_id");
            String loan_name = (String) request.getAttribute("loan_name");
            String interest_rate = (String) request.getAttribute("interest_rate");
            String during_month = (String) request.getAttribute("during_month");
            String loan_amount = (String) request.getAttribute("loan_amount");
            java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            java.util.Date currentTime = new java.util.Date();//得到当前系统时间   
            String str_date1 = formatter.format(currentTime); //将日期时间格式化   
            String start_date = currentTime.toString(); //将Date型日期时间转换成字符串形式   
            Calendar curr = Calendar.getInstance();
            curr.set(Calendar.MONTH, curr.get(Calendar.MONTH) + Integer.getInteger(during_month));
            Date date1 = curr.getTime();
            formatter.format(date1); //将日期时间格式化   
            String due_date = date1.toString(); //将Date型日期时间转换成字符串形式  
            Loan loan = new Loan();
            loan.setAccount_id(account_id);
            loan.setAmount(Integer.getInteger(loan_amount));
            loan.setDue_date(due_date);
            loan.setInterest_rate(Double.valueOf(interest_rate));
            loan.setStart_date(start_date);
            loan.setState(3);//3为not due

            LoanDao ld = new LoanDaoImpl();
            ld.save(loan);
            AccountDao ad = new AccoutDaoImpl();
            ad.updateBanlance(account_id, -Integer.parseInt(loan_amount));
            Account account = ad.findAccountByAccount_ID(account_id);
            request.getSession().setAttribute("account", account);
            request.getSession().setAttribute("loan", loan);
            response.sendRedirect(request.getContextPath() + "/AccountOperationServlet");//需要先重定向到servlet中进行列表数据的准备

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
