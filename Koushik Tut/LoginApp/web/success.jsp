<%-- 
    Document   : success
    Created on : 05-Oct-2014, 11:58:38
    Author     : asus
--%>

<%@page import="com.rownak.javabrains.bean.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Success</title>
    </head>
    <body>
        <h1>Login Success</h1>
        <jsp:useBean id="user" class="com.rownak.javabrains.bean.User" scope="request">
            <jsp:setProperty property="userName" name="user" value="New User"/>
        </jsp:useBean>
        
        Hello <jsp:getProperty property="userName" name="user"/> !!
            
       
                         

    </body>
</html>
