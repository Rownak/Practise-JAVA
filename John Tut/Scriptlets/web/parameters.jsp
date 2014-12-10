<%-- 
    Document   : parameters
    Created on : 29-Nov-2014, 21:46:01
    Author     : Rownak
--%>

<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
//            http://localhost:8084/Scriptlets/parameters.jsp?user=rownak&id=2
            String user = request.getParameter("user");
            String id = request.getParameter("id");
            
            out.println("user is : " +user);
            out.println("<br/>id is: "+id);
        %>
    </body>
</html>
