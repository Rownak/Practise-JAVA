<%-- 
    Document   : login
    Created on : 05-Oct-2014, 12:02:37
    Author     : asus 
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <form action="Process.jsp" method="post">
            User Id:  <input type="text" name="userId" />
            Password:  <input type="password" name="password"/>
            <input type="submit"/>
        </form>
       
    </body>
</html>
