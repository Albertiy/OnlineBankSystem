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
public class LoginServlet extends HttpServlet {
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
            
            //记得先加上这行代码
            request.setCharacterEncoding("UTF-8");
		//1封装参数
		User u=new User();
		try {
			BeanUtils.populate(u, request.getParameterMap());
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}
		//2非空校验
		Map<String, String> errors = CheckUtils.CheckUser(u);
		if(errors.size()>0)
		{
			//有错误，保存异常到request中，并且转发到登录页面
			request.setAttribute("errors", errors);
			request.getRequestDispatcher("/login.jsp").forward(request, response);//#######登陆界面
			return;
		}

		User user=null;
		try {
			//3.调用service登录
			user = us.login(u);
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("error", e.getMessage());
			request.getRequestDispatcher("/login.jsp").forward(request, response);
			return;
		}
		//4.登陆成功，将user保存到Session中进行存储
		request.getSession().setAttribute("user", user);
		//5.跳转到列表servlet---------------------------------登陆成功跳转到相应界面
		response.sendRedirect(request.getContextPath()+"/ListServlet");//需要先重定向到servlet中进行列表数据的准备
            
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
