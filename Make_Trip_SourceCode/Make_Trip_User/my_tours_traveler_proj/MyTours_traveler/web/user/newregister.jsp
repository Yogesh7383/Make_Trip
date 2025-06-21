<%-- 
    Document   : newregister
    Created on : Apr 29, 2024, 10:56:57 PM
    Author     : Yash Kharti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet"
              href="fonts/material-icon/css/material-design-iconic-font.min.css">

        <!-- Main css -->
        <link href="../css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>

        <div class="main">

            <!-- Sign up form -->
            <section class="signup">
                <div class="container">




                    <div class="signup-content">
                        <div class="signup-form">
                            <h2 class="form-title">Sign up</h2>

                            <form method="Post" action="http://localhost:8084/MyTours_traveler/registrationservlet" class="register-form"
                                  id="register-form">
                                <div class="form-group">
                                    <label for="name"><i
                                            class="zmdi zmdi-account material-icons-name"></i></label> <input
                                        type="text" name="name" id="name" placeholder="Your Name" />
                                </div>
                                <div class="form-group">
                                    <label for="email"><i class="zmdi zmdi-email"></i></label> <input
                                        type="email" name="email" id="email" placeholder="Your Email" />
                                </div>
                                <div class="form-group">
                                    <label for="pass"><i class="zmdi zmdi-lock"></i></label> <input
                                        type="password" name="pass" id="pass" placeholder="Password" />
                                </div>

                                <div class="form-group">
                                    <label for="contact"><i class="zmdi zmdi-lock-outline"></i></label>
                                    <input type="text" name="contact" id="contact"
                                           placeholder="Contact no" />
                                </div>
                                <div class="form-group">
                                    <input type="checkbox" name="agree-term" id="agree-term"
                                           class="agree-term" /> <label for="agree-term"
                                           class="label-agree-term"><span><span></span></span>I
                                        agree all statements in <a href="#" class="term-service">Terms
                                            of service</a></label>
                                </div>
                                <div class="form-group form-button">
                                    <input type="submit" name="signup" id="signup"
                                           class="form-submit" value="Register" />
                                </div>

                                <span id="errormess" class="errormess" style="color:red;margin-left:15px;font-size:15px;"><% if (session.getAttribute("errormess") != null) {%>
                                    <%=session.getAttribute("errormess")%>
                                    <% session.setAttribute("errormess", null);
                                                                            }%>
                                </span>
                                <span id="SuccessMess" class="SuccessMess" style="color:green;margin-left:25px; font-size:20px;"><% if (session.getAttribute("SuccessMess") != null) {%>
                                    <%=session.getAttribute("SuccessMess")%>
                                    <% session.setAttribute("SuccessMess", null);
                                                                            }%>
                                </span>  
                            </form>


                        </div>
                        <div class="signup-image">
                            <figure>
                                
                               <img src="../img/signup-image.jpg" alt="sign up image"/>
                            </figure>
                            <a href="login.jsp" class="signup-image-link">I am already
                                member</a>
                        </div>
                    </div>
                </div>
            </section>
        </div>



    </body>
    <!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>