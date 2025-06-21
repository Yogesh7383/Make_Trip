/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mytours_travel.servlet;

import com.mysql.cj.xdevapi.PreparableStatement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;

/**
 *
 * @author Yash Kharti
 */
@WebServlet(name = "updateprofileservlet", urlPatterns = {"/updateprofileservlet"})
public class updateprofileservlet extends HttpServlet {

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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet updateprofileservlet</title>");
            out.println("</head>");
            out.println("<body>");
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

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);

        PrintWriter out = response.getWriter();

//        String uname = request.getParameter("uname");
////        String uemail = request.getParameter("uemail");
//        String umobile = request.getParameter("umobile");
//
//        Connection conn = null;
//        PreparedStatement ps = null;
//        HttpSession session = request.getSession();
//        RequestDispatcher dispather = null;
//
//        try {
//            Class.forName("com.mysql.jdbc.Driver");
//            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mytours", "root", "codeyash");
//
//
//            String updateQuery = "UPDATE users SET uname = ?, umobile = ? WHERE user_id = 1";
//            ps = conn.prepareStatement(updateQuery);
//
//           
//            ps.setString(1, uname);
//            ps.setString(2, umobile);
//
//              
//            
//            int rowsAffected = ps.executeUpdate();
//            dispather = request.getRequestDispatcher("yourprofile.jsp");
//           
//            if (rowsAffected > 0) {
//              
//                out.println("User profile updated successfully!");
//           
//            } else {
//               
//                out.println("Failed to update user profile.");
//            }
//            
//            dispather.forward(request, response);
//        } catch (Exception e) {
//           out.println(e);
//        }  finally {
//               
//                try {
//                    if (ps != null) {
//                        ps.close();
//                    }
//                    if (ps != null) {
//                        ps.close();
//                    }
//                    if (conn != null) {
//                        conn.close();
//                    }
//                } catch (SQLException ex) {
//                    ex.printStackTrace();
//                }
//            }
        
         String uname = request.getParameter("uname");
//        String uemail = request.getParameter("uemail");
            String umobile = request.getParameter("umobile");
            String userid = request.getParameter("user_id");
          
            Connection conn = null;
            PreparedStatement ps = null;
            HttpSession session = request.getSession();
            RequestDispatcher dispather = null;

            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mytours", "root", "codeyash");

                String updateQuery = "UPDATE users SET uname = ?, umobile = ? WHERE user_id = 2";
                ps = conn.prepareStatement(updateQuery);

                // Set the parameters in the prepared statement
                ps.setString(1, uname);
                ps.setString(2, umobile);

                // Execute the update
                int rowsAffected = ps.executeUpdate();

                // Check if booking was deleted successfully
                if (rowsAffected > 0) {
                    session.setAttribute("success", " profile update successfully");
                    out.println(" profile update successfully");

                    response.sendRedirect("yourprofile.jsp");

                } else {

                    session.setAttribute("failed", " profile update failed");
                    out.println("your booking is not found");
                    response.sendRedirect("yourprofile.jsp");

                }
     //              dispatcher.forward(request, response);
                //             dispatcher.forward(request, response);

                 // Pass messages map to the success JSP page
                //            RequestDispatcher dispatcher = request.getRequestDispatcher("bphistory.jsp");
            } catch (Exception ex) {
                ex.printStackTrace();
            } finally {
                // Close resources
                try {
                    if (ps != null) {
                        ps.close();
                    }
                    if (ps != null) {
                        ps.close();
                    }
                    if (conn != null) {
                        conn.close();
                    }
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
