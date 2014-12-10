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
        <!-- Won't work: bean has page scope -->
        <jsp:useBean id="user2" class="beans.User" scope="page"></jsp:useBean>
        
        Email : <%= user2.getEmail()%>
        <p/>
        Password : <%= user2.getPassword()%>
        
    </body>
</html>
