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
import model.Admin;
import model.Student;

/**
 *
 * @author TUNG PHAM
 */
public class AdminDAO {

    PreparedStatement stm;
    ResultSet rs;

    public List<Admin> getallAdmin() {
        List<Admin> list = new ArrayList<>();
        try {
            String strSelect = "Select * from Admin";
            stm = new DBContext().connection.prepareStatement(strSelect);
            rs = stm.executeQuery();
            while (rs.next()) {
                Admin nd = new Admin(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8)
                );
                list.add(nd);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public Admin getAccount(String acc, String pass) {
        Admin list = null;
        try {
            String strSelect = "Select * from Admin where [account] = ? and [password] = ?";
            stm = new DBContext().connection.prepareStatement(strSelect);
            stm.setString(1, acc);
            stm.setString(2, pass);
            rs = stm.executeQuery();
            if (rs.next()) {
                list = new Admin(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8)
                );
                return list;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
    public Admin getAccountbyAccount(String acc) {
        Admin list = null;
        try {
            String strSelect = "Select * from Admin where [account] = ?";
            stm = new DBContext().connection.prepareStatement(strSelect);
            stm.setString(1, acc);
            rs = stm.executeQuery();
            if (rs.next()) {
                list = new Admin(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8)
                );
                return list;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
    public int maxID() {
        int count = 0;
        try {
            String strSelect = "Select max(admin_ID) as max from Admin";
            stm = new DBContext().connection.prepareStatement(strSelect);
            rs = stm.executeQuery();
            if (rs.next()) {
                count = rs.getInt("max");
            }
        } catch (SQLException ex) {
            Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }
    

    public void createAdmin(String name, String account, String pass, String phone, String add, String gender) {
        try {
            int temp = maxID();
            Admin list = new Admin();
            String strSelect = "INSERT INTO Admin (admin_ID, admin_Name, Address, Phone_number, Gender, account, password) VALUES\n"
                    + "(?, ?, ?, ?, ?, ?, ?)";
            stm = new DBContext().connection.prepareStatement(strSelect);
            stm.setInt(1, temp+ 1);
            stm.setString(2, name);
            stm.setString(3, add);
            stm.setString(4, phone);
            stm.setString(5, gender);
            stm.setString(6, account);
            stm.setString(7, pass);
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AdminDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static void main(String[] args) {
        AdminDAO o = new AdminDAO();
        Admin x = o.getAccount("adminA", "password123");
        o.createAdmin("Giang", "hallo", "xyz", "001521", "Hà Nội", "F");
        List<Admin> t = o.getallAdmin();
        for(Admin temp: t){
            System.out.println(temp.toString());
        }

    }
}
