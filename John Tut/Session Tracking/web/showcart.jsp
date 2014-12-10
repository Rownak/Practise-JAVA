<%-- 
    Document   : showcart
    Created on : 01-Dec-2014, 10:30:33
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
        <%@page  import="demo.*" %>
        
         <% Cart c = (Cart) session.getAttribute("cart"); %>
         item in cart <%= c==null ? "error" :  c.getCartValue()%>
         
       <!-- <a href="/Session_Tracking/showcart2.jsp">Click here to go showcart2.jsp</a> -->
       
       <a href="<%= response.encodeUrl(request.getContextPath() + "/showcart2.jsp")%>">Clic here to go showcart2.jsp</a>  
    </body>
</html>
