<%-- 
    Document   : Time
    Created on : 05-Oct-2014, 08:39:14
    Author     : asus
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/HelloJsp.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Time JSP Page</title>
    </head>
    <body>
        
        Current Time is <%=new Date()%>
    </body>
</html>
