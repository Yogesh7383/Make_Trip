<%-- 
    Document   : about-us
    Created on : Apr 14, 2024, 3:37:52 PM
    Author     : Yash Kharti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tour and travel</title>
   
        <style>
            .about-info p{
                 color: white;
                /*font-size: 50px;*/
            }   
            
        </style>    
    
    </head>
    <body>

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link
            href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap"
            rel="stylesheet">

        <!-- icon -->
        <script src="https://kit.fontawesome.com/d63648c99b.js" crossorigin="anonymous"></script>

        <!-- css file -->
        <!--<link rel="stylesheet" href="css/indexstyle.css">-->

        <link href="../css/indexstyle.css" rel="stylesheet" type="text/css"/>

        <%@include file="navbar.jsp" %>

    </head>

    <div class="about-us" id="about">
        <div class="head">
            <h1 style="text-align: center; padding-top: 120px; ">About &nbsp; <span
                    style="color: rgb(255, 166, 0);">Us</span> </h1>
        </div>

        <div class="about">

            <div class="about-img">
                <!--<img src="img/about-img.png" alt="about">-->
                <img src="../img/about-img.png" alt=""/>
            </div>

            <div class="about-info">
                <h2>MakeTrip</h2>
                <h3>About the Tour & Travel management</h3>
                <p style=" justify-content: center;"> Welcome to MakeTrip, your premier destination for unforgettable travel
                    experiences.At MakeTrip, our mission is simple: to inspire and enable
                    people to discover the world's wonders through seamless, personalized
                    travel experiences and create cherished memories  that last a lifetime. 
                    <br><br>
                    When you choose MakeTrip, you're not just booking a trip -
                    you're embarking on a journey of discovery, adventure, and unparalleled luxury. 
                    <br><br>
                    When you book your hotel through MakeTrip System, you're not just reserving a room –
                    you're embarking on a transformative travel experience filled with luxury, comfort, and unparalleled hospitality. 
                </p>
                    <button class="about-btn">Read More...</button>
            </div>
        </div>
    </div>

</body>
</html>
