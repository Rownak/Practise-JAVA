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
        <jsp:useBean id="X" class="beans.User" scope="request"></jsp:useBean>
        
        <jsp:setProperty name="X" property="email" value="rownak.sust@gmail.com"></jsp:setProperty>
        <jsp:setProperty name="X" property="password" value="letmein"></jsp:setProperty>
        
        <%
            request.getRequestDispatcher("getRequestBean.jsp").forward(request, response);
        %>
    </body>
</html>
