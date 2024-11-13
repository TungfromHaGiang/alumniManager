/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author TUNG PHAM
 */
public class Admin {

    private int adminID;
    private String adminName;
    private String address;
    private String phoneNumber;
    private String gender;
    private String account;
    private String password;
    private String avatar;

    public Admin() {
    }

    public Admin(int adminID, String adminName, String address, String phoneNumber, String gender, String account, String password, String avatar) {
        this.adminID = adminID;
        this.adminName = adminName;
        this.address = address;
        this.phoneNumber = phoneNumber;
        this.gender = gender;
        this.account = account;
        this.password = password;
        this.avatar = avatar;
    }

    public int getAdminID() {
        return adminID;
    }

    public void setAdminID(int adminID) {
        this.adminID = adminID;
    }

    public String getAdminName() {
        return adminName;
    }

    public void setAdminName(String adminName) {
        this.adminName = adminName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    @Override
    public String toString() {
        return "Admin{" + "adminID=" + adminID + ", adminName=" + adminName + ", address=" + address + ", phoneNumber=" + phoneNumber + ", gender=" + gender + ", account=" + account + ", password=" + password + ", avatar=" + avatar + '}';
    }
    
}
