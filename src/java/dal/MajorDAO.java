/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.Major;
import java.sql.SQLException;

/**
 *
 * @author TUNG PHAM
 */
public class MajorDAO extends DBContext {
    
    PreparedStatement stm;
    ResultSet rs;

    public String getMajorbyID(String id){
        String s = null;
        try {
            String strSelect = "Select Major_name from Major where Major_id = ?";
            stm = new DBContext().connection.prepareStatement(strSelect);
            stm.setString(1, id);
            rs = stm.executeQuery();
            if (rs.next()) {
                    s = rs.getString("Major_name");
                return s;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return s;
    }
    public static void main(String[] args) {
        MajorDAO o = new MajorDAO();
        String temp = o.getMajorbyID("SE");
        System.out.println(temp);

    }
}
