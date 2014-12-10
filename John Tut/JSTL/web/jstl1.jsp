<%-- 
    Document   : jstl1
    Created on : 02-Dec-2014, 23:51:36
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

        <c:out value="Hello World From JSTL"></c:out><br/>

        <%--URL Parameter Value--%>
        <c:out value="${param.name}"></c:out><br/>
        
        <jsp:useBean id="Bean" class="beans.Bean" scope="page"></jsp:useBean>
        <p>Using Bean :<c:out value="${Bean.info}" /></p>
        
        <%--if Statement--%>
        <c:if test='${param.name == "Rownak"}'>
            Hello Rownak
        </c:if>

        <%--Choose (like if-else) --%>

        <c:choose>
            <c:when test="${param.id == 1}">
                ID is equal to 1 <b/>
            </c:when>
            <c:when test="${param.id == 2}">
                ID is equal to 2 <b/>
            </c:when>
            <c:otherwise>
                ID is neither 1 nor 2
            </c:otherwise>
        </c:choose>

        <%-- for Each Loop --%>
        <c:forEach var="i" begin="0" end="12" step="3" varStatus="status">
            <br/>Looping Iterate no: <c:out value="${i}"></c:out> 
            <c:if test="${status.first}">
                <br/>Loop Begin
            </c:if>
            <c:if test="${status.last}">
                <br/>Loop End
            </c:if>
            <br/>
        </c:forEach>

    </body>
</html>
