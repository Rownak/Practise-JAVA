<%-- 
    Document   : Process
    Created on : 05-Oct-2014, 15:58:07
    Author     : asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
                
        <jsp:useBean id="user" class="com.rownak.javabrains.bean.User" scope="request">
            <jsp:setProperty property="*" name="user" />
        </jsp:useBean>
        
        Hello <jsp:getProperty property="userId" name="user"/> !!
        <br> Your Password is <jsp:getProperty property="password" name="user" />
    </body>
</html>
