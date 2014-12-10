<%-- 
    Document   : login
    Created on : 30-Nov-2014, 20:15:38
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
        <form action="/MVCForm/Controller" method="post">
            <input type="hidden" name="action" value="dologin"/>
            Enter Email: <input type="text" name="email" value="<%= request.getAttribute("email")%>"/>
            Enter Password: <input type="text" name="password" value="<%= request.getAttribute("password")%>"/>
            <input type="submit" name="OK"/>
        </form>
            <p><%= request.getAttribute("validationmessage")%> </p> 
    </body>
</html>
