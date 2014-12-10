<%-- 
    Document   : beanparam.jsp
    Created on : 30-Nov-2014, 10:04:24
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
        <jsp:useBean id="user5" class="beans.User" scope="page"/>
        <jsp:setProperty name="user5" property="*"/>
        
        <%= user5.getPassword() %>
        <%= user5.getEmail()%>
        
    </body>
</html>
