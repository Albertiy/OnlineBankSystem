/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cn.niit.web;

import cn.niit.dao.AccountDao;
import cn.niit.dao.impl.AccoutDaoImpl;
import cn.niit.domain.Account;
import cn.niit.domain.User;
import cn.niit.service.UserService;
import cn.niit.utils.CheckUtils;
import cn.niit.utils.RememberUtils;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.net.URLEncoder;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.beanutils.BeanUtils;

/**
 *
 * @author BearK
 */
public class LoginServlet extends HttpServlet {

    private UserService us = new UserService();
    private AccountDao ad = new AccoutDaoImpl();

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

            //记得先加上这行代码
            request.setCharacterEncoding("UTF-8");
           
            
            //2.2设置“记住我”功能
                RememberUtils.remember(request, response);
            //1封装参数
            User u = new User();
//			BeanUtils.populate(u, request.getParameterMap());
            u.setLogin_id(request.getParameter("name"));
            u.setLogin_pw(request.getParameter("password"));

            //2非空校验
            Map<String, String> errors = CheckUtils.CheckUser(u);
            if (errors.size() > 0) {
                //有错误，保存异常到request中，并且转发到登录页面
                request.setAttribute("errors", errors);
                request.getRequestDispatcher("/loginin.jsp").forward(request, response);//#######登陆界面
                return;
            }

            User user = null;
            try {

                //3.调用service登录
                user = us.login(u);
            } catch (Exception e) {
                e.printStackTrace();
                request.setAttribute("error", e.getMessage());
                request.getRequestDispatcher("/loginin.jsp").forward(request, response);
                return;
            }
            //4.登陆成功，将user保存到Session中进行存储
            request.getSession().setAttribute("user", user);
            //5.跳转到列表servlet---------------------------------登陆成功跳转到相应界面
            //5.1获得保存在session里面的user对象
            User sessionUser = (User) request.getSession().getAttribute("user");
            //5.2通过保存的User对象得到用户名login_id
            String login_id = sessionUser.getLogin_id();
            //5.3通过得到的login_id判断是否拥有银行卡账户
            Account findAccountByName = ad.findAccountByName(login_id);
            if (findAccountByName == null)//5.3.1如果没有银行卡账户，则跳转到postLogin页面
            {
                request.getRequestDispatcher("/postLogin.jsp").forward(request, response);

            } else {//5.3.2否则就跳转到operations页面
                //获取账户信息成功，将account保存到session里面
                request.getSession().setAttribute("account", findAccountByName);
//                request.getRequestDispatcher("/operations.jsp").forward(request, response);
            response.sendRedirect(request.getContextPath()+"/AccountOperationServlet");//需要先重定向到servlet中进行列表数据的准备
            }

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
