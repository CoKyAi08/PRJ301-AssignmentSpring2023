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

/**
 *
 * @author sonnt
 */
public class AttendanceReportController extends BaseRoleController {

    @Override
    protected void processPost(HttpServletRequest req, HttpServletResponse resp, Account account) throws ServletException, IOException {
        processRequest(req, resp, account);
    }

    @Override
    protected void processGet(HttpServletRequest req, HttpServletResponse resp,
            Account account) throws ServletException, IOException {
        processRequest(req, resp, account);
    }
    protected void processRequest(HttpServletRequest req, HttpServletResponse resp, Account account) throws ServletException, IOException{
        LecturerDBContext ldb = new LecturerDBContext();
        int lid = ldb.getLecturer(account.getUsername()).getId();
        GroupDBContext groupDB = new GroupDBContext();
        ArrayList<Group> groups = groupDB.getGroups(lid);
        req.setAttribute("groups", groups);
        req.getRequestDispatcher("../view/lecturer/attendancereport.jsp").forward(req, resp);
    }
}
