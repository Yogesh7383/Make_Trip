<%-- 
    Document   : showPackage
    Created on : May 6, 2024, 6:31:32 PM
    Author     : Admin
--%>

<%-- 
    Document   : booking
    Created on : May 1, 2024, 12:24:50 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Tour & Travel Admin Dashboard</title>

        <link
            href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap"
            rel="stylesheet">
        <link href="../CSS/booking.css" rel="stylesheet" type="text/css"/>
                 <link rel="icon" type="image/png" sizes="32x32" href="../Image/logo.png">
        <style>
      table {
        width: 100%;
        border-collapse: collapse;
    }
    th {
        text-align: center;
        padding: 8px; /* Adding padding for better readability */
        border-bottom: 1px solid #ddd; /* Adding a bottom border */
    }
    /* Optional: Adding some styles for better visual appearance */
    tr:nth-child(even) {
        background-color: #f2f2f2;
    }
    nav{
                display: flex;
                justify-content: center;
                align-items: center;
                background-color:rgba(255, 166, 0, 0.979);
                color: rgba(53, 51, 51, 0.177);
                height: 50px;
                margin-left: 0px;

                padding-top: 20px;

                position: fixed;
                top: 0%;
                width: 100%;
                z-index: 1;
            }


            .h1{
                color: rgb(4, 4, 6);
                font-size: 30px;
                font-style:inherit;
                position: relative;
                right: 100%;
                top: -20%;
                width: 85%;
                text-align: center;

            } 

nav button{
    
  width: 80px;
  height: 30px;
  font-weight: bold;
   font-size: 18px;
  background-color: white;
  color: aliceblue;
  /* padding: 20px 20px; */
  border: 2px solid black;
  border-radius: 5px;
  position: absolute;
  height:50px;
  width:90px;
  right: 30px;
  top:10px;
  cursor: pointer;
  transition: 0.5s;
  
  
}
button a{
    text-decoration:  none;
    
} 
  nav button:hover{
  
      background-color: whitesmoke;
      color: black;
      /* width: 100px; */
      zoom: 1;

      /* border-radius: 0%; */
  }
            .sidebar {
      width: 200px;
      height:300%;
      background-color: #34495e;
      color: rgb(255, 255, 255);
      padding: 15px;
      position: fixed !important;
      z-index: 1;
      margin-top: 4.5%;
    }
    .sidebar a {
      text-decoration: none;
      color: rgb(255, 255, 255);
      display: block;
      padding: 10px;
      border-bottom: 1px solid #2c3e50;
    }
    .sidebar a:hover {
      background-color: #2c3e50;
    }
        </style>
    </head>
    <body>

        <div class="container">

<%--<%@include file="sidebar.jsp" %>--%>
                       <%--<%@include file="navbar.jsp" %>--%>    
                       
                        <nav id="nav">
                 <div class="logo">
                    <img src="../Image/logo.png" style="height:100px; width: 100px; margin-bottom: 20px;"/>
                </div> 
               
                            <h1 style="color:black; font-size: 50px; margin-left: 20px;margin-top: 20px; font-style: normal;"> Travel Management System </h1>
               

                <div class="icon">
                    <i id="bar" class="fa-solid fa-bars"></i>
                </div>
                <!-- logout button path-->
                <button type="submit" id="Logout"><a href="login.jsp" style="color:black;"> Logout</a>  </button>
            </nav>
                       <div class="sidebar">
               
                <br><br><br><br>



                
                <a href="admin.jsp"> Home </a>
                <a href="DetailBooking.jsp"> Booking Detail </a>
                <a href="customer.jsp"> Customer Detail </a>
                <a href="hotel.jsp"> Manage Hotel </a>
                <a href="package.jsp"> Manage Package </a>
                <a href="feedback.jsp"> View Feedback </a>

            </div>

                       <div class="main-content" style="margin-left: 15%;">
                <!-- Main content -->


                <h1>Show FeedBack Detail</h1>
                <table border="1">
                    <tr>
                        <th> Feedback iD </th>
                        <th> User Email</th>
                        <th> Feedback </th>
                        
                    </tr>
                    <%
                        Connection conn = null;
                        Statement stmt = null;
                        ResultSet rs = null;

                        PreparedStatement preparedStatement = null;

                        try {
                            // Load the JDBC driver
                            Class.forName("com.mysql.jdbc.Driver");

                            // Connect to the database
                            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/user", "root", "yogesh_7383");

                            // Execute SQL query
                            stmt = conn.createStatement();
                            rs = stmt.executeQuery("SELECT * FROM feedback");

                            // Delete Booking Data
                            // Iterate through the result set and display data
                            while (rs.next()) {
                    %>
                    <tr>
                        <td><%= rs.getString("fid")%></td>
                        <td><%= rs.getString("femail")%></td>
                        <td><%= rs.getString("feedback")%></td>
                        
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
                 <span id="Success" class="Success" style="color:green;font-size:20px;  position: relative; top: 100px; left: 150px;"><% if (session.getAttribute("success") != null) {%>
            <%=session.getAttribute("success")%>
            <% session.setAttribute("success", null);
                        }%>
        </span>  

        <span id="failed" class="failed" style="color:red;font-size:20px; position: initial; top: 100px; left: 150px; "> <% if (session.getAttribute("failed") != null) {%>
            <%=session.getAttribute("failed")%>
            <% session.setAttribute("failed", null);
                        }%>
                </body>
                </html>

                <!-- Add more cards for other sections -->
            </div>

       

    </body>
</html>
