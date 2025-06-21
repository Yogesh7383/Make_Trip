<%-- 
    Document   : viewpackage
    Created on : May 6, 2024, 4:11:33 PM
    Author     : Admin
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Tour & Travel Admin Dashboard</title>
                 <link rel="icon" type="image/png" sizes="32x32" href="../Image/logo.png">
        <style>
            .my {

                font-family: 'Nunito', sans-serif;
                height: 600px;
                width: 1000px;
                border: 2px solid black; 
                margin-left: 100px; 
                position: fixed;
                margin-top: 50px;
                margin-left: 225px;
                left: 150px;
                top: 50px; 
                /*background-color: white;*/
            }
            .card {
                width: 900px;
                border: 1px solid #ccc;
                border-radius: 5px;
                padding: 5px;
                margin: 20px;
                box-shadow: 0 4px 8px rgba(0,5,19,0.1);
                text-align: center;
            }
            .card1{
                font-size: 20px;
                text-align: center;
                width: 400px;
                height: 300px;
                background-color: #f0f0f0;
                border-radius: 10px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                margin: 0 auto; /* This centers the card horizontally */
                margin-top: 50px; /* Adjust as needed 
                */                
            }nav{
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
               
                            <h1 style="color:black; font-size: 50px; margin-left: 20px;margin-top: 20px;"> Travel Management System </h1>
               

                <div class="icon">
                    <i id="bar" class="fa-solid fa-bars"></i>
                </div>
                <!-- logout button path-->
                <button type="submit" id="Logout"><a href="login.jsp"> Logout</a>  </button>
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
            <div class="my">
            <div class="card">
                <h1 class="y1"> Package Booking Detail </h1>
            </div>



            <%
                Connection conn = null;
                Statement stmt = null;
                ResultSet rs = null;

                PreparedStatement preparedStatement = null;

                try {
                    // Load the JDBC driver
                    Class.forName("com.mysql.jdbc.Driver");
                    conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/user", "root", "yogesh_7383");

                    // Execute SQL query
                    stmt = conn.createStatement();
                    rs = stmt.executeQuery("SELECT * FROM package pid=1 ");

                    // Delete Booking Data
                    // Iterate through the result set and display data
                    while (rs.next()) {
            %>
            <div class="card1">
                <h1> Your Profile </h1>
                <form action="" method="post">


                    <label for="pid">Package Id:</label>
                    <input type="text" style="text-align:center;" id="pid" name="pid" type="text" size="25" value=" <%= rs.getString("pid")%> " readonly   ><br>
                    <label for="pname">Package Name:</label>
                    <input type="text" style="text-align:center;" id="pname" name="pname" size="25" value="<%= rs.getString("pname")%>" readonly ><br>
                    <label for="from date">From Date:</label>
                    <input type="date" style="text-align:center;" id="From date" name="From date" size="25" readonly ><br>
                    <label for="to date">To Date:</label>
                    <input type="date" style="text-align:center;" id="To date" name="To date" size="25" readonly  ><br>
                    <label for="Destination ">Destination:</label>
                    <input type="text" style="text-align:center;" id="Destination" name="Destination" type="text" size="25" value=" <%= rs.getString("Destination")%> " readonly   ><br>
                    <label for="price">Price:</label>
                    <input type="text" style="text-align:center;" id="price" name="price" size="25" value="<%= rs.getString("price")%>" readonly ><br>
                    <label for="offers">Offers:</label>
                    <input type="text" style="text-align:center;" id="offers" name="offers" size="25" value="<%= rs.getString("offers")%>"readonly  ><br>
                    <label for="bus no">Package Detail:</label>
                    <input type="text" style="text-align:center;" id="pdetail" name="pdetail" size="25" value="<%= rs.getString("Package Detail")%>" readonly ><br>

                    <br><br>
                    <button type="submit" value="Update profile" id="Update"> Update </button>
                </form>
            </div>


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
        </div>
                       </div>
        </div>



    </body>
</html>
