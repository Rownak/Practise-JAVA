<%-- 
    Document   : tags
    Created on : 30-Nov-2014, 00:37:13
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
        <!--directive tag-->
        <%@page import = "java.util.Date" %>
        <!--expression tag-->
        <%= new Date()%>
        <!--declaration tag-->
        <%! public String info = "Baal CHaal";%>
        <!--scriptlet tag-->
        <%for(int i=0; i<5; i++){%>
            LOOP
            <%}%>
        
        
    </body>
</html>
