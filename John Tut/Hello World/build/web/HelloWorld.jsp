<%-- 
    Document   : HelloWorld
    Created on : 06-Oct-2014, 00:01:55
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
        <%="Hello World from JSP"%>
        <%
            java.util.Date today = new java.util.Date();
            String text = today.toString();
        %>
        <%out.println(text+"baalchaal");%>
             aklsdgalsbg   

    </body>
</html>
