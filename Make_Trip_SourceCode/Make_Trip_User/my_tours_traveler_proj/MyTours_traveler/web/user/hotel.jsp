<%-- 
    Document   : hotel
    Created on : Apr 14, 2024, 4:36:48 PM
    Author     : Yash Kharti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>tour hotel</title>

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link
            href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap"
            rel="stylesheet">

        <!-- icon -->
        <script src="https://kit.fontawesome.com/d63648c99b.js" crossorigin="anonymous"></script>

        <!-- css file -->

        <!--<link href="../css/indexstyle.css" rel="stylesheet"/>-->
        <link href="../css/indexstyle.css" rel="stylesheet" type="text/css"/>
        
        <%@include file="navbar.jsp"%>

    </head>

    <body>
        <div class="head">
            <h1 style="text-align: center; padding-top: 100px; padding-bottom: 80px;">Tour &nbsp;<span
                    style="color: rgb(255, 166, 0);">Hotel</span></h1>
        </div>

        <div class="row" id="hotel">
            <div class="column-left">
                <div class="slider">
                    <div class="slide">
                        <!--<img src="img/hotel1.jpg" alt="Image 1">-->
                        <img src="../img/hotel1.jpg" alt=""/>
                    </div>
                    <div class="slide">
                        <!--<img src="img/hotel2.jpg" alt="Image 2">-->
                        <img src="../img/hotel2.jpg" alt=""/>
                    </div>
                    <div class="slide">
                        <!--<img src="img/hotel3.jpg" alt="Image 3">-->
                        <img src="../img/hotel3.jpg" alt=""/>
                    </div>
                    <div class="slide">
                        <!--<img src="img/hotel4.jpg" alt="Image 4">-->
                        <img src="../img/hotel4.jpg" alt=""/>
                    </div>
                </div>

                <div class="icons">
                    <div class="prev"><i class="fa-solid fa-circle-chevron-left"></i></div>
                    <div class="next"><i class="fa-solid fa-circle-chevron-right"></i></div>
                </div>

            </div>
            <div class="column-right">

                <h1>MakeTrip Laxury Hotel</h1>
                <p class="location">all package location</p>
                <!--<h3 class="star">4.5<i class="fa-solid fa-star" style="color: whitesmoke;"></i></h3>-->
                <h4 class="hdisc">20%Off</h4> 
                <h4 class="hdisc-p"><i class="fa-solid fa-indian-rupee-sign"></i>
                    <p>6,000/</p>
                </h4>
                <h4 class="h-rupee"><i class="fa-solid fa-indian-rupee-sign" style="color: rgb(13, 161, 210);"></i>
                    <p>4,800/-</p>
                </h4>
                <p class="per">1 room per night</p>


                <h3 class="rooms"><i class="fa-solid fa-circle"></i><p>Dulex Rooms</p></h3>
                <h4 class="adult"><i class="fa-solid fa-circle"></i><p>2 Adults</p></h4>
                <h4 class="room"><i class="fa-solid fa-circle-check"></i><p>room is avalible</p></h4>
                <h4 class="cancel"><i class="fa-regular fa-circle-xmark"></i><p>Free cancellation</p></h4>

                <button class="hotel-btn" type="submit"> <a href="hbook.jsp">book now</a></button>

            </div>
        </div>
        
        <script src="../js/travel.js" type="text/javascript"></script>
</body>
</html>
