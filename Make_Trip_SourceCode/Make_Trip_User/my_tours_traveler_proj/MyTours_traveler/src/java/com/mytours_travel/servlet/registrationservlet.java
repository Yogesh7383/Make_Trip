/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mytours_travel.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.sql.DriverManager;
import java.util.logging.Level;
import java.util.logging.Logger;
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
@WebServlet(name = "registrationservlet", urlPatterns = {"/registrationservlet"})
public class registrationservlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        PrintWriter out = response.getWriter();

        String uname = request.getParameter("name");
        String uemail = request.getParameter("email");
        String upwd = request.getParameter("pass");
        String umobile = request.getParameter("contact");

//          out.println(uname);
//          out.println(uemail);
//          out.println(upwd);
//          out.println(umobile);
//                             database connection
        Connection conn;
        HttpSession session = request.getSession();
        
//        PreparedStatement pst;
//        RequestDispatcher requestdispatcher;

        try{
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mytours", "root", "codeyash");
            out.println("Connected ok");

//            String sql = "insert into users(uname,upwd,uemail,umobile) values(?,?,?,?)";
//            pst = conn.prepareStatement(sql);
//
//            pst.setString(1, uname);
//            pst.setString(2, upwd);
//            pst.setString(3, uemail);
//            pst.setString(4, umobile);
           
            PreparedStatement p = conn.prepareStatement("select * from users where uemail=?");
            p.setString(1, uemail);
            ResultSet rs = p.executeQuery();
            if(rs.next()) {
                response.sendRedirect("newregister.jsp");
                session.setAttribute("errormess", "Username already existed, Please try another");
                out.println("Username already existed, Please try another");
            } else {
               PreparedStatement ps = conn.prepareStatement("insert into users(uname,upwd,uemail,umobile) values(?,?,?,?)");//creating statment to run query
               ps.setString(1, uname);
               ps.setString(2, upwd);
               ps.setString(3, uemail);
               ps.setString(4, umobile);
           
                ps.executeUpdate();
                session.setAttribute("SuccessMess", "Successfully registered");
                out.println("Successfully registered");
                response.sendRedirect("user/newregister.jsp");

//            int rowCount = pst.executeUpdate();
//            
//            if (rowCount > 0) {
//                // Registration successful
//                   req.setAttribute("message", "Registration successful!");
//            } else {
//                // Registration failed
//                req.setAttribute("message", "Registration failed. Please try again.");
//            }
//
//            // Redirect back to the registration page
//            req.getRequestDispatcher("newregister.jsp").forward(req, res);
//             requestdispatcher = req.getRequestDispatcher("registration.jsp");
//            if (rowCount > 0) {
//                req.setAttribute("status", "success");
//                
//                 out.println("registartion successfuly");
//            } else {
//                req.setAttribute("status", "failed");
//                  out.println("registartion failed");
//            }
//            requestdispatcher.forward(req, res);
            }
            }catch(Exception e) {

            e.printStackTrace();
            out.println(e);
        }
        }

        @Override
        public String getServletInfo() {
        return "Short description";
        }// </editor-fold>

    }
