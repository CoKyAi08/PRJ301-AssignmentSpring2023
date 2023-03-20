/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.lecturer;

import controller.auth.BaseRoleController;
import dal.AttendanceDBContext;
import dal.GroupDBContext;
import dal.LecturerDBContext;
import dal.SessionDBContext;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import model.Account;
import model.Attendance;
import model.Group;
import model.Lecturer;
import model.Session;
import model.Student;

/**
 *
 * @author sonnt
 */
public class AttendanceReportController extends BaseRoleController {

    @Override
    protected void processPost(HttpServletRequest req, HttpServletResponse resp, Account account) throws ServletException, IOException {
        int gid = Integer.parseInt(req.getParameter("gid"));
        int lid = Integer.parseInt(req.getParameter("lid"));

        LecturerDBContext lecturerDB = new LecturerDBContext();
        Lecturer lecturer = lecturerDB.get(lid);
        req.setAttribute("lecturer", lecturer);

        GroupDBContext groupDB = new GroupDBContext();
        ArrayList<Group> groups = groupDB.getGroups(lid);
        req.setAttribute("groups", groups);

        AttendanceDBContext attendDB = new AttendanceDBContext();
        ArrayList<Attendance> attandances = attendDB.getByGroup(gid);
        req.setAttribute("attendances", attandances);

        StudentDBContext studentDB = new StudentDBContext();
        ArrayList<Student> students = studentDB.getByGid(gid);
        req.setAttribute("students", students);

        SessionDBContext sessionDB = new SessionDBContext();
        ArrayList<Session> sessions = sessionDB.getByGroup(gid);
        req.setAttribute("sessions", sessions);

        int numSes = sessions.size();
        int numAtt = attandances.size();
        int numStu = students.size();

        ArrayList<Float> totals = new ArrayList<>();
        //(a.student.id eq s.id) and (a.session.index eq ses.index stu ses att

        for (int i = 0; i < numStu; i++) {
            float total = 0;
            for (int j = 0; j < numSes; j++) {
                for (int k = 0; k < numAtt; k++) {
                    if (attandances.get(k).getStudent().getId() == students.get(i).getId()
                            && attandances.get(k).getSession().getIndex() == sessions.get(j).getIndex()
                            && !attandances.get(k).isPresent()) {
                        total++;
                    }
                }
            }
            totals.add(total / numSes * 100);
        }
        req.setAttribute("totals", totals);

        req.getRequestDispatcher("../Attendance_Report/report.jsp").forward(req, resp);
    }

    @Override
    protected void processGet(HttpServletRequest req, HttpServletResponse resp,
            Account account) throws ServletException, IOException {
        int lid = Integer.parseInt(req.getParameter("lid"));

        LecturerDBContext lecturerDB = new LecturerDBContext();
        Lecturer lecturer = lecturerDB.get(lid);
        req.setAttribute("lecturer", lecturer);

        GroupDBContext groupDB = new GroupDBContext();
        ArrayList<Group> groups = groupDB.getGroups(lid);
        req.setAttribute("groups", groups);

        req.getRequestDispatcher("../view/lecturer/attendancereport.jsp").forward(req, resp);
    }
}
