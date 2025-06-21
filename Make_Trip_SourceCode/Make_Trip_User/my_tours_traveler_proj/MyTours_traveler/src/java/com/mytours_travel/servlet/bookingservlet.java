/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mytours_travel.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
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

/**
 *
 * @author Yash Kharti
 */
@WebServlet(name = "bookingservlet", urlPatterns = {"/bookingservlet"})
public class bookingservlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>booking package</title>");

            String bname = request.getParameter("name");
            String bnumber = request.getParameter("number");
            String bdate = request.getParameter("date");
            String baddress = request.getParameter("address");
            String badults = request.getParameter("adults");
            String bpickup = request.getParameter("pickup");
            String bpackage = request.getParameter("package");
            String bpayment = request.getParameter("payment");

            out.println("</head>");
            out.println("<body>");

            Connection conn;
            PreparedStatement pst;
            HttpSession session = request.getSession();
            RequestDispatcher dispather = null;

            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mytours", "root", "codeyash");
//                out.println("connetion ok");
                String sql = "insert into booking(b_name,b_number,b_date,b_address,b_adults,b_pickuppoint,b_package,b_payment)"
                        + "values(?,?,?,?,?,?,?,?)";

                pst = conn.prepareStatement(sql);

                pst.setString(1, bname);
                pst.setString(2, bnumber);
                pst.setString(3, bdate);
                pst.setString(4, baddress);
                pst.setString(5, badults);
                pst.setString(6, bpickup);
                pst.setString(7, bpackage);
                pst.setString(8, bpayment);

                int rowCount = pst.executeUpdate();

                if(bname == null || bname.isEmpty() || bnumber == null || bnumber.isEmpty() || bdate == null || bdate.isEmpty()
                        || baddress == null || baddress.isEmpty() || badults == null || badults.isEmpty() || bpickup == null || bpickup.isEmpty()) {

                    
                    conn.rollback();
                    response.sendRedirect("user/booking.jsp");
                    session.setAttribute("failed", "booking failed , please fill all details !");
                    out.println("booking failed , please fill all details !");

                } else {

//                    out.println("booking failed");
                    response.sendRedirect("user/booking.jsp");
                    session.setAttribute("success", "booking successfuly 😊");
//                    out.println("booking successfuly 😊");

                }

//               dispather = request.getRequestDispatcher("user/booking.jsp");
//             if (rowCount > 0) {
//                
////                 request.setAttribute("status", "success");
//                  response.sendRedirect("user/booking.jsp");
//                  session.setAttribute("success", "booking successfuly 😊");
//                  out.println("booking successfuly 😊");
//            } else {
////                 request.setAttribute("status", "failed");
//                  session.setAttribute("failed", "booking failed , please fill all details !");
//                  out.println("booking failed , please fill all details !");
//                  response.sendRedirect("user/booking.jsp");
////                 out.println("booking failed");
//                  
//             }
//            dispather.forward(request,response);
            } catch (Exception e) {
                e.printStackTrace();
                out.print(e);
                
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

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
