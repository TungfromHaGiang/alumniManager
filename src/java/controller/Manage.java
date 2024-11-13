/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.StudentDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import java.util.*;
import model.Student;

/**
 *
 * @author TUNG PHAM
 */
public class Manage extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            request.getRequestDispatcher("Manage.jsp").forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        StudentDAO st = new StudentDAO();
        String index = request.getParameter("index");
        int i;
        if(index == null){
            i = 1;
        }else{
            i = Integer.parseInt(index);
            
        }
        List<Student> nstudent = st.pagingStudent(i);
        String name = request.getParameter("name_query");
        if(name != null){
            nstudent = st.getallStudentbyName(name);
        }
        String local = request.getParameter("local");
        if(local == null && name != null){
             nstudent = st.getallStudentbyName(name);
        }else if(local == null && name == null){
            nstudent = st.pagingStudent(i);
        }   
        else{
             int loc = Integer.parseInt(local);
             switch (loc) {
                case 1:
                    nstudent = st.getallStudentbyCampus("Hòa Lạc");
                    break;
                     case 2:
                    nstudent = st.getallStudentbyCampus("Hồ Chí Minh");
                    break;
                     case 3:
                    nstudent = st.getallStudentbyCampus("Đà Nẵng");
                    break;
                     case 4:
                    nstudent = st.getallStudentbyCampus("Quy Nhơn");
                    break;
                     case 5:
                    nstudent = st.getallStudentbyCampus("Cần Thơ");
                    break;
                default:
                    throw new AssertionError();
            }
        }
        int count = st.countAllStudent();
        int endP = count/8;
        if(count%8 != 0){
            endP++;
        }
        request.setAttribute("endP", endP);
        request.setAttribute("ndata", nstudent);
        String choice = request.getParameter("choice");
        if (choice != null) {
            if (choice.equals("2")) {
                Manage.orderZtoA(nstudent);
                request.setAttribute("ndata", nstudent);
            } else if (choice.equals("1")) {
                Manage.orderAtoZ(nstudent);
                request.setAttribute("ndata", nstudent);
            }
        }
        processRequest(request, response);
    }

    public static List<Student> orderAtoZ(List<Student> nstudent) {
        nstudent.sort(Comparator.comparing(Student::getStudentID));
        return nstudent;
    }

    public static List<Student> orderZtoA(List<Student> nstudent) {
        nstudent.sort(Comparator.comparing(Student::getStudentID).reversed());
        return nstudent;
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
