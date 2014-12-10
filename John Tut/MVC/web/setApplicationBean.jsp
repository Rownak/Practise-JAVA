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
        <jsp:useBean id="user4" class="beans.User" scope="application"></jsp:useBean>
        
        <jsp:setProperty name="user4" property="email" value="rownak.sust@gmail.com"></jsp:setProperty>
        <jsp:setProperty name="user4" property="password" value="12345"></jsp:setProperty>
        
        
    </body>
</html>
