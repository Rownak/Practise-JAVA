<%-- 
    Document   : loginsuccess
    Created on : 30-Nov-2014, 20:27:06
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
        <h1>Loggin with Email <%= request.getAttribute("email")%></h1>
    </body>
</html>
