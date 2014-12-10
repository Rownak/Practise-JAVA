<%-- 
    Document   : formhandler
    Created on : 30-Nov-2014, 11:12:16
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
        <jsp:useBean id="user" class="beans.User" scope="session"/>
        <jsp:setProperty name="user" property="*" />
        
        User name : <%= user.getEmail()%>
        Password : <%= user.getPassword()%>
    </body>
</html>
