<%-- 
    Document   : deletePackage
    Created on : May 6, 2024, 7:12:05 PM
    Author     : Admin
--%>


<%@page import="java.sql.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
                 <link rel="icon" type="image/png" sizes="32x32" href="../Image/logo.png">
    </head>
    <body>

        <%
            session = request.getSession();
            // Retrieve booking ID from request parameter
            String bookingId = request.getParameter("pid");

            // Ensure bookingId is not empty
            if (bookingId != null && !bookingId.isEmpty()) {
                Connection conn = null;
                PreparedStatement pstmt = null;
                RequestDispatcher dispatcher;

                try {
                    // Establish database connection
                    Class.forName("com.mysql.jdbc.Driver");
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/user", "root", "yogesh_7383");

                    // Prepare statement to delete booking
                    String sql = "DELETE FROM package WHERE pid = ?";
                    pstmt = conn.prepareStatement(sql);
                    pstmt.setString(1, bookingId);

                    // Execute delete query
                    int rowsAffected = pstmt.executeUpdate();

                    // Check if booking was deleted successfully
                    if (rowsAffected > 0) {
                        session.setAttribute("success", " your package cancel successfuly ");
                        out.println("your package cancel successfuly");

                        response.sendRedirect("showPackage.jsp");
     //                   dispatcher = request.getRequestDispatcher("bphistory.jsp");

                    } else {

                        session.setAttribute("failed", "your Package cancel failed ");
                        out.println("your Package cancel failed");
                        response.sendRedirect("showPackage.jsp");
                        
                    }
     //              dispatcher.forward(request, response);
     //             dispatcher.forward(request, response);

                 // Pass messages map to the success JSP page
     //            RequestDispatcher dispatcher = request.getRequestDispatcher("bphistory.jsp");
                } catch (Exception ex) {
                    ex.printStackTrace();
        %>
        <p> An error occurred while deleting bookings.</p>
        <%
            } finally {
                // Close resources
                try {
                    if (pstmt != null) {
                        pstmt.close();
                    }
                    if (pstmt != null) {
                        pstmt.close();
                    }
                    if (conn != null) {
                        conn.close();
                    }
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
        } else {
        %>
        <p>Invalid Package ID.</p>
        <%
            }
        %>


    </body>
</html>
