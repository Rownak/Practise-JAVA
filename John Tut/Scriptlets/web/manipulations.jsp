<%-- 
    Document   : manipulations
    Created on : 29-Nov-2014, 21:55:30
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
        <%for(int i=0; i<6 ; i++){%>
            <p>This HTML is in LOOP , Iteration No : <%=i%> </p>
            
        <%}
            String id = request.getParameter("id");
            
            if(id==null){
        %>
        <strong>ID is missing </strong>
        <%} else { %>
            ID no : <%= id%>
        
        <%}%>
        
    </body>
</html>
