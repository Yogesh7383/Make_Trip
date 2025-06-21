<%-- 
    Document   : booking
    Created on : Apr 14, 2024, 5:18:55 PM
    Author     : Yash Kharti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Package booking</title>

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
        <%@include file="navbar.jsp" %>

    </head>
    <body>


        <%--<%=request.getAttribute("status")%>--%>

        <div class="book" id="booking">
            <div class="head">
                <h1 style="text-align: center; padding: 80px;">booking &nbsp; <span
                        style="color: rgb(255, 166, 0);">Now</span> </h1>
            </div>

            <div class="booking">
                <!--<img src="img/booking.jpg" alt="book">-->
                <img src="../img/booking.jpg" alt=""/>

                <div class="form">
                    <span id="Success" class="Success" style="color:green;font-size:20px;"><% if (session.getAttribute("success") != null) {%>
                        <%=session.getAttribute("success")%>
                        <% session.setAttribute("success", null);
                    }%>
                    </span>  

                    <span id="failed" class="failed" style="color:red;font-size:20px;"><% if (session.getAttribute("failed") != null) {%>
                        <%=session.getAttribute("failed")%>
                        <% session.setAttribute("failed", null);
                    }%>
                    </span>
                    <form method="post" action="http://localhost:8084/MyTours_traveler/bookingservlet" >

                        <h2 style="color: rgba(255, 166, 0, 0.929);">Book A Tour</h2>
                        <p>Name</p>
                        <input type="text" placeholder="Enter your full name" name="name">
                        <!-- <p>Email</p>
                        <input type="email" placeholder="Enter your email" name="email" id=""> -->
                        <p>Phone no</p>
                        <input type="number" placeholder="Enter your Contact no" name="number">
                        <p>date and time</p>
                        <input type="date" name="date" id="date ">
                        <p>Address</p>
                        <input type="text" placeholder="Enter your Address" name="address">
                        <p>Adults</p>
                        <input type="number" placeholder="Enter total mambers" name="adults" id="adults">
                        <p>Pick up point</p>
                        <input type="text" placeholder="enter your pick up point" name="pickup">
                        <!--                    <p>package</p>
                                            <input type="text" placeholder="Enter your package" name="package">-->

                        <p>select the package:</p>
                        <select class="select" name="package" id="select">
                            <option value="shimla package">Shimla package</option>
                            <option value="dwarka package">Dwarka package</option>
                            <option value="goa package">Goa package</option>
                        </select> 
                        <p>select the payment:</p>
                        <select class="select" name="payment" id="select">
                            <option value="COD">COD</option>
                        </select> 
                        <!--               <p>bus no</p>
                                            <input type="number" placeholder="Enter your bus no" name="bus" id="bus">
                        -->
                        <br>
                        <br>
                        <button type="submit">book now</button>
                    </form>

                </div>

            </div>
        </div>
        <!--
                <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
                sweet alert msg 
                <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
                         <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
                         <link rel="stylesheet" href="alert/dist/sweetalert.css">
        
        
                <script type="text/javascript">
        
                    var status = document.getElementById("status").value;
        
                    if (status == "success") {
                        
                        swal("Good job!", " your booking successfully", "success");
                    }
        
                </script>-->
    </body>
</html>
