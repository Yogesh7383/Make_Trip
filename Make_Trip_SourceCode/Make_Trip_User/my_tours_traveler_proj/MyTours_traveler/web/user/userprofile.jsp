<%-- 
    Document   : userprofile
    Created on : May 4, 2024, 2:50:52 PM
    Author     : Yash Kharti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>user profile</title>
        <style>
            .card {
                width: 900px;
                border: 1px solid #ccc;
                border-radius: 5px;
                padding: 5px;
                margin: 20px;
                box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            }
        </style>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap"
              rel="stylesheet">
        <link href="../css/profile.css" rel="stylesheet" type="text/css"/>
    </head>
    <%@include file="navbar.jsp" %>
    <body>
        <div class="profile"> 

            <div class="card">
                <ul>
                    <li><a href="yourprofile.jsp">your profile</a></li>
                    <li><a href="bphistory.jsp">package booking</a></li>
                    <li><a href="bhotelhistory.jsp">hotel booking</a></li> 
                </ul>
            </div>
            <hr>
            <div class="data">
                <!--<h2>show</h2>-->
            </div>
        </div> 

        <%--<%@include file="footer.jsp"%>--%>
    <!--</body>-->
</html>
