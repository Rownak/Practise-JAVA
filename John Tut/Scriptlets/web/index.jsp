<%-- 
    Document   : index
    Created on : 29-Nov-2014, 21:00:40
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
        <%@page  import = "java.util.Date, gui.*"  %>>
        
        
       <%= new Date()  %> 
       
       <%
       
       TextOutput textOut = new TextOutput();
       out.println(textOut.getInfo());
       %>
    </body>
</html>
