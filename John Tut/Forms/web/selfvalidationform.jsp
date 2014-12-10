<%-- 
    Document   : submit
    Created on : 30-Nov-2014, 10:35:43
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
        <jsp:useBean id="user1" class="beans.User" scope="session"/>
        <jsp:setProperty name="user1" property="*"/>
        
        
        <%
            String action = request.getParameter("action");
            if(action !=null && action.equals("formsubmit")){
                if(user1.validate())
                {
                    request.getRequestDispatcher("/Controller").forward(request, response);
                }
            }
            
        %>
        <h2><jsp:getProperty name="user1" property="message"/></h2>
        
        <form action="/Forms/selfvalidationform.jsp" method="post">
            <input type="hidden" name="action" value="formsubmit"/>
            <input type="text" name="email" value="<jsp:getProperty name="user1" property="email"/>"/><br/>
            <input type="text" name="password" value="<jsp:getProperty name="user1" property="password"/>"/>
            <input type="submit" value="OK"/>
        </form>
        
    </body>
</html>
