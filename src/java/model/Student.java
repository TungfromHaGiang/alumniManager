/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import dal.MajorDAO;
import java.util.ArrayList;
import java.util.List;
import model.Subject;
import model.Achievement;

/**
 *
 * @author TUNG PHAM
 */
public class Student {

    private String studentID;
    private String studentName;
    private String address;
    private String phoneNumber;
    private String gender;
    private String account;
    private String password;
    private String major;
    private String school_year;
    private String timeFinish;
    private String campus;
    private String avatar;
    private List<Subject> study = new ArrayList<>();
    private List<Achievement> celebrate = new ArrayList<>();

    public Student() {
    }

    public Student(String studentID, String studentName, String address, String phoneNumber, String gender, String account, String password, String major, String school_year, String timeFinish, String campus, String avatar) {
        this.studentID = studentID;
        this.studentName = studentName;
        this.address = address;
        this.phoneNumber = phoneNumber;
        this.gender = gender;
        this.account = account;
        this.password = password;
        this.major = major;
        this.school_year = school_year;
        this.timeFinish = timeFinish;
        this.campus = campus;
        this.avatar = avatar;
    }

    public List<Subject> getStudy() {
        return study;
    }

    public void setStudy(List<Subject> study) {
        this.study = study;
    }

    public String getStudentID() {
        return studentID;
    }

    public void setStudentID(String studentID) {
        this.studentID = studentID;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
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

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getTimeFinish() {
        return timeFinish;
    }

    public void setTimeFinish(String timeFinish) {
        this.timeFinish = timeFinish;
    }

    public String getCampus() {
        return campus;
    }

    public void setCampus(String campus) {
        this.campus = campus;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getSchool_year() {
        return school_year;
    }
    
    public String getMajorName(){
        MajorDAO temp = new MajorDAO();
        return temp.getMajorbyID(this.getMajor());
    }

    @Override
    public String toString() {
        return "Student{" + "studentID=" + studentID + ", studentName=" + studentName + ", address=" + address + ", phoneNumber=" + phoneNumber + ", gender=" + gender + ", account=" + account + ", password=" + password + ", major=" + major + ", school_year=" + school_year + ", timeFinish=" + timeFinish + ", campus=" + campus + ", avatar=" + avatar + ", study=" +  '}';
    }

    public void setSchool_year(String school_year) {
        this.school_year = school_year;
    }

    public List<Achievement> getCelebrate() {
        return celebrate;
    }

    public void setCelebrate(List<Achievement> celebrate) {
        this.celebrate = celebrate;
    }
    
    

}
