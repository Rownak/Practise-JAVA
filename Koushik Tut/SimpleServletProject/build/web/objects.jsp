<%-- 
    Document   : objects
    Created on : 05-Oct-2014, 10:30:52
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
        <%
            String userName = request.getParameter("name");
            if(userName!=null&&userName!=""){
              //  session.setAttribute("sessionUserName", userName);
                
               // application.setAttribute("applicationUserName", userName);
                pageContext.setAttribute("sessionUserName", userName, PageContext.SESSION_SCOPE);
             pageContext.setAttribute("applicationUserName", userName, PageContext.APPLICATION_SCOPE);

            }
            
        %>
        Get name from request = <%=userName%>
        Get name from session = <%= session.getAttribute("sessionUserName") %>
        Get name from application = <%= application.getAttribute("applicationUserName") %>
    </body>
</html>
