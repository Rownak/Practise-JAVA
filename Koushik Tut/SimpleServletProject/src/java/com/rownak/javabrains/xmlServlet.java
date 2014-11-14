/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.rownak.javabrains;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ASUS
 */
@WebServlet(name = "xmlServlet", urlPatterns = {"/xmlServlet"})
public class xmlServlet extends HttpServlet {
    
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
        
            PrintWriter writer= response.getWriter();
            
            String userName = request.getParameter("userName");
            
            String fullName = request.getParameter("fullName");
            
            String prof = request.getParameter("prof");
            String[] location = request.getParameterValues("location");
            
            writer.println("Hello from Get Method:  " + userName + " FullName:" + fullName +" Profession is :" +prof+ " location are in " +location.length + "places");
            
            for(int i=0; i<location.length; i++){
                writer.print(" "+ location[i]);
            }

//            PrintWriter writer = response.getWriter();
//            
//            writer.println("<h3>Hello in html</h3>");
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            PrintWriter writer= response.getWriter();
            
            String userName = request.getParameter("userName");
            
            String fullName = request.getParameter("fullName");
            
            String prof = request.getParameter("prof");
            String[] location = request.getParameterValues("location");
            
            writer.println("Hello from Get Method:  " + userName + " FullName:" + fullName +" Profession is :" +prof+ " location are in " +location.length + "places");
            
            for(int i=0; i<location.length; i++){
                writer.print(" "+ location[i]);
            }


 
    }
    
}
