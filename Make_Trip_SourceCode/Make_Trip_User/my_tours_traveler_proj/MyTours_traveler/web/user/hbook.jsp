<%-- 
    Document   : hotel_booking
    Created on : May 2, 2024, 6:50:24 PM
    Author     : Admin
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>hotel booking</title>

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

        <input type="hidden" id="status" value="<%= request.getAttribute("status")%>">    
        <div class="book" id="booking">
            <div class="head">
                <h1 style="text-align: center; padding: 80px; padding-bottom:30px; ">Hotel Booking &nbsp; <span
                        style="color: rgb(25, 106, 255);">Now</span> </h1>
            </div>

            <div class="booking">
                <!--<img src="img/booking.jpg" alt="book">-->
                <!--<img src="../img/booking.jpg" alt=""/>-->
                <!--<img src="../img/hotel2.jpg" alt=""/>-->
                <div class="form">
                    <form method="post" action="http://localhost:8084/MyTours_traveler/h_booking" >

                        <h2 style="color: rgba(25, 106, 255, 0.99);">Book Hotel</h2>
                        <p>Name</p>
                        <input type="text" placeholder="Enter your full name" name="uhname">
                        <!-- <p>Email</p>
                        <input type="email" placeholder="Enter your email" name="email" id=""> -->
                        <p> Email </p>
                        <input type="text" placeholder="Enter your Email" name="uhemail">
                        <!--                        <p> Phone no</p>
                                               <input type="number" placeholder="Enter your Contact no" name="hno">-->
                        <p>select room type:</p>
                        <select class="select" name="hoteltype" id="select">
                            <option value="AC Room">AC Room</option>
                            <option value="NON-AC Room">NON-AC Room</option>
                        </select> 
                        <p> total Rooms</p>
                        <input type="text" placeholder=" total rooms" name="trooms">

                        <!--                        <form action="uploadImages.jsp" method="post" enctype="multipart/form-data">
                                                    <input type="file" name="images" id="images" accept="image/*" multiple>
                                                    <input type="submit" value="Upload">
                                                </form>-->
                        <!--                        <p>offers</p>
                                                <input type="text" placeholder="offers"name="offers" >-->

                        <!--                        <p>select the payment:</p>
                                                <select class="select" name="payment" id="select">
                                                    <option value="COD">COD</option>
                                                    <option value="online payment">COD</option>
                                                </select> -->
                        <!--               <p>bus no</p>
                                            <input type="number" placeholder="Enter your bus no" name="bus" id="bus">
                        -->
                        <br>
                        <br>
                        <button type="submit">book now</button>
                        
                        <span id="Success" class="Success" style="color:green;margin-left:50px; font-size:22px;"> <% if (session.getAttribute("success") != null) {%>
                            <%=session.getAttribute("success")%>
                            <% session.setAttribute("success", null);
                        }%>
                        </span>  
                        
                        <span id="failed" class="failed" style="color:red; margin-left:40px; font-size:22px;"><% if (session.getAttribute("failed") != null) {%>
                            <%=session.getAttribute("failed")%>
                            <%session.setAttribute("failed", null);
                        }%>
                        </span>
                    </form>

                </div>
            </div>
        </div>

    </body>
</html>
