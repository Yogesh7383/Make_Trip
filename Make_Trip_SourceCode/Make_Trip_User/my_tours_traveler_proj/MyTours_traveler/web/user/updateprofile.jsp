<%-- 
    Document   : updateprofile
    Created on : May 7, 2024, 4:00:58 PM
    Author     : Yash Kharti
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>profile Page</title>
    </head>
    <body>

        <%

            String uname = request.getParameter("uname");
//        String uemail = request.getParameter("uemail");
            String umobile = request.getParameter("umobile");
            String userid = request.getParameter("user_id");

            Connection conn = null;
            PreparedStatement ps = null;
            session = request.getSession();
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
        %>     
    </body>
</html>
