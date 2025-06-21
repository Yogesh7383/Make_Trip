<%-- 
    Document   : bhotelhistory
    Created on : May 7, 2024, 5:21:51 PM
    Author     : Yash Kharti
--%>
<%@ page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>package booking history</title>

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap"
              rel="stylesheet">
        <link href="../css/profile.css" rel="stylesheet" type="text/css"/>
        <style>
        .center{
                margin: 0 auto;
                /*                margin-left: 110px;
                                padding-top: 20px;*/
                position: absolute;
                top: 280px;
                left: 300px;    

            }
            .center h2{
                
                position: relative;
                left:  50px;
                margin-bottom: 20px;
            }
            table {
                width: 100%;

                border-collapse: collapse;
                margin-left: 100px;

            }
            th {
                background-color: #ccc;
                text-align: center; /* Center-aligning the table heading */
                padding: 8px; /* Adding padding for better readability */
                /*border-bottom: 1px solid #ddd;  Adding a bottom border */
            }
            /* Optional: Adding some styles for better visual appearance */
            tr:nth-child(even) {
                text-align: center; 
                background-color: #f6f2f2;
            }
            td{
                text-align: center;
                font-size: 18px;
            }
            a{
                text-decoration: none;
                color: red;
            }            

        </style> 
    </head>
    <body>
        <%--<%@include file="navbar.jsp" %>--%>
        <%@include file="userprofile.jsp" %>
        
        <span id="Success" class="Success" style="color:green;font-size:20px;  position: absolute; top: 230px; left: 580px;"><% if (session.getAttribute("success") != null) {%>
            <%=session.getAttribute("success")%>
            <% session.setAttribute("success", null);
                        }%>
        </span>  

        <span id="failed" class="failed" style="color:red;font-size:20px; position: absolute; top: 230px; left: 580px; "> <% if (session.getAttribute("failed") != null) {%>
            <%=session.getAttribute("failed")%>
            <% session.setAttribute("failed", null);
                        }%>
        </span>

        <div class="center">

        <h2 style="  "> hotel booking history : </h2>

            <table border="1">
                <tr>
                    <th> hbook_id </th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Room Type</th>
                    <th>Total Room</th>
                    <th>action</th>
                    

                </tr>
                <%

                    Connection conn = null;
                    Statement stmt = null;
                    ResultSet rs = null;

                    PreparedStatement preparedStatement = null;

                    try {
                        // Load the JDBC driver
                        Class.forName("com.mysql.jdbc.Driver");
                        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mytours", "root", "codeyash");

                        // Execute SQL query
                        stmt = conn.createStatement();
                        rs = stmt.executeQuery("SELECT * FROM h_booking");

                        // Delete Booking Data
                        // Iterate through the result set and display data
                        while (rs.next()) {
                %>
                <tr>
                    <td><%= rs.getString("hbook_id")%></td>
                    <td><%= rs.getString("hu_name")%></td>
                    <td><%= rs.getString("hu_email")%></td>
                    <td><%= rs.getString("hotel_type")%></td>
                    <td><%= rs.getString("t_rooms")%></td>
                    <td> <a  href="deletehotel.jsp?hbook_id=9">cancel</a></td>
                    <!--<td> <a href="DeleteBookingServlet?booking_id=2">cancel</a></td>-->

                </tr>


                <%
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    } finally {
                        // Close database resources
                        if (rs != null) {
                            try {
                                rs.close();
                            } catch (SQLException e) { /* ignored */ }
                        }
                        if (stmt != null) {
                            try {
                                stmt.close();
                            } catch (SQLException e) { /* ignored */ }
                        }
                        if (conn != null) {
                            try {
                                conn.close();
                            } catch (SQLException e) { /* ignored */ }
                        }
                    }
                %>
            </table>
        </div>
        


    </body>
</html>
