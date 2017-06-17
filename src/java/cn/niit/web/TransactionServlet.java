/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cn.niit.web;

import cn.niit.domain.Account;
import cn.niit.domain.Transaction;
import cn.niit.domain.User;
import cn.niit.service.AccountService;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author BearK
 */
public class TransactionServlet extends HttpServlet {

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
            request.setCharacterEncoding("UTF-8");
            //1.获取对象
            Account account=(Account)request.getSession().getAttribute("account");
            User user = (User) request.getSession().getAttribute("user");
            Transaction transaction = new Transaction();
            transaction.setAccount_id(account.getAccount_id());
            transaction.setName(user.getName());
            transaction.setAccount_type(account.getAccount_type());
            transaction.setTransfer_id(request.getParameter("transfer_id"));
            transaction.setAmount(Integer.parseInt(request.getParameter("transfer_amount")));
            transaction.setTransfer_name(request.getParameter("target_name"));
            //设置当前时间
            transaction.setDatetime((new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")).format(new Date()));
            //3 调用Service进行转账
            
            try {
                account =as.TransactionMoney(transaction);
            } catch (Exception e) {
                //如果出现错误，返回到Transaction页面
                request.setAttribute("error", e.getMessage());
                request.getRequestDispatcher("/Transaction.jsp").forward(request, response);
            }
            //转账成功后，更新accountSession，并且转到AccountOperationServlet
            request.getSession().setAttribute("account", account);
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
