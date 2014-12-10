<%-- 
    Document   : setBean
    Created on : 30-Nov-2014, 03:45:13
    Author     : Rownak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:useBean id="user2" class="beans.User" scope="page"></jsp:useBean>
        
        <jsp:setProperty name="user2" property="email" value="rownak.sust@gmail.com"></jsp:setProperty>
        <jsp:setProperty name="user2" property="password" value="letmein"></jsp:setProperty>
        
        <%= user2.getEmail()
            //response.sendRedirect("getPageBean.jsp");
           
        %>
    </body>
</html>
