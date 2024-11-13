/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Student;

/**
 *
 * @author TUNG PHAM
 */
public class StudentDAO extends DBContext {

    PreparedStatement stm;
    ResultSet rs;

    public List<Student> getallStudent() {
        List<Student> list = new ArrayList<>();
        try {
            String strSelect = "Select * from Student";
            stm = new DBContext().connection.prepareStatement(strSelect);
            rs = stm.executeQuery();
            while (rs.next()) {
                Student nd = new Student(rs.getString("StudentID"),
                        rs.getString("Student_Name"),
                        rs.getString("Address"),
                        rs.getString("Phone_number"),
                        rs.getString("Gender"),
                        rs.getString("account"),
                        rs.getString("password"),
                        rs.getString("Major_id"),
                        rs.getString("school_year"),
                        rs.getString("Time_finish"), rs.getString("Campus"),
                        rs.getString("Avatar"));
                list.add(nd);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Student> getallStudentbyName(String name) {
        List<Student> list = new ArrayList<>();
        try {
            String strSelect = "Select * from Student where Student_Name like ?";
            stm = new DBContext().connection.prepareStatement(strSelect);
            stm.setString(1, "%" + name + "%");
            rs = stm.executeQuery();
            while (rs.next()) {
                Student nd = new Student(rs.getString("StudentID"),
                        rs.getString("Student_Name"),
                        rs.getString("Address"),
                        rs.getString("Phone_number"),
                        rs.getString("Gender"),
                        rs.getString("account"),
                        rs.getString("password"),
                        rs.getString("Major_id"),
                        rs.getString("school_year"),
                        rs.getString("Time_finish"), rs.getString("Campus"),
                        rs.getString("Avatar"));
                list.add(nd);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public void addStudent(Student s) {
        try {
            String sql_insert = "Insert into Student values(?,?,?,?,?,?,?,?,?,?,?,?)";
            stm = new DBContext().connection.prepareStatement(sql_insert);
            stm.setString(1, s.getStudentID());
            stm.setString(2, s.getStudentName());
            stm.setString(3, s.getAddress());
            stm.setString(4, s.getPhoneNumber());
            stm.setString(5, s.getGender());
            stm.setString(6, s.getAccount());
            stm.setString(7, s.getPassword());
            stm.setString(8, s.getMajor());
            stm.setString(9, s.getSchool_year());
            stm.setString(10, s.getTimeFinish());
            stm.setString(11, s.getCampus());
            stm.setString(12, s.getAvatar());
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void delete(String id) {
        try {
            String sql_delete = "Delete from Student where StudentID = ?";
            stm = new DBContext().connection.prepareStatement(sql_delete);
            stm.setString(1, id);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void upudate(Student s) {
        try {
            String sql_update = "UPDATE Student\n"
                    + "SET \n"
                    + "    Student_Name = ?,\n"
                    + "    Address = ?,\n"
                    + "    Phone_number = ?,\n"
                    + "    Gender = ?,\n"
                    + "    account = ?,\n"
                    + "    password = ?,\n"
                    + "    Major_id = ?,\n"
                    + "    school_year = ?,\n"
                    + "    Time_finish = ?,\n"
                    + "    Campus = ?,\n"
                    + "    Avatar = ?\n"
                    + "WHERE StudentID = ?;";
            stm = new DBContext().connection.prepareStatement(sql_update);
            stm.setString(1, s.getStudentName());
            stm.setString(2, s.getAddress());
            stm.setString(3, s.getPhoneNumber());
            stm.setString(4, s.getGender());
            stm.setString(5, s.getAccount());
            stm.setString(6, s.getPassword());
            stm.setString(7, s.getMajor());
            stm.setString(8, s.getSchool_year());
            stm.setString(9, s.getTimeFinish());
            stm.setString(10, s.getCampus());
            stm.setString(11, s.getAvatar());
            stm.setString(12, s.getStudentID());
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Student getStudentbyID(String id) {
        Student s = null;
        try {
            String strSelect = "Select * from Student where StudentID = ?";
            stm = new DBContext().connection.prepareStatement(strSelect);
            stm.setString(1, id);
            rs = stm.executeQuery();
            if (rs.next()) {
                s = new Student(rs.getString("StudentID"),
                        rs.getString("Student_Name"),
                        rs.getString("Address"),
                        rs.getString("Phone_number"),
                        rs.getString("Gender"),
                        rs.getString("account"),
                        rs.getString("password"),
                        rs.getString("Major_id"),
                        rs.getString("school_year"),
                        rs.getString("Time_finish"), rs.getString("Campus"),
                        rs.getString("Avatar"));
                return s;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return s;
    }

    public int countStudentByCampus(String campus) {
        int count = 0;
        try {
            String strSelect = "Select COUNT (*) AS total from Student where Campus = ?";
            stm = new DBContext().connection.prepareStatement(strSelect);
            stm.setString(1, campus);
            rs = stm.executeQuery();
            if (rs.next()) {
                count = rs.getInt("total");
            }
        } catch (SQLException ex) {
            Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    public int countAllStudent() {
        int count = 0;
        try {
            String strSelect = "Select COUNT (*) AS total from Student";
            stm = new DBContext().connection.prepareStatement(strSelect);
            rs = stm.executeQuery();
            if (rs.next()) {
                count = rs.getInt("total");
            }
        } catch (SQLException ex) {
            Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }
    
     public int countMale() {
        int count = 0;
        try {
            String strSelect = "Select COUNT (*) AS total from Student where Gender = ?";
            stm = new DBContext().connection.prepareStatement(strSelect);
            stm.setString(1, "'" + "M" + "'");
            rs = stm.executeQuery();
            if (rs.next()) {
                count = rs.getInt("total");
            }
        } catch (SQLException ex) {
            Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    public int countStudentByMajor(String major) {
        int count = 0;
        try {
            String strSelect = "Select COUNT (*) AS total from Student where Major_id = ?";
            stm = new DBContext().connection.prepareStatement(strSelect);
            stm.setString(1, major);
            rs = stm.executeQuery();
            if (rs.next()) {
                count = rs.getInt("total");
            }
        } catch (SQLException ex) {
            Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    public static void main(String[] args) {
        StudentDAO o = new StudentDAO();
//        Student temp = new Student("GHGHGHGH", "XYZTKLM", "Thôn 4", "0862423204", "F", "ạdfsd", "s", "MC", "K19", "SP10", "Cần thơ", null);
//        o.upudate(temp);
//        int c = o.countStudentByCampus("Đà nẵng");
        System.out.println(o.countMale());
    }

    public List<Student> getallStudentbyCampus(String campus) {
        List<Student> list = new ArrayList<>();
        try {
            String strSelect = "select * from Student where Campus = ?";
            stm = new DBContext().connection.prepareStatement(strSelect);
            stm.setString(1, campus);
            rs = stm.executeQuery();
            while (rs.next()) {
                Student nd = new Student(rs.getString("StudentID"),
                        rs.getString("Student_Name"),
                        rs.getString("Address"),
                        rs.getString("Phone_number"),
                        rs.getString("Gender"),
                        rs.getString("account"),
                        rs.getString("password"),
                        rs.getString("Major_id"),
                        rs.getString("school_year"),
                        rs.getString("Time_finish"), rs.getString("Campus"),
                        rs.getString("Avatar"));
                list.add(nd);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Student> pagingStudent(int i) {
        List<Student> list = new ArrayList<>();
        try {
            String strSelect = "Select* from Student\n"
                    + "order by StudentID \n"
                    + "OFFSET ? rows fetch next 8 rows only";
            stm = new DBContext().connection.prepareStatement(strSelect);
            stm.setInt(1, (i - 1) * 8);
            rs = stm.executeQuery();
            while (rs.next()) {
                Student nd = new Student(rs.getString("StudentID"),
                        rs.getString("Student_Name"),
                        rs.getString("Address"),
                        rs.getString("Phone_number"),
                        rs.getString("Gender"),
                        rs.getString("account"),
                        rs.getString("password"),
                        rs.getString("Major_id"),
                        rs.getString("school_year"),
                        rs.getString("Time_finish"), rs.getString("Campus"),
                        rs.getString("Avatar"));
                list.add(nd);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }



    public Student getAccount(String acc, String pass) {
        Student s = null;
        try {
            String strSelect = "Select * from Student where [account] = ? and [password] = ?";
            stm = new DBContext().connection.prepareStatement(strSelect);
            stm.setString(1, acc);
            stm.setString(2, pass);
            rs = stm.executeQuery();
            if (rs.next()) {
                s = new Student(rs.getString("StudentID"),
                        rs.getString("Student_Name"),
                        rs.getString("Address"),
                        rs.getString("Phone_number"),
                        rs.getString("Gender"),
                        rs.getString("account"),
                        rs.getString("password"),
                        rs.getString("Major_id"),
                        rs.getString("school_year"),
                        rs.getString("Time_finish"), rs.getString("Campus"),
                        rs.getString("Avatar"));
                return s;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return s;
    }
}
