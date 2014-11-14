/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.rownak.javabrains;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ASUS
 */
@WebServlet(name = "SimpleServlet", urlPatterns = {"/SimpleServlet"},
        initParams={@WebInitParam(name="defaultUser",value="Ahnaf Farhan")})
public class SimpleServlet extends HttpServlet {
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
        
            System.out.println("Hello in Console");
            
            PrintWriter writer = response.getWriter();
            
            String name= request.getParameter("name");
            
            HttpSession session = request.getSession();
            ServletContext context= request.getServletContext();
            
            if(name!="" && name!=null){
                session.setAttribute("SavedName", name);
                context.setAttribute("SavedName", name);
            }
            writer.println("Request Parameter Name  : "+name);
            writer.println("Session Parameter Name : "+session.getAttribute("SavedName"));
            writer.println("Context Parameter Name : "+context.getAttribute("SavedName"));
            writer.println("Init Parameter Name : "+getServletConfig().getInitParameter("defaultUser"));


    }

}