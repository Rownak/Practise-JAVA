/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import beans.User;
import database.Account;
import demo.DataSourceDemo;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 *
 * @author Rownak
 */
public class Controller extends HttpServlet {

    DataSource ds = null;

    @Override
    public void init(ServletConfig config) throws ServletException {

        try {
            InitialContext initContext = new InitialContext();
            Context env = (Context) initContext.lookup("java:comp/env");
            ds = (DataSource) env.lookup("jdbc/webshop");
        } catch (NamingException ex) {
            Logger.getLogger(DataSourceDemo.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

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
        PrintWriter out = response.getWriter();

        out.println("<html>");
        out.println("In Post Method");
        String action = request.getParameter("action");
        if (action == null) {
            request.getRequestDispatcher("/index.jsp").forward(request, response);

        } else if (action.equals("login")) {
            // out.println("go to login Page");
            request.setAttribute("email", "");
            request.setAttribute("password", "");
            request.setAttribute("message", "");
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        } else if (action.equals("createaccount")) {
            //out.println("go to account page");
            request.setAttribute("email", "");
            request.setAttribute("password", "");
            request.setAttribute("repeatpassword", "");
            request.setAttribute("message", "");
            request.getRequestDispatcher("/createaccount.jsp").forward(request, response);
        } else {
            out.println("Unrecognized action");
        }

        out.println("</html>");
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

        PrintWriter out = response.getWriter();
        out.println("<html>");

        Connection conn = null;
        try {
            conn = ds.getConnection();
        } catch (SQLException ex) {
            Logger.getLogger(Controller.class.getName()).log(Level.SEVERE, null, ex);
        }

        Account account = new Account(conn);

        String action = request.getParameter("action");
        if (action == null) {
            out.println("unrecognised action");
        } else if (action.equals("dologin")) {
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            request.setAttribute("email", email);
            request.setAttribute("password", password);

            try {
                if (account.login(email, password)) {
                    request.getRequestDispatcher("/loginsuccess.jsp").forward(request, response);
                } else {
                    request.setAttribute("message", "email address or password not recognised");
                    request.getRequestDispatcher("/login.jsp").forward(request, response);
                }
            } catch (SQLException ex) {
                request.setAttribute("message", "Database error: please try again later.");
                request.getRequestDispatcher("/newaccount.jsp").forward(request, response);
            }

        } else if (action.equals("createaccount")) {
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            request.setAttribute("email", email);
            request.setAttribute("password", password);
            User user = new User(email, password);
            if (user.validate()) {
                try {
                    if (account.exists(email)) {
                        account.create(email, password);
                        request.getRequestDispatcher("/createsuccess.jsp").forward(request, response);
                    } else {
                        request.setAttribute("message", "Already have account with this email");
                        request.getRequestDispatcher("/createaccount.jsp").forward(request, response);
                    }
                } catch (SQLException ex) {
                    request.setAttribute("message", "Database error : please try again later.");
                    request.getRequestDispatcher("/createaccount.jsp").forward(request, response);

                }
            } else {
                request.setAttribute("message", user.getMessage());
                request.getRequestDispatcher("/createaccount.jsp").forward(request, response);
            }
        } else {
            out.println("unrecognised action");
        }

        out.println("</html>");
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
