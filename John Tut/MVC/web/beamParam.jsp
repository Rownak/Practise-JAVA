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
        <jsp:useBean id="user5" class="beans.User" scope="session"></jsp:useBean>
        
        <jsp:setProperty name="user5" property="email" value="rownak.sust@gmail.com"></jsp:setProperty>
        <jsp:setProperty name="user5" property="password" value="letmein"></jsp:setProperty>
        
        <%= user5.getEmail() %>
        <%= user5.getPassword()%>
    </body>
</html>

