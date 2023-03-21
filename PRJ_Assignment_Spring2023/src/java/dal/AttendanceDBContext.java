/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Attendance;
import model.Session;
import model.Student;

/**
 *
 * @author minh0
 */
public class AttendanceDBContext extends DBContext<Attendance> {

    public ArrayList<Attendance> getByGroup(int gid) {
        ArrayList<Attendance> attandances = new ArrayList<>();
        try {
            String sql = "select a.stdid, stdname, [index],description, present from  Attendance a \n"
                    + "                    join Student s on a.stdid=s.stdid\n"
                    + "                    join [Session] ses on a.sesid=ses.sesid\n"
                    + "                    join [Group] g on ses.gid=g.gid\n"
                    + "                    where g.gid=?\n"
                    + "                    order by stdid, [index]";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, gid);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Student s = new Student();
                s.setId(rs.getInt("stdid"));
                s.setName(rs.getString("stdname"));

                Session ses = new Session();
                ses.setIndex(rs.getInt("index"));

                Attendance a = new Attendance();
                a.setSession(ses);
                a.setStudent(s);
                a.setDescription(rs.getString("description"));
                a.setPresent(rs.getBoolean("present"));

                attandances.add(a);
            }
        } catch (SQLException e) {
            Logger.getLogger(SessionDBContext.class.getName()).log(Level.SEVERE, null, e);

        }
        return attandances;
    }

    @Override
    public void insert(Attendance model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void update(Attendance model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Attendance model) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Attendance get(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public ArrayList<Attendance> list() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
