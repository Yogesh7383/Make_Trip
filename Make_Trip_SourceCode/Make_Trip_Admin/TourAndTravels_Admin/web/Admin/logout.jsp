
    <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Logout </title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
   
   <link rel="icon" type="image/png" sizes="32x32" href="../Image/logo.png">
 
<style>
        body {
            background-color: #f8f9fa;
            padding-top: 50px;
        }
        .container {
            max-width: 600px;
        }
        nav{
                display: flex;
                align-items: center;
                background-color:rgba(255, 166, 0, 0.979);
                color: rgba(53, 51, 51, 0.177);
                height: 80px;
                left: 0px;
                top: 20px;
                

                padding-top: 20px;

                position: fixed;
                top: 0%;
                width: 100%;
                z-index: 1;
            }
.logo img{
                position: absolute;
        height: 100px;
        width: 100px;
        left: 20px;
        bottom: -35px;
        
    }

            .h1{
                color: black;
                font-size: 30px;
                font-style:inherit;
                position: relative;
              left: 40%;
              
                text-align: center;

            } 
            button{
                width:20%;
                margin-left: 35%;
                
            }
button a{
    text-decoration:  none;
    
    
} 
  nav button:hover{
  
      background-color: whitesmoke;
      color: black;
      /* width: 100px; */
      zoom: 1;

      /* border-radius: 0%; */
  }
   .card {  
                position: absolute;
                width: 600px;
                height: 300px;
                border: 1px solid #ccc;
                border-radius: 5px;
                padding: 5px;
                margin: 20px;
                left:35%;
                background-color: #eee;
                box-shadow: 0 4px 8px rgba(0,5,19,0.1);
                right: 35%;
            }
    </style>
</head>
<body>
  
    <div class="container">
          <nav id="nav">
                 <div class="logo">
                    <img src="../Image/logo.png" style="height:100px; width: 100px; margin-bottom: 20px;"/>
                </div> 
                <div class="h1">
                    <h1 style="color:black;"> Travel Management System </h1>
                </div>

                <div class="icon">
                    <i id="bar" class="fa-solid fa-bars"></i>
                </div>
                <!-- logout button path-->
            </nav>
        <div class="main-content" style="margin-left:25%; margin-top: 100px;">
            <div class="card">
        <h2 style="font-size:250%; text-justify: center;text-align: center; margin-top:10%;"> Welcome Admin </h2><br><br><br>
        <%-- Check if user is logged in --%>
        <%
            String username = (String) session.getAttribute("aemail");
            if (username != null) {
        %>
       
        <p>Welcome, <%= username %>!</p>
        <p><a href="logout.jsp">logout</a></p>
        <% } else { %>
         <button type="submit" id="Logout"><a href="logout.jsp" style="font-size:100%; text-justify: center;text-align: center; margin-top:10%; margin-left: -5%;">Logout</a></button>   
        <% } %>
            </div>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>


</div>
</body>
</html>
