<%-- 
    Document   : home
    Created on : Oct 17, 2022, 10:28:01 AM
    Author     : sonnt
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
    </head>
    <body>
        <c:if test="${sessionScope.account ne null}">
            <h1>Hello ${sessionScope.account.displayname},  click 
            <a href="logout">here</a> 
            to logout.</h1> <br/> 
            <a class="header">${requestScope.account.username}</a>
            <h2><a href="lecturer/timetable?lid=${sessionScope.lecturer.id}">TimeTable</a> <br/></h2>
            <h2><a href="lecturer/attendancereport?lid=${sessionScope.lecturer.id}">Attendance Report</a></h2> 
        </c:if>
        <c:if test="${sessionScope.account eq null}">
            <h1>You are not logged in yet!</h1><br/>
            <h1>Please login to view home!</h1><br/>
            <h1><a href="login">Login</a> <br/></h1>
        </c:if>
    </body>
</html>
