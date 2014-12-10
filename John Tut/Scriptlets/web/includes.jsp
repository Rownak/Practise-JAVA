<%-- 
    Document   : includes
    Created on : 29-Nov-2014, 22:28:06
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
        <!-- static include : content changes infrequently-->
        <%@include file="copyright.txt"%>
        <p/>
        <!-- dynamic includes : content changes a lot-->
        <jsp:include page="update.txt" />

        <!--Must use static include if there's a java code what we want to access-->
        <%@include file="variables.jsp" %>
        <p/>
        <%=name%>

        <!--Must use dynamic include if we don't know what file you want till runtime-->
        <%
            String id = request.getParameter("id");
        %>
        <%if (id == null) {%>
        <jsp:include page="idnotfound.html"/>
        <%} else {%>
        <jsp:include page="idfound.html"/>
            <%}%>
            <p/>
        </body>
    </html>
