/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package controller;

import beans.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Rownak
 */
public class Controller extends HttpServlet {

    /**
    
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
        
        String action = request.getParameter("action");
        
        if(action == null){
            
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        }
        else if(action.equals("login")){
            request.setAttribute("email", "");
            request.setAttribute("password", "");
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }
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
        String action = request.getParameter("action");
        
        if(action == null){
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        }
        else if(action.equals("dologin")){
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            
            request.setAttribute("email", email);
            request.setAttribute("password", password);
            request.setAttribute("validationmessage", "");
            User user = new User(email, password);
            
            if(user.validate()){
                request.getRequestDispatcher("/loginsuccess.jsp").forward(request, response);
            }
            else{
                request.setAttribute("validationmessage", user.getMessage());
                request.getRequestDispatcher("/login.jsp").forward(request, response);
            }
        }
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
