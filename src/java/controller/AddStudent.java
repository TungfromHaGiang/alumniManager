/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.StudentDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import model.Student;

/**
 *
 * @author TUNG PHAM
    */
   @MultipartConfig
public class AddStudent extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
           response.sendRedirect("manage");
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
        processRequest(request, response);
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
        String name = request.getParameter("name");
        String id= request.getParameter("id");
        String add = request.getParameter("Address");
        String gender = request.getParameter("gender");
        String phone = request.getParameter("Phone");
        String major = request.getParameter("Major");
        String school_year = request.getParameter("school_year");
        String timeFinish = request.getParameter("timeFinish");
        String campus = request.getParameter("campus");
        String account = request.getParameter("account");
        String password = request.getParameter("password");
        String uploadDirectory = request.getServletContext().getRealPath("")+File.separator+"Avatar_user_upload"; //lấy ra đường dẫn của project sau đó vào thư mục Avatar_user_upload
        Path uploadPath = Paths.get(uploadDirectory);
                if (!Files.exists(uploadPath)) {
                    Files.createDirectories(uploadPath);
                }
        Part part = request.getPart("avatar");
        String fileName = id+"_avatar_" + part.getSubmittedFileName();
        String filePath = uploadDirectory + File.separator + fileName;
        String uploadDirectoryForSQL = "Avatar_user_upload" + File.separator + fileName;
        part.write(filePath);
        Student s = new Student(id, name, add, phone, gender, account, password, major, school_year, timeFinish, campus, uploadDirectoryForSQL);
        StudentDAO st = new StudentDAO();
        st.addStudent(s);
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
