<%-- 
    Document   : navbar
    Created on : Apr 14, 2024, 2:10:26 PM
    Author     : Yash Kharti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tour and Travel</title>

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link
            href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap"
            rel="stylesheet">

        <!-- icon -->
        <script src="https://kit.fontawesome.com/d63648c99b.js" crossorigin="anonymous"></script>

        <!-- css file -->

        <!--<link href="css/indexstyle.css" rel="stylesheet"/>-->
        <link href="../css/indexstyle.css" rel="stylesheet" type="text/css"/>
        <style>
         
            span a{

                color: black;
                font-size: 18px;
                text-decoration: none;
                position: relative;
                left: 170px;
            }         
            .logo img { 
                height: 100px;
                width: 130px;
                position: relative;
                /*position: absolute;*/
                /*padding-top: 12px;*/
                right: 290px;  
                /*right: 350px;*/
                top: 8px;
            }

        </style>

    </head>
    <body>

        <!-- navbar -->

        <nav id="nav">
            <div class="logo">

                <img  src="../img/logo.png"/>
            </div>  

            <ul>
                <li><a href="navbar.jsp">Home</a></li>
                <li><a href="about-us.jsp">About Us</a></li>
                <li><a href="packages.jsp">Package</a></li>
                <li><a href="hotel.jsp">Hotels</a></li>
                <li><a href="booking.jsp">Booking</a></li>
                <li><a href="contactus.jsp">Contact Us</a></li>
            </ul>

            <span>  <a href="userprofile.jsp"><i class="fa-solid fa-circle-user"></i> <%= session.getAttribute("uemail")%> </a> </span> 

            <button type="submit" id="login"> <a href="login.jsp">Logout</a></button> 

        </nav>

        <!-- navbar end  -->

        <!-- main -->
        <!--        <div class="main">
                    <div class="maintext">
                        <h1>Best vacation Destination <br> Your holiday Dreams </h1>
                    </div>
                </div>     -->
    </body>
</html>
