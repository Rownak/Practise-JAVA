<%-- 
    Document   : getBean
    Created on : 30-Nov-2014, 03:44:52
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
        <jsp:useBean id="user1" class="beans.User" scope="session"></jsp:useBean>
        
        Email : <%= user1.getEmail()%>
        <p/>
        Password : <%= user1.getPassword()%>
        
    </body>
</html>
