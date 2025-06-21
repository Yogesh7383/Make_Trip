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

/**
 *
 * @author Yash Kharti
 */
@WebServlet(name = "h_booking", urlPatterns = {"/h_booking"})
public class h_booking extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title> hotal booking</title>");

            String uhname = request.getParameter("uhname");
            String uhemail = request.getParameter("uhemail");
            String htype = request.getParameter("hoteltype");
            String troom = request.getParameter("trooms");
//            int troom = Integer.parseInt(request.getParameter("trooms"));

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

                String sql = "insert into h_booking(hu_name,hu_email,hotel_type,t_rooms) values(?,?,?,?)";

                pst = conn.prepareStatement(sql);

                pst.setString(1, uhname);
                pst.setString(2, uhemail);
                pst.setString(3, htype);
                pst.setString(4, troom);

                int rowCount = pst.executeUpdate();

                if (uhname == null || uhname.isEmpty() || uhemail == null || uhemail.isEmpty() || htype == null || htype.isEmpty() || troom == null || troom.isEmpty()) {

                    response.sendRedirect("user/hbook.jsp");
                    session.setAttribute("failed", "hotel booking failed!");
                    out.println("hotel booking failed !");

//                response.sendRedirect("user/contactus.jsp");
//                session.setAttribute("success", "feedback send successfuly😊");
//                out.println("feedback send successfuly😊");//
                } else {

                    response.sendRedirect("user/hbook.jsp");
                    session.setAttribute("success", "hotel booking successfuly😊");
                    out.println("hotel booking successfuly😊");

                }

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
