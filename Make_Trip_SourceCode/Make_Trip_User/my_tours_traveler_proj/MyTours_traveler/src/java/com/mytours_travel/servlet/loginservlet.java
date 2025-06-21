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
import java.sql.ResultSet;
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
@WebServlet(name = "loginservlet", urlPatterns = {"/loginservlet"})
public class loginservlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");

            String uemail = request.getParameter("useremail");
            String upwd = request.getParameter("password");

            out.println("<title>Login page</title>");
            out.println("</head>");
            out.println("<body>");

            Connection conn;
            PreparedStatement pst;
            HttpSession session = request.getSession();
            RequestDispatcher dispather = null;

            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mytours", "root", "codeyash");

                String sql = "select * from users where uemail = ? and upwd = ?";
//                String sql = "select uname from users where uemail = ? and upwd = ?";
                pst = conn.prepareStatement(sql);

                pst.setString(1, uemail);
                pst.setString(2, upwd);

                ResultSet rs = pst.executeQuery();
                if (rs.next()) {

                  
                    String email = rs.getString(1);
                    String pass = rs.getString(2);
                    
                    session.setAttribute("uemail", uemail);
                    
//                    out.println("login");
                    // Redirect to home page
                    response.sendRedirect("user/home.jsp");

//                   session.setAttribute("name", rs.getString("uname"));
//                   dispather = request.getRequestDispatcher("index.jsp");
                } else {
                     
                    session.setAttribute("failed", "Inavalid username or Password !");
                    out.println("Inavalid username or Password !");
                    response.sendRedirect("user/login.jsp");

                }

//                dispather.forward(request, response);
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
