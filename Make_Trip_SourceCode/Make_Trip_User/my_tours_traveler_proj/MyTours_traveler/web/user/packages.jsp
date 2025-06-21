<%-- 
    Document   : packages
    Created on : Apr 14, 2024, 4:23:53 PM
    Author     : Yash Kharti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tour and travel</title>

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link
            href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap"
            rel="stylesheet">

        <!-- icon -->
        <script src="https://kit.fontawesome.com/d63648c99b.js" crossorigin="anonymous"></script>

        <!-- css file -->

        <link href="../css/indexstyle.css" rel="stylesheet"/>

        <%@include file="navbar.jsp" %>

    </head>
    <body>

        <div class="tpack" id="allpackage">

            <div class="head">
                <h1 style="text-align: center; padding-top: 100px;">Tour &nbsp;<span
                        style="color: rgb(255, 166, 0);">Packages</span></h1>
            </div>
            <div class="tpackage" id="pack1">

                <div class="pack-img">
                    <!--<img src="img/pack1-shimla.jpg" alt=""/>-->
                    <img src="../img/pack1-shimla.jpg" alt=""/>
                </div>
                <!-- package-1 -->

                <div class="pack-info">
                    <!-- package name    -->
                    <h2>Shimla package</h2>
                    <h5>6N/7D</h5>
                    <!-- date  -->
                    <h4 class="day"><i class="fa-solid fa-calendar-days"></i>
                        <p>1 May - 1 June(package avalable)</p>
                    </h4>
                    <p class="content">Welcome to our Shimla tour, where adventure meets tranquility amidst the majestic Himalayan mountains.
                        Situated in the northern Indian state of Himachal Pradesh, Shimla is a charming hill station renowned
                        for its colonial architecture, lush greenery, and breathtaking vistas. 

                    </p>
<!--                    <h4 class="hotel"><i class="fa-solid fa-hotel"></i>
                        <p>rajmahal palase hotel</p>
                    </h4>-->
                    <h4 class="bus"><i class="fa-solid fa-bus"></i>
                        <p>Ac-sleeper bus</p>
                    </h4>
                    <h4 class="disc">20%Off</h4>
                    <h4 class="disc-p"><i class="fa-solid fa-indian-rupee-sign"></i>
                        <p>12,000/</p>
                    </h4>
                    <h4 class="rupee"><i class="fa-solid fa-indian-rupee-sign"></i>
                        <p>9,600/-</p>
                    </h4>

                    <button class="pkg-btn" type="submit"> <a href="booking.jsp">book now</a> </button>
                </div>
            </div>
        </div>

        <div class="tpackage" id="pack2">
            <div class="pack-img">
                <img src="../img/pack2-dwarka.jpg" alt=""/>
            </div>
            <div class="pack-info">
                <!-- package name    -->
                <h2>Dwarka package</h2>
                <h5>2N/3D</h5>
                <!-- date  -->
                <h4 class="day"><i class="fa-solid fa-calendar-days"></i>
                    <p>1 April - 1 June(package available)</p>
                </h4>
                <p class="content"> Welcome to our Dwarka tour packages, where spirituality meets serenity amidst the sacred 
                    lands of Lord Krishna's abode. Situated on the western coast of Gujarat, 
                    Dwarka is revered as one of the holiest cities in Hinduism, attracting pilgrims and travelers from around the world.
                </p>
                <h4 class="bus"><i class="fa-solid fa-bus"></i>
                    <p>Ac-sleeper bus </p>
                </h4>
                <h4 class="disc">20%Off</h4>
                <h4 class="disc-p"><i class="fa-solid fa-indian-rupee-sign"></i>
                    <p>7,200/</p>
                </h4>
                <h4 class="rupee"><i class="fa-solid fa-indian-rupee-sign"></i>
                    <p>6,000/-</p>
                </h4>

                <button class="pkg-btn" type="submit"> <a href="booking.jsp">book now</a> </button>
            </div>
        </div>

        <!-- package-3 -->

        <div class="tpackage" id="pack3">
            <div class="pack-img">
                <!--<img src="img/pack3-goa.jpg" alt="">-->
                <img src="../img/pack3-goa.jpg" alt=""/>
            </div>
            <div class="pack-info">
                <!-- package name    -->
                <h2> Goa package </h2>
                <h5>6N/7D</h5>
                <!-- date  -->
                <h4 class="day"><i class="fa-solid fa-calendar-days"></i>
                    <p>1 April - 1 July(package available)</p>
                </h4>
                <p class="content"> Welcome to our Goa tour packages, where sun, sand, and sea meet vibrant culture, rich history, and unforgettable experiences. 
                    Situated on the western coast of India, Goa is renowned for its stunning beaches,
                    Portuguese heritage, and lively atmosphere. </p>
<!--                <h4 class="hotel"><i class="fa-solid fa-hotel"></i>
                    <p>rajmahal palase hotel</p>
                </h4>-->
                <h4 class="bus"><i class="fa-solid fa-bus"></i>
                    <p> Ac-sleeper bus </p>
                </h4>
                <h4 class="disc">20%Off</h4>
                <h4 class="disc-p"><i class="fa-solid fa-indian-rupee-sign"></i>
                    <p>14,400/</p>
                </h4>
                <h4 class="rupee"><i class="fa-solid fa-indian-rupee-sign"></i>
                    <p>12,000/-</p>
                </h4>

                <button class="pkg-btn" type="submit"> <a href="booking.jsp">book now</a> </button>
            </div>
        </div>

        <!-- package-4 -->

        <div class="tpackage" id="pack4">
            <div class="pack-img">
                <!--<img src="img/pack4-kedarnath.jpeg" alt="">-->
                <img src="../img/pack4-kedarnath.jpeg" alt=""/>
            </div>
            <div class="pack-info">
                <!-- package name -->
                <h2> kedarnath package </h2>
                <h5>4N/5D</h5>
                <!-- date  -->
                <h4 class="day"><i class="fa-solid fa-calendar-days"></i>
                    <p>1 April - 1 June(package available) </p>
                </h4>
                <p class="content">
                   Welcome to kedarnath package, Kedarnath is one of the holiest <br>
                   Hindu pilgrimage sites nestled in the majestic Himalayas.Our meticulously<br>
                   crafted tour package offers you a blend of spirituality, adventure, and tranquility,<br>
                   ensuring an unforgettable experience.  </p>
<!--                <h4 class="hotel"><i class="fa-solid fa-hotel"></i>
                    <p>rajmahal palase hotel</p>
                </h4>-->
                <h4 class="bus"><i class="fa-solid fa-bus"></i>
                    <p>Ac-sleeper bus </p>
                </h4>
                <h4 class="disc">20%Off</h4>
                <h4 class="disc-p"><i class="fa-solid fa-indian-rupee-sign"></i>
                    <p>9,600/</p>
                </h4>
                <h4 class="rupee"><i class="fa-solid fa-indian-rupee-sign"></i>
                    <p>8,000/-</p>
                </h4>

                <button class="pkg-btn" type="submit"> <a href="booking.jsp">book now</a> </button>
            </div>
        </div>


    </body>
</html>
