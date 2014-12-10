<%-- 
    Document   : login
    Created on : 02-Dec-2014, 09:02:00
    Author     : Rownak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <style  type="text/css">        
            #content { position: relative;}

            #login {
                position: relative;
                top: 80px;
            }

            .align-right {
                text-align: right;
            }

            table {
                border: 1px solid gray;
                padding: 20px;
                background-color: #CCCCFF;
            }

            .login-error {
                font-size: 16px;
                font-weight: bold;
                font-color: red;
            }
        </style>
    </head>
    <body>
    <center>

        <div id="login">

            <h3>Log In</h3>

            <form method="post" action="<%= response.encodeUrl(request.getContextPath() + "/Controller?action=dologin")%>">

                <input type="hidden" name="action" value="dologin" />

                <table>

                    <tr><td class="align-right">Email address: </td><td><input type="text" name="email" value="<%= request.getAttribute("email")%>"/></td></tr>
                    <tr><td class="align-right">Password: </td><td><input type="password" name="password" value="<%= request.getAttribute("password")%>"/></td></tr>
                    <tr><td class="align-right" colspan="2"><input type="submit" value="Log in"/></td></tr>

                </table>

                <p class="login-error"><%= request.getAttribute("message")%></p>

            </form>

        </div>


    </center>
</body>
</html>
