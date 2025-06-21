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

            String hname = request.getParameter("hname");
//        String uemail = request.getParameter("uemail");
            String destination = request.getParameter("Destination");
            String RoomsType = request.getParameter("RoomsType");
            String price = request.getParameter("price");
            String offers = request.getParameter("offers");

            Connection conn = null;
            PreparedStatement ps = null;
            session = request.getSession();
            RequestDispatcher dispather = null;

            try {
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/user", "root", "yogesh_7383");

                String updateQuery = "UPDATE package SET pname = ?, Destination = ?, price=?, PackageDetail=?, offers=? WHERE pid = 1";
                ps = conn.prepareStatement(updateQuery);

                // Set the parameters in the prepared statement
                ps.setString(1, hname);
                ps.setString(2, destination);
                ps.setString(3, RoomsType);
                ps.setString(4, price);
                ps.setString(5, offers);

                // Execute the update
                int rowsAffected = ps.executeUpdate();

                // Check if booking was deleted successfully
                if (rowsAffected > 0) {
                    session.setAttribute("success", " Hotel update successfully");
                    out.println(" Hotel update successfully");

                    response.sendRedirect("updateHotel.jsp");

                } else {

                    session.setAttribute("failed", " Hotel update Successfully");
                    out.println("update Hotel is not found");
                    response.sendRedirect("updateHotel.jsp");

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
