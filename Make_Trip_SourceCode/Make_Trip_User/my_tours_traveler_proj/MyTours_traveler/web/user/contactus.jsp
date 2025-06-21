<%-- 
    Document   : contactus
    Created on : Apr 14, 2024, 5:56:31 PM
    Author     : Yash Kharti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact us & feedback</title>

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap"
            rel="stylesheet"> 

        <!-- icon -->
        <script src="https://kit.fontawesome.com/d63648c99b.js" crossorigin="anonymous"></script>

        <!-- css file -->

        <!--<link href="../css/indexstyle.css" rel="stylesheet"/>-->
        <link href="../css/indexstyle.css" rel="stylesheet" type="text/css"/>

        
    </head>
    <body>
        <%@include file="navbar.jsp" %>

        <div class="head" id="contact">

            <h1 style="text-align: center; padding: 80px; padding-bottom: 130px;">Contact &nbsp; <span
                    style="color: rgb(255, 166, 0);">Us</span> </h1>
        </div>
        <div class="contact">

            <div class="contact-text">
                <h2>Get In <span>Touch</span></h2>
                <p>
                    At MakeTrip, we believe in creating unforgettable journeys<br>
                    tailored to your desires.Whether you're planning a relaxing<br> 
                    beach getaway,an adventuroustrek through  or a mountain.<br>
                    <br>
                    Got questions? Need assistance? We're just a click or a call away!<br>
                    Our dedicated team of travel experts is committed to providing you.<br>                     
                </p>
                <div class="list">
                    <li><a href="#"><i class="fa-solid fa-square-phone" style="color: #57ee20;"></i> +91 9443909090</a>
                    </li>
                    <li><a href="#"><i class="fa-solid fa-square-envelope" style="color: #1ce31f;"></i>
                            MakeTrip@gmail.com</a></li>
                    <li><a href="#"><i class="fa-solid fa-map-location-dot" style="color: #19f04f;"></i> Palika
                            bajar,patan</a></li>
                </div>
            </div>

            <!--send feedback-->            

            <div class="contact-form">
                <form action="http://localhost:8084/MyTours_traveler/contactservlet" method="post">
                    <h2>Send <span>feedback</span></h2>
                    <!--<input type="text" placeholder="Name" required>-->
                    <input type="email" name="uemail" placeholder="Email" >
                    <textarea name="feedback" id="" cols="35" rows="10" placeholder="Message" ></textarea>
                    <input type="submit" value="Send" class="submit" required>

                    <span id="Success" class="Success" style="color:green;margin-left:50px; font-size:22px;"> <% if (session.getAttribute("success") != null) {%>
                        <%=session.getAttribute("success")%>
                        <% session.setAttribute("success", null);
                        }%>
                    </span>  

                    <span id="failed" class="failed" style="color:red; margin-left:70px; font-size:22px;"><% if (session.getAttribute("failed") != null) {%>
                        <%=session.getAttribute("failed")%>
                        <%session.setAttribute("failed", null);
                        }%>
                    </span>
                </form>
            </div>

        </div>
    </body>
</html>
