/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import model.Subject;

/**
 *
 * @author TUNG PHAM
 */
public class SubjectDAO {
    PreparedStatement stm;
    ResultSet rs;

    public List<Subject> getSubjectByID(String id){
        List<Subject> list = null;
         try {
            String strSelect = "Select * from Study where StudentID = ?";
            stm = new DBContext().connection.prepareStatement(strSelect);
            stm.setString(1, id);
            rs = stm.executeQuery();
            while (rs.next()) {
              Subject sb =  new Subject(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4));
                    list.add(sb);
            }
            return list;
        } catch (SQLException e) {
            System.out.println(e);
        }
         return list;
    }
    public static void main(String[] args) {
        SubjectDAO o = new SubjectDAO();
         List<Subject> temp = o.getSubjectByID("11112");
        System.out.println(temp.get(0).getSubjectID());

    }
}
