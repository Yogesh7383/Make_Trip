<%-- 
    Document   : navbar
    Created on : May 10, 2024, 2:14:47 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="../CSS/navbar.css" rel="stylesheet" type="text/css"/>
                 <!--<link rel="icon" type="image/png" sizes="32x32" href="../Image/logo.png">-->
    </head>
    <body>
       <nav id="nav">
                 <div class="logo">
                    <img src="../Image/logo.png" style="height:100px; width: 100px; margin-bottom: 20px;"/>
                </div> 
                <div class="h1">
                    <h1> Travel Management System </h1>
                </div>

                <div class="icon">
                    <i id="bar" class="fa-solid fa-bars"></i>
                </div>
                <!-- logout button path-->
                <button type="submit" id="Logout"><a href="login.jsp"> Logout</a>  </button>
            </nav>
    </body>
</html>
