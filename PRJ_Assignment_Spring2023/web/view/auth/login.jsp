<%-- 
    Document   : login
    Created on : Nov 3, 2022, 9:26:11 PM
    Author     : minh0
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <form action="login" method="POST">
            <h1>Username: <input type="text" name="username"/></h1> <br/>
            <h1>Password: <input type="password" name="password"/></h1>  <br/>
            <input type="submit" value="Login" />
        </form> 
    </body>
</html>
