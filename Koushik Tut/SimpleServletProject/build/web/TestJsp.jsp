<%-- 
    Document   : TestJsp
    Created on : 04-Oct-2014, 22:03:01
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
        <h3>Hello World!</h3>
        <%!
        public int addValue(int a, int b){
            
            return a+b;
        }
        %>
        
        <%
            int i=1;
            int j=2;
            int k;
            k=addValue(4, 5);
            out.println("From java Value of K =" +k);
        %>
       
       
        <br>
     
       
    </body>
</html>
