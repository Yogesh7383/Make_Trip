<%-- 
    Document   : deletebooking
    Created on : May 4, 2024, 7:03:12 PM
    Author     : Yash Kharti
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
            String bookingId = request.getParameter("bid");

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
                    String sql = "DELETE FROM booking WHERE bid = ?";
                    pstmt = conn.prepareStatement(sql);
                    pstmt.setString(1, bookingId);

                    // Execute delete query
                    int rowsAffected = pstmt.executeUpdate();

                    // Check if booking was deleted successfully
                    if (rowsAffected > 0) {
                        session.setAttribute("success", " your Package booking cancel successfuly ");
                        out.println("your  Package booking cancel successfuly");

                        response.sendRedirect("packagebooking.jsp");
     //                   dispatcher = request.getRequestDispatcher("bphistory.jsp");

                    } else {

                        session.setAttribute("failed", "your Package booking is not found ");
                        out.println("your package booking is not found");
                        response.sendRedirect("packagebooking.jsp");
                        
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
        <p>Invalid Package Booking ID.</p>
        <%
            }
        %>


    </body>
</html>
