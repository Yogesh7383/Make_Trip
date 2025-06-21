/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mytours_travel.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.*;
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
@WebServlet(name = "contactservlet", urlPatterns = {"/contactservlet"})
public class contactservlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */

            String uemail = request.getParameter("uemail");
            String ufeedback = request.getParameter("feedback");

            Connection conn = null;
            PreparedStatement pst;
            HttpSession session = request.getSession();

            try {

                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mytours", "root", "codeyash");
//                out.println("connetion ok");

                String sql = "insert into feedback(femail,ufeedback) values(?,?)";

                pst = conn.prepareStatement(sql);

                pst.setString(1, uemail);
                pst.setString(2, ufeedback);

                int rowCount = pst.executeUpdate();

                if (uemail == null || uemail.isEmpty() || ufeedback == null || ufeedback.isEmpty()) {

                    session.setAttribute("failed", "feedback send failed !");
                    out.println("feedback send failed !");
                    response.sendRedirect("user/contactus.jsp");

//                response.sendRedirect("user/contactus.jsp");
//                session.setAttribute("success", "feedback send successfuly😊");
//                out.println("feedback send successfuly😊");//
                } else {

                    response.sendRedirect("user/contactus.jsp");
                    session.setAttribute("success", "feedback send successfuly😊");
                    out.println("feedback send successfuly😊");//

                }

            } catch (Exception e) {

                e.printStackTrace();
                out.print(e);
            } finally {

                try {
                    conn.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }

        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);

//        PrintWriter out = response.getWriter();
//        String uname = request.getParameter("name");
//        String uemail = request.getParameter("email");
//        String ufeedback = request.getParameter("feedback");
//
//        Connection conn;
//        PreparedStatement pst;
//        HttpSession session = request.getSession();
//
//        try{
//            Class.forName("com.mysql.jdbc.Driver");
//            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mytours", "root", "codeyash");
//                out.println("connetion ok");
//            
//            String sql = "insert into feedback(uemail,ufeedback) values(?,?)";
//
//            pst = conn.prepareStatement(sql);
//            
//            pst.setString(1, uemail);
//            pst.setString(2, ufeedback);
//
//            int rowCount = pst.executeUpdate();
//            
//            if(rowCount > 0){
//             
//                response.sendRedirect("user/contact-us.jpg");
//                session.setAttribute("success", "feedback send successfuly😊");
//                out.println("feedback send successfuly😊");
//            }else{
//            
//                session.setAttribute("failed", " feedback send failed !");
//                out.println("feedback send failed !");
//                response.sendRedirect("user/contact-us.jpg");
//            }
//            
//            
//        } catch (Exception e) {
//
//            e.printStackTrace();
//            out.print(e);
//
//        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
