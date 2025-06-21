/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
*/

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.UUID;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Yash Kharti
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");

            String aemail = request.getParameter("aemail");
            String password = request.getParameter("password");

            out.println("<title>Login page</title>");
            out.println("</head>");
            out.println("<body>");

            Connection conn;
            PreparedStatement pst;
            HttpSession session = request.getSession();
            RequestDispatcher dispatcher = null;

            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Admin", "root", "yogesh_7383");

                String sql = "select * from login where aemail = ? and password = ?";
                pst = conn.prepareStatement(sql);

                pst.setString(1,aemail);
                pst.setString(2,password);

                ResultSet rs = pst.executeQuery();
                if (rs.next()) {

                    String email = rs.getString(1);
                    String pass = rs.getString(2);
                    
                    session.setAttribute("aemail", aemail);
                    
//                    out.println("login");
                    // Redirect to home page
                   // response.sendRedirect("user/home.jsp");
                  //session.setAttribute("", username);
//                    session.setAttribute("pass", password);
//                    out.println("login");
                    // Redirect to home page
                   // session.setAttribute(uemail, password);
//                     String token = UUID.randomUUID().toString();
            
            // Create a cookie to store the token
           
                    response.sendRedirect("Admin/admin.jsp");

//                   session.setAttribute("name", rs.getString("uname"));
//                   dispather = request.getRequestDispatcher("index.jsp");
                } else {
//                     request.setAttribute("status", "failed");
//                     dispather = request.getRequestDispatcher("login.jsp");
//                     out.println("Invalid Username or Password");
                   //    out.println("Inavalid email or Password !");

                    session.setAttribute("failed", "Inavalid Email or Password !");
                    out.println("Inavalid Email or Password !");
                    response.sendRedirect("Admin/admin.jsp");

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
