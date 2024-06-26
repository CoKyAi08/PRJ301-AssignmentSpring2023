<%-- 
    Document   : att
    Created on : Oct 16, 2022, 3:08:10 PM
    Author     : sonnt
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Take attendance Page</title>
        <script> 
            function takeAttendance()
            {
                var a = confirm("are you sure?");
                if(a)
                {
                    window.location.href='takeattendance?id'+${ses.id};
                }
            }
        </script>
    </head>
    <body>
        <a href="../home">Home</a> <br/>
        <a href="../logout">Logout</a> <br/>
        <a href="timetable">TimeTable</a> <br/>
        Lecturer: ${requestScope.ses.lecturer.name}<br/>
        Take attendance for Group: ${requestScope.ses.group.name} <br/>
        Subject: ${requestScope.ses.group.subject.name} <br/>
        Room: ${requestScope.ses.room.name} <br/>
        Date: ${requestScope.ses.date} <br/>
        Time Slot: ${requestScope.ses.timeslot.description}<br/>
        Attended: <span style="color: red;"> ${requestScope.ses.attended?"Yes":"No"} </span>
        <form action="takeattendance" method="POST">
            <input type="hidden" name="sesid" value="${param.id}"/>
            <table border="1px">
                <tr>
                    <td>No.</td>
                    <td>Student ID</td>
                    <td>Full Name</td>
                    <td>Present</td>
                    <td>Absent</td>
                    <td>Description</td>
                </tr>
                <c:forEach items="${requestScope.ses.attendances}" var="a" varStatus="loop">
                    <tr>
                        <td>${loop.index+1}</td>
                        <td>${a.student.id}
                            <input type="hidden" name="stdid" value="${a.student.id}"/>
                        </td>
                        <td>${a.student.name}</td>
                        <td><input type="radio"
                                   <c:if test="${a.present}">
                                       checked="checked"
                                   </c:if>
                                   name="present${a.student.id}" value="present" /></td>
                        <td><input type="radio"
                                   <c:if test="${!a.present}">
                                       checked="checked"
                                   </c:if>
                                   name="present${a.student.id}" value="absent" /></td>
                        <td><input type="text" name="description${a.student.id}" value="${a.description}" /></td>
                    </tr>   

                </c:forEach>

            </table>
            <input type="submit" onclick="takeAttendance()" value="Save"/>
        </form>
    </body>
</html>
