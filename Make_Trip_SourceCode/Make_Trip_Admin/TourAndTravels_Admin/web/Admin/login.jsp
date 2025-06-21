<!--<!DOCTYPE html>-->
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Sign In</title>
        <!-- Font Icon -->
        <link rel="stylesheet"
              href="fonts/material-icon/css/material-design-iconic-font.min.css">

        <!-- Main css -->
        <link href="../CSS/login.css" rel="stylesheet" type="text/css"/>
        <!--<link rel="stylesheet" href="css/style.css">-->
        <link rel="icon" type="image/png" sizes="32x32" href="../Image/logo.png">
   
    </head>
    <body>  

        <div class="main">

            <!-- Sing in  Form -->
            <section class="sign-in">
                <div class="container">
                     <!--<img src="../Image/logo.png" style="height:100px; width: 100px; margin-bottom: 20px; margin-left: 0px;"/>-->
                    <div class="signin-content">
                        <div class="signin-image">
                          
                            <figure>
                                <!--<h1> Admin Login Here </h1>-->
                                <img src="../Image/signin-image.jpg" alt="sign in image"/>
                                <!--<img src="img/signin-image.jpg" alt="sing up image">-->
                            </figure>
                            <!--<a href="registration.jsp" style="text-align: center" class="signup-image-link">Create an account</a>-->
                        </div>

                        <div class="signin-form">
                            <h2 class="form-title"> Admin Login </h2>
                            <form method="post" action="admin.jsp" class="register-form"
                                  id="login-form">
                                <div class="form-group">
                                    <label for="Email"><i
                                            class="zmdi zmdi-account material-icons-name"></i></label> 
                                    <input type="text" name="aemail" id="aemail"
                                           placeholder="Your email" />
                                </div>
                                <div class="form-group">
                                    <label for="password"><i class="zmdi zmdi-lock"></i></label> <input
                                        type="password" name="password" id="password"
                                        placeholder="Password" />
                                </div>
                                <div class="form-group">
                                    <input type="checkbox" name="remember-me" id="remember-me"
                                           class="agree-term" /> <label for="remember-me"
                                           class="label-agree-term"><span><span></span></span>Remember
                                        me</label>
                                </div>
                                <div class="form-group form-button">
                                    <input type="submit" name="signin" id="signin"
                                           class="form-submit" value="Login" />
                                </div>
                                <a href="forgotPassword.jsp"> forgot password </a>
                                <br>
                                <br>
                                <br>
                                 <span id="failed" class="failed" style="color:red; margin-left:20px; font-size:15px;"><% if (session.getAttribute("failed") != null) {%>
                                    <%=session.getAttribute("failed")%>
                                    <% session.setAttribute("failed", null); }%>
                                </span>
                            </form>
                         </div>
                                 
                    </div>
                         
                 </div>
            </section>

        </div>

        <!-- JS -->
        <!--        <script src="vendor/jquery/jquery.min.js"></script>
                <script src="js/main.js"></script>
                <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
                 <link rel="stylesheet" href="alert/dist/sweetalert.css">
        
        
                <script type="text/javascript">
        
                    var status = document.getElementById("status").value;
        
                    if (status == "failed") {
        
        //                  Swal("congrats", "Account Created Successfully", "success");
                        swal("Good job!", " your Registration successfully", "success");
                    }
        
                </script>-->
    </body>
    <!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>