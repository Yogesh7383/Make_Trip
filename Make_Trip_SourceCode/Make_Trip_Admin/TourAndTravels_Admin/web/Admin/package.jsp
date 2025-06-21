<%-- 
    Document   : package
    Created on : May 1, 2024, 12:25:36 PM
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
                height: 200px;
                width: 1000px;
                border: 2px solid black; 
                margin-left: 100px; 
                position: fixed;
                margin-top: 50px;
                margin-left: 225px;
                left: 150px;
                top: 50px; 
                background-color: white;
            }
            .card {
                width: 900px;
                border: 1px solid #ccc;
                border-radius: 5px;
                padding: 5px;
                margin: 20px;
                box-shadow: 0 4px 8px rgba(0,5,19,0.1);
            }
            .navp{

                /*    height: 600px;
                    width: 800px;*/
                display: flex;
                justify-content: center;
                align-items: center;
                color: black;
                /*padding-top:50px;*/
                /*    height: 50px;
                    margin-left: 180px;*/


                /*    position: fixed;
                    top: 0%;
                    z-index: 1; */
            }
            ul {

                display: flex;

                align-items: center; 

            }

            ul li {
                display: flex;
                list-style: none;
                align-items: center;
                margin-left: 100px;
                justify-content: center;
            }

            ul li a {

                padding-top: 17px; 
                align-items: left;
                text-decoration: none;
                margin-inline: 20px;
                color: black;
                font-size: 25px;
            }

            ul li a:hover {

                color: orange;
            }
            .link {
                display: block;
                margin-bottom: 10px;
                text-decoration: none;
                color: #333;
            }
            .link:hover {
                color: #007bff;
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
      margin-top: 4%;
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
    .logo img{
                position: absolute;
        height: 100px;
        width: 100px;
        left: 20px;
        bottom: -35px;
        
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

            <div class="main-content">

            <div class="my">
                <div class="card">
                    <div class="navp">

                        <ul>
                            <li><a class="link" href="showPackage.jsp">View Package Detail</a></li>                           
                        </ul>

                    </div>

                </div>

<!--                <div class="card">
                    <div class="navp">
                        <ul>
                            <li><a class="link" href="packageUpdate.jsp"> Update Package </a></li>
                        </ul>
                    </div>
                </div>-->
            </div>
</div>
            </div>

    </body>
</html>
