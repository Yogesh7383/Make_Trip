/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mytours_travel.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.*;
import javax.swing.JOptionPane;

/**
 *
 * @author Yash Kharti
 */
@WebServlet(name = "new_registerservlet", urlPatterns = {"/new_registerservlet"})
public class new_registerservlet extends HttpServlet {

    protected void processRequest(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        res.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = res.getWriter()) {

            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet new_registerservlet</title>");

            String uname = req.getParameter("name");
            String uemail = req.getParameter("email");
            String upwd = req.getParameter("pass");
            String umobile = req.getParameter("contact");

            out.println("</head>");
            out.println("<body>");

            Connection conn;
            PreparedStatement pst;
//            RequestDispatcher requestdispatcher;

            try{

                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mytours", "root", "codeyash");
//                out.println("Connected ok");

                String sql = "insert into users(uname,upwd,uemail,umobile) values(?,?,?,?)";
                pst = conn.prepareStatement(sql);

                pst.setString(1, uname);
                pst.setString(2, upwd);
                pst.setString(3, uemail);
                pst.setString(4, umobile);

                
                int rowCount = pst.executeUpdate();

                     HttpSession httpsession = req.getSession();
                     httpsession.setAttribute("message", "registrotion successful !!");
                     res.sendRedirect("registration.jsp");
                     return;                   
//                     requestdispatcher = req.getRequestDispatcher("registration.jsp");
            
//                     out.println("successfully");
                
                  
                
//                if (rowCount > 0) {
//                    req.setAttribute("status", "success");
//                 out.println("registartion successfuly");
//                } else {
//                    req.setAttribute("status", "failed");
//                  out.println("registartion failed");
//                }
//          
//                requestdispatcher.forward(req, res);

            } catch (Exception e) {

//               out.println("<h1>error....</h1>");
                e.printStackTrace();
                out.println(e);

            }

            out.println("</body>");
            out.println("</html>");
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
