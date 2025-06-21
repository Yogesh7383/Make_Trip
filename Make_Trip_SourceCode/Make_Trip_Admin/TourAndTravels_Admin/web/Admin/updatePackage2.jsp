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

            String pname = request.getParameter("pname");
//        String uemail = request.getParameter("uemail");
            String destination = request.getParameter("Destination");
            String price = request.getParameter("price");
            String PackageDetail = request.getParameter("PackageDetail");
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
                ps.setString(1, pname);
                ps.setString(2, destination);
                ps.setString(3, price);
                ps.setString(4, PackageDetail);
                ps.setString(5, offers);
                

                // Execute the update
                int rowsAffected = ps.executeUpdate();

                // Check if booking was deleted successfully
                if (rowsAffected > 0) {
                    session.setAttribute("success", " profile update successfully");
                    out.println(" profile update successfully");

                    response.sendRedirect("packageUpdate.jsp");

                } else {

                    session.setAttribute("failed", " profile update Successfully");
                    out.println("update package is not found");
                    response.sendRedirect("packageUpdate.jsp");

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
