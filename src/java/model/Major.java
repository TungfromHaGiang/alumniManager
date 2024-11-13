/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author TUNG PHAM
 */
public class Major {
    private String majorId;
    private String majorName;

    public Major() {
    }

    public Major(String majorId, String majorName) {
        this.majorId = majorId;
        this.majorName = majorName;
    }

    public String getMajorId() {
        return majorId;
    }

    public void setMajorId(String majorId) {
        this.majorId = majorId;
    }

    public String getMajorName() {
        return majorName;
    }

    @Override
    public String toString() {
        return "Major{" + "majorId=" + majorId + ", majorName=" + majorName + '}';
    }

    public void setMajorName(String majorName) {
        this.majorName = majorName;
    }
    
}
