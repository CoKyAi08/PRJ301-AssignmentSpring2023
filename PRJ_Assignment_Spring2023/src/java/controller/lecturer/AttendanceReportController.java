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
import dal.StudentDBContext;
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
        ArrayList<Attendance> attendances = attendDB.getByGroup(gid);
        req.setAttribute("attendances", attendances);

        StudentDBContext studentDB = new StudentDBContext();
        ArrayList<Student> students = studentDB.getByGid(gid);
        req.setAttribute("students", students);

        SessionDBContext sessionDB = new SessionDBContext();
        ArrayList<Session> sessions = sessionDB.getByGroup(gid);
        ArrayList<Session> ses = sessionDB.getToStatistic(gid);
        req.setAttribute("sessions", sessions);        

        ArrayList<Float> totals = new ArrayList<>();

        for (int i = 0; i < students.size(); i++) {
            float total = 0;
            for (int j = 0; j < ses.size(); j++) {
                for (int k = 0; k < attendances.size(); k++) {
                    if (attendances.get(k).getStudent().getId() == students.get(i).getId()
                            && attendances.get(k).getSession().getIndex() == ses.get(j).getIndex()
                            && !attendances.get(k).isPresent()) {
                        total++;
                    }
                }
            }
            totals.add(total / ses.size() * 100);
        }
        req.setAttribute("totals", totals);

        req.getRequestDispatcher("../view/lecturer/attendancereport.jsp").forward(req, resp);
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
