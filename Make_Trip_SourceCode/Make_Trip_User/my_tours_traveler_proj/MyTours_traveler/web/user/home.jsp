<%-- 
    Document   : home
    Created on : May 1, 2024, 4:22:14 PM
    Author     : Yash Kharti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tourse Packages</title>


        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link
            href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap"
            rel="stylesheet">

        <!-- icon -->
        <script src="https://kit.fontawesome.com/d63648c99b.js" crossorigin="anonymous"></script>

        <!-- css file -->

        <link href="../css/indexstyle.css" rel="stylesheet" type="text/css"/>

       </head>
   
   <body>
       <div class="container">
           
       <%@include file="navbar.jsp" %>
        
         <!-- main -->
            <div class="main">
                <div class="maintext">
                    <h1>Best vacation Destination <br> Your holiday Dreams </h1>
                </div>
            </div>

            <!-- main end -->
            
            <%@include file="about-us.jsp"%>  
            
            <%@include file="bestpack.jsp"%>
            
            <%@include file="packages.jsp"%>
            
            <%@include file="booking.jsp" %>
            
            <%@include file="hotel.jsp" %>
            
            <%@include file="hbook.jsp" %>
            
            <%@include file="contactus.jsp" %>
            
            <%@include file="footer.jsp"%>
            
       </div>
    </body>
</html>
