/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.rownak.javabrains.servlets;

import com.rownak.javabrains.bean.User;
import com.rownak.javabrains.services.LoginService;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author asus
 */
public class LoginServlet extends HttpServlet {



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
        String userId,password;
        
        userId = request.getParameter("userId");
        password = request.getParameter("password");
        
        LoginService loginService = new LoginService();
        boolean result = loginService.authenticate(userId, password);
        
        if (result) {
            User user = new User();
            user = loginService.userDetails(userId);
            request.getSession().setAttribute("user", user);
            //response.sendRedirect("success.jsp");
            RequestDispatcher dispatcher = request.getRequestDispatcher("success.jsp");
            request.setAttribute("user", user);
            dispatcher.forward(request, response);
            return;
        }
        else {
           response.sendRedirect("login.jsp");
            return;
        }
    }


}
