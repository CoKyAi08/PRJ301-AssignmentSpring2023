/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.lecturer;

import controller.auth.BaseRoleController;
import dal.GroupDBContext;
import dal.LecturerDBContext;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import model.Account;
import model.Group;
import model.Lecturer;

/**
 *
 * @author sonnt
 */
public class AttendanceReportController extends BaseRoleController {

    @Override
    protected void processPost(HttpServletRequest req, HttpServletResponse resp, Account account) throws ServletException, IOException {
        
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
