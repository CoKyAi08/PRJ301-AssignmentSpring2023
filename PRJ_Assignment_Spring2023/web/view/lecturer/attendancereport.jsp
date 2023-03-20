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
        <form action="attendancereport" method="post">
            <h3>Lecturer: <input type="text" readonly="readonly" value="${requestScope.lecturer.name}"/></h3> <br/>
            <input type="hidden" name="lid" value="${requestScope.lecturer.id}"/>
            <h3>Attendance report for: <select name="gid">
                    <c:forEach items="${requestScope.groups}" var="g">
                        <option value="${g.id}">${g.subject.name}-${g.name}</option>
                    </c:forEach>
                </select></h3>
            <input type="submit" value="View"/>
        </form>
        <table border="1px" >
            <tr>
                <th>Student ID</th>
                <th>Full Name</th>
                    <c:forEach items="${requestScope.sessions}" var="ses">
                    <th>Session ${ses.index}</th>
                    </c:forEach>
                <th>% Absent</th>
            </tr>
            <c:forEach items="${requestScope.students}" var="s">
                <tr>
                    <td>${s.id}</td>
                    <td>${s.name}</td>
                    <c:forEach items="${requestScope.sessions}" var="ses">
                        <td>
                            <c:forEach items="${requestScope.attendances}" var="a">
                                <c:if test="${(a.student.id eq s.id) and (a.session.index eq ses.index)}">
                                    <c:if test="${a.present}"> 
                                        x
                                    </c:if>
                                    <c:if test="${!a.present}"> 
                                    </c:if>
                                </c:if>
                            </c:forEach>
                        </td>
                    </c:forEach>
                    <c:if test="${total > 20}">
                        <td style="background-color: red">${total}%</td>
                    </c:if>
                    <c:if test="${total<=20}">
                        <td style="background-color: green">${total}%</td>
                    </c:if>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
