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
        <jsp:useBean id="user4" class="beans.User" scope="application"></jsp:useBean>
        
        Email : <%= user4.getEmail()%>
        <p/>
        Password : <%= user4.getPassword()%>
        
    </body>
</html>
