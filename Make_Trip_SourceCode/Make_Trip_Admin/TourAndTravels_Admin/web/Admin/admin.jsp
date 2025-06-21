<%-- 
    Document   : admin
    Created on : May 1, 2024, 11:38:37 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Tour & Travel Admin Dashboard</title>
        <link href="../CSS/admin.css" rel="stylesheet" type="text/css"/>
         <link rel="icon" type="image/png" sizes="32x32" href="../Image/logo.png">
        <style>

           
            .main{

                background-image:linear-gradient(rgba(0, 0, 0, 0.5),
                    rgba(0, 0, 0, 0.5)), url("../Image/1.jpg");
                background-size: cover;
                background-repeat:no-repeat;
                width: 100%;
                height: 100vh;
            }
            .maintext{
                color:lightcyan;  
                position: relative;
                text-align: center;
                font-size: 25px;
                top: 150px;
                left: 300px;
                transform: translate(-50%,-50%);
                text-spacing:  trim-adjacent;
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
.logo img{
                position: absolute;
        height: 100px;
        width: 100px;
        left: 20px;
        bottom: -35px;
        
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
                <button type="submit" id="Logout"><a href="logout.jsp"> Logout</a>  </button>
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

    

            <div class="main" style="margin-left: 15%">
                <div class="maintext" >
                    <h1>Welcome, Admin </h1>
                </div>
            </div>
        </div>

    </body>
</html>


