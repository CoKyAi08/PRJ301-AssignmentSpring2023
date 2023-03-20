<%-- 
    Document   : attendancereport
    Created on : Mar 20, 2023, 10:05:01 PM
    Author     : minh0
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Attendance Report Page</title>
    </head>
    <body>
        <a href="../home">Home</a><br/>
        <a href="../logout">Logout</a><br/>
        <form action="attendancereport" method="GET">
            Group: <select name="gid">
                <c:forEach items="${requestScope.groups}" var="g">
                    <option value="${g.gid}">${g.gname}</option>
                </c:forEach>
            </select> <br/>
            <input type="submit" value="View"/>
        </form>
    </body>
</html>
