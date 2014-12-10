<%-- 
    Document   : receiveObject
    Created on : 03-Dec-2014, 09:36:52
    Author     : Rownak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:out value="${user1.name}"/><br/>
        <c:out value="${user2.name}"/><br/>
        <c:out value="${user3.name}"/><br/>
        <c:out value='${map1["flower"]}'/><br/>
        ${link}<br/>
        <c:out value="${link}"/><br/>
        
        
    </body>
</html>
