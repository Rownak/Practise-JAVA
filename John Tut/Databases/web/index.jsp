<%-- 
    Document   : index
    Created on : 02-Dec-2014, 08:46:20
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
        <p><a href="<%= response.encodeUrl(request.getContextPath()+"/Controller?action=login")%>">Click here to login</a></p>
        <p><a href="<%= response.encodeUrl(request.getContextPath()+"/Controller?action=createaccount")%>">Click her to createaccount</a></p>
    </body>
</html>
