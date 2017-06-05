/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cn.niit.web;

import cn.niit.domain.User;
import cn.niit.service.UserService;
import cn.niit.utils.CheckUtils;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.beanutils.BeanUtils;

/**
 *
 * @author BearK
 */
public class RegistServlet extends HttpServlet {

    private UserService us = new UserService();

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
            //1 封装参数到User对象
            User u = new User();
            u.setLogin_id(request.getParameter("name"));
            u.setLogin_pw(request.getParameter("password"));
            u.setName(request.getParameter("realname"));
            u.setEmail(request.getParameter("email"));
            u.setContact_no(request.getParameter("tel"));
            u.setAddress(request.getParameter("address"));
//			try {
//				BeanUtils.populate(u, request.getParameterMap());
//			} catch (IllegalAccessException e) {
//				e.printStackTrace();
//			} catch (InvocationTargetException e) {
//				e.printStackTrace();
//			}
            //2 校验
            Map<String, String> errors = CheckUtils.CheckUser(u);
            if (errors.size() > 0) {
                //有错误信息=> 将错误信息放到request域=>转发到注册页面显示
                request.setAttribute("errors", errors);
                request.getRequestDispatcher("/signup.jsp").forward(request, response);
                return;
            }
            //3 调用Service保存
            try {
                us.regist(u);
            } catch (Exception e) {
                e.printStackTrace();
                request.setAttribute("error", e.getMessage());
                request.getRequestDispatcher("/signup.jsp").forward(request, response);
                return;
            }
            //4 根据结果,跳转到对应页面
            response.sendRedirect(request.getContextPath() + "/loginin.jsp");
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
