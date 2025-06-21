<%-- 
    Document   : bestpack.jsp
    Created on : Apr 14, 2024, 3:47:47 PM
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
       
        <div class="pack" id="Package">
            <div class="head">
                <h1 style="text-align: center;  padding-top: 120px">Best &nbsp;<span style="color: rgb(255, 166, 0);">Packages</span> </h1>

            </div>
            <br>
            <br>
            <div class="packages">
                <div class="card">
                    <img src="../img/shimla.jpg" alt="shimla"/>
                    <h3>Shimla</h3>
                    <p>1 Week Tour</p>
                    <p>9,000 rup only</p>
                    <button type="submit"><a href="packages.jsp">show package</a></button>
                </div>
                <div class="card">
                    <img src="../img/goa-img.jpg" alt="shimla"/>
                    <h3>Goa</h3>
                    <p>6 day Tour</p>
                    <p>12,000 rup only</p>
                   <button type="submit"><a href="packages.jsp">show package</a></button>
                </div>
                <div class="card">
                    <!--<img src="img/ladakh-img.jpg" alt="shimla">-->
                    <!--<img src="../img/ladakh-img.jpg" alt=""/>-->
                    <img src="../img/pack2-dwarka.jpg" alt=""/>
                    <h3>Dwarka</h3>
                    <p>4 day Tour</p>
                    <p>6,000 rup only</p>
                     <button type="submit"><a href="packages.jsp">show package</a></button>
                </div>
            
            </div>
        </div>
    </body>
</html>
