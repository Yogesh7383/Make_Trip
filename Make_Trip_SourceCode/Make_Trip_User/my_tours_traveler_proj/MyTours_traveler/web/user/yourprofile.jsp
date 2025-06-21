<%--<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>--%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page session="true" %>

<!DOCTYPE html>
<%-- 
    Document   : userprofile
    Created on : May 4, 2024, 2:50:52 PM
    Author     : Yash Kharti
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>user profile</title>
       
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap"
              rel="stylesheet">
        <link href="../css/profile.css" rel="stylesheet" type="text/css"/>
       <style>
            .card1{
                /*font-size: 20px;*/
                text-align: center;
                width: 600px;
                height: 300px;
                background-color: #f0f0f0;
                border-radius: 10px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                margin: 0 auto; 
                margin-top: 50px; 
                position: absolute;
                /*right: 10px;*/
                left: 420px;
                top: 200px;
                
                
            }
            h1{
                margin-bottom: 20px;
            }


            label{
                color: blue;
                position: absolute; 
                left: 120px;
                /*right: 10px;*/
                font-size: 22px;    
                margin-bottom: 20px;

            }
            input{
                padding: 3px;
                margin-bottom: 10px;
                font-size: 18px;
                border: 1px solid black;
                border-radius: 5px;
                position: relative;
                left: 80px;
            }
            button{
                width: 90px;
                height: 30px;
                font-size: 15px;
                font-weight: bold;
                background-color:black;
                color: white;
                /*padding: 20px 20px;*/ 
                border: 2px solid black;
                border-radius: 5px;
                position: relative;
                bottom: 20px;
                right: 30px;
                cursor: pointer;
                transition: 0.5s;
            }
            button:hover{

                background-color: white;
                zoom: 1;
            }
            button a{
                text-decoration: none;
                color: wheat;
                
            }
            a:hover{
                color: black;
            }
        </style>
    
    </head>
    <body>

        <%@include file="userprofile.jsp" %>         

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
                rs = stmt.executeQuery("SELECT * FROM users where user_id=8 ");

                // Delete Booking Data
                // Iterate through the result set and display data
                while (rs.next()) {
        %>
        <div class="card1">
            <h1> Your Profile </h1>
            <!--<form action="updateprofileservlet" method="post">-->


                <label for="uid">User Id:</label>
                <input type="text" style="text-align:center;  " id="uid" name="uid" type="text" size="25" value="<%= rs.getString("user_id")%> " readonly > <br>
                <!--<input type="text" style="text-align:center;  " id="uid" name="uid" type="text" size="25" value=" " readonly > <br>-->
                <label for="username">User Name:</label>
                <input type="text" style="text-align:center;" id="username" name="uname" size="25" value="<%= rs.getString("uname")%>" ><br>
                <!--<input type="text" style="text-align:center;" id="username" name="uname" size="25" ><br>-->
                <label for="uemail">Email:</label>
                <input type="text" style="text-align:center;" id="uemail" name="uemail" size="25" value=" <%= rs.getString("uemail")%>" readonly ><br>
                <!--<input type="text" style="text-align:center;" id="uemail" name="uemail" size="25" value="" readonly><br>-->
                <label for="umobile">Mobile No:</label>
                <input type="text" style="text-align:center;" id="emobile" name="umobile" size="25" value="<%= rs.getString("umobile")%>" ><br>
                <!--<input type="text" style="text-align:center;" id="emobile" name="umobile" size="25" value ><br>-->

                <br><br>
                <button type="submit" id="Update"><a href="updateprofile.jsp">Update</a></button>
            <!--</form>-->

        </div>
        <span id="Success" class="Success" style="color:green;font-size:25px;  position: relative; top: 560px; left:550px;"><% if (session.getAttribute("success") != null) {%>
            <%=session.getAttribute("success")%>
            <% session.setAttribute("success", null);
                }%>
        </span>  

        <span id="failed" class="failed" style="color:red;font-size:20px; position: absolute; top: 100px; left: 150px; "> <% if (session.getAttribute("failed") != null) {%>
            <%=session.getAttribute("failed")%>
            <% session.setAttribute("failed", null);
                }%>
        </span>


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

    </body>
</html>
