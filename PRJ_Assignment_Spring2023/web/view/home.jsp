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
        <title>JSP Page</title>
    </head>
    <body>
        <c:if test="${sessionScope.account ne null}">
            <h1>Hello ${sessionScope.account.displayname},  click 
            <a href="logout">here</a> 
            to logout. <br/> </h1>
            <a class="header">${requestScope.account.username}</a>
            <h2><a href="lecturer/timetable">TimeTable</a> <br/></h2>
            <h2><a href="lecturer/attendancereport">Attendance Report</a></h2> 
        </c:if>
        <c:if test="${sessionScope.account eq null}">
            You are not logged in yet!<br/>
            Please login to view home!<br/>
            <a href="login">Login</a> <br/>
        </c:if>
    </body>
</html>
