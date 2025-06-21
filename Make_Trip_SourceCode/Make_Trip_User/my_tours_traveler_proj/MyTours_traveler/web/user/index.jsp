<%-- 
    Document   : index.jsp
    Created on : Apr 30, 2024, 10:41:16 AM
    Author     : Yash Kharti
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tourse & travel</title>


        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link
            href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap"
            rel="stylesheet">

        <!-- icon -->
        <script src="https://kit.fontawesome.com/d63648c99b.js" crossorigin="anonymous"></script>


        <!-- css file -->

        <!--<link rel="stylesheet" href="css/indexstyle.css">-->

        <link href="../css/indexstyle.css" rel="stylesheet" type="text/css"/>

    </head>

    <body>
        <div class="container">

            <!-- navbar -->
            <nav id="nav">
                <div class="logo">
                    <h1>MakeTrip</h1>
                </div>
                <ul>
                    <li><a href="#nav">Home</a></li>
                    <li><a href="#about">About Us</a></li>
                    <li><a href="#allpackage">Package</a></li>
                    <li><a href="#hotel">Hotels</a></li>
                    <li><a href="#booking">Booking</a></li>
                    <li><a href="#contact">Contact Us</a></li>
                </ul>

                <button type="submit" id="login">login</button>


            </nav>

            <!-- navbar end  -->

            <!-- main -->
            <div class="main">
                <div class="maintext">
                    <h1>Best vacation Destination <br> Your holiday Dreams </h1>
                </div>
            </div>

            <!-- main end -->

            <!-- About start -->

            <div class="about-us" id="about">
                <div class="head">
                    <h1 style="text-align: center; padding-top: 80px; ">About &nbsp; <span
                            style="color: rgb(255, 166, 0);">Us</span> </h1>
                </div>

                <div class="about">

                    <div class="about-img">
                        <!--<img src="img/about-img.png" alt="about">-->
                        <img src="../img/about-img.png" alt=""/>
                    </div>


                    <div class="about-info">
                        <h2>MakeTrip</h2>
                        <h3>About the Tour & Travel management</h3>
                        <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit.
                            sit exercitationem, ducimus veritatis corrupti illo
                            voluptatem ea nisi sapiente cumque ratione! Quibusdam.
                            adipisicing elit. Corporis, in cum dolores deserunt
                            saepe nihil consectetur voluptatum iure velit suscipit
                            Lorem ipsum dolor sit amet consectetur, adipisicing elit.
                            sit exercitationem, ducimus veritatis corrupti illo
                            voluptatem ea nisi sapiente cumque ratione! Quibusdam
                            adipisicing elit. Corporis, in cum dolores deserunt
                            Lorem ipsum dolor sit amet consectetur, adipisicing elit.
                            sit exercitationem, ducimus veritatis corrupti illo
                            voluptatem ea nisi sapiente cumque ratione! Quibusdam.</p>

                        <button class="about-btn">Read More...</button>
                    </div>
                </div>
            </div>


            <!-- About end  -->



            <!--  best package start -->
            <br>
            <br>
            <div class="pack" id="Package">
                <div class="head">
                    <h1 style="text-align: center;">Best &nbsp;<span style="color: rgb(255, 166, 0);">Packages</span> </h1>

                </div>
                <br>
                <br>
                <div class="packages">
                    <div class="card">
                        <img src="../img/shimla.jpg" alt="shimla"/>
                        <h3>Shimla</h3>
                        <p>2 Week Tour</p>
                        <p>10,000 rup only</p>
                        <button>book now</button>
                    </div>
                    <div class="card">
                        <img src="../img/goa-img.jpg" alt="shimla"/>
                        <h3>Goa</h3>
                        <p>2 Week Tour</p>
                        <p>10,000 rup only</p>
                        <button>book now</button>
                    </div>
                    <div class="card">
                        <!--<img src="img/ladakh-img.jpg" alt="shimla">-->
                        <img src="../img/ladakh-img.jpg" alt=""/>
                        <h3>Ladakh</h3>
                        <p>2 Week Tour</p>
                        <p>10,000 rup only</p>
                        <button>book now</button>
                    </div>

                </div>
            </div>


            <!--  best package end -->

            <!-- main all packages start -->

            <div class="tpack" id="allpackage">

                <div class="head">
                    <h1 style="text-align: center; padding-top: 100px;">Tour &nbsp;<span
                            style="color: rgb(255, 166, 0);">Packages</span></h1>
                </div>
                <div class="tpackage" id="pack1">

                    <div class="pack-img">
                        <!--<img src="img/pack1-shimla.jpg" alt=""/>-->
                        <img src="../img/pack1-shimla.jpg" alt=""/>
                    </div>
                    <!-- package-1 -->

                    <div class="pack-info">
                        <!-- package name    -->
                        <h2>Shimla package</h2>
                        <h5>5N/6D</h5>
                        <!-- date  -->
                        <h4 class="day"><i class="fa-solid fa-calendar-days"></i>
                            <p>1May-7May</p>
                        </h4>
                        <p class="content">Embark on a journey to the heart of the Himalayas with our specially <br>
                            curated Shimla tour packages. with best hotel, laxury bus ,daily breakfast, sightseeing tours.
                        </p>
                        <h4 class="hotel"><i class="fa-solid fa-hotel"></i>
                            <p>rajmahal palase hotel</p>
                        </h4>
                        <h4 class="bus"><i class="fa-solid fa-bus"></i>
                            <p>Gj 08 1212 (Ac-sleeper bus) </p>
                        </h4>
                        <h4 class="disc">20%Off</h4>
                        <h4 class="disc-p"><i class="fa-solid fa-indian-rupee-sign"></i>
                            <p>12,000/</p>
                        </h4>
                        <h4 class="rupee"><i class="fa-solid fa-indian-rupee-sign"></i>
                            <p>9,600/-</p>
                        </h4>

                        <button class="pkg-btn" type="submit">book now</button>
                    </div>
                </div>
            </div>
            <!-- package-2 -->

            <div class="tpackage" id="pack2">
                <div class="pack-img">
                    <!--<img src="img/pack2-ladakh.jpg" alt="">-->
                    <img src="../img/pack2-ladakh.jpg" alt=""/>
                </div>
                <div class="pack-info">
                    <!-- package name    -->
                    <h2>Ladakh package</h2>
                    <h5>6N/7D</h5>
                    <!-- date  -->
                    <h4 class="day"><i class="fa-solid fa-calendar-days"></i>
                        <p>1May-7May</p>
                    </h4>
                    <p class="content">Embark on a journey to the heart of the Himalayas with our specially <br>
                        curated Shimla tour packages. with best hotel, laxury bus ,daily breakfast, sightseeing tours. </p>
                    <h4 class="hotel"><i class="fa-solid fa-hotel"></i>
                        <p>rajmahal palase hotel</p>
                    </h4>
                    <h4 class="bus"><i class="fa-solid fa-bus"></i>
                        <p>Gj 24 1312 (Ac-sleeper bus) </p>
                    </h4>
                    <h4 class="disc">20%Off</h4>
                    <h4 class="disc-p"><i class="fa-solid fa-indian-rupee-sign"></i>
                        <p>24,000/</p>
                    </h4>
                    <h4 class="rupee"><i class="fa-solid fa-indian-rupee-sign"></i>
                        <p>19,200/-</p>
                    </h4>

                    <button class="pkg-btn" type="submit">book now</button>
                </div>
            </div>
            <!-- package-3 -->

            <div class="tpackage" id="pack3">
                <div class="pack-img">
                    <!--<img src="img/pack3-goa.jpg" alt="">-->
                    <img src="../img/pack3-goa.jpg" alt=""/>
                </div>
                <div class="pack-info">
                    <!-- package name    -->
                    <h2> Goa package </h2>
                    <h5>3N/4D</h5>
                    <!-- date  -->
                    <h4 class="day"><i class="fa-solid fa-calendar-days"></i>
                        <p>1May-7May</p>
                    </h4>
                    <p class="content">Embark on a journey to the heart of the Himalayas with our specially <br>
                        curated Shimla tour packages. with best hotel, laxury bus ,daily breakfast, sightseeing tours. </p>
                    <h4 class="hotel"><i class="fa-solid fa-hotel"></i>
                        <p>rajmahal palase hotel</p>
                    </h4>
                    <h4 class="bus"><i class="fa-solid fa-bus"></i>
                        <p>Gj 08 1212 (Ac-sleeper bus) </p>
                    </h4>
                    <h4 class="disc">20%Off</h4>
                    <h4 class="disc-p"><i class="fa-solid fa-indian-rupee-sign"></i>
                        <p>20,000/</p>
                    </h4>
                    <h4 class="rupee"><i class="fa-solid fa-indian-rupee-sign"></i>
                        <p>16,000/-</p>
                    </h4>

                    <button class="pkg-btn" type="submit">book now</button>
                </div>
            </div>

            <!-- package-4 -->

            <div class="tpackage" id="pack4">
                <div class="pack-img">
                    <!--<img src="img/pack4-kedarnath.jpeg" alt="">-->
                    <img src="../img/pack4-kedarnath.jpeg" alt=""/>
                </div>
                <div class="pack-info">
                    <!-- package name -->
                    <h2> kedarnath package </h2>
                    <h5>3N/4D</h5>
                    <!-- date  -->
                    <h4 class="day"><i class="fa-solid fa-calendar-days"></i>
                        <p>1May-7May</p>
                    </h4>
                    <p class="content">Embark on a journey to the heart of the Himalayas with our specially <br>
                        curated Shimla tour packages. with best hotel, laxury bus ,daily breakfast, sightseeing tours. </p>
                    <h4 class="hotel"><i class="fa-solid fa-hotel"></i>
                        <p>rajmahal palase hotel</p>
                    </h4>
                    <h4 class="bus"><i class="fa-solid fa-bus"></i>
                        <p>Gj 08 1343 (Ac-sleeper bus)</p>
                    </h4>
                    <h4 class="disc">20%Off</h4>
                    <h4 class="disc-p"><i class="fa-solid fa-indian-rupee-sign"></i>
                        <p>10,000/</p>
                    </h4>
                    <h4 class="rupee"><i class="fa-solid fa-indian-rupee-sign"></i>
                        <p>8,000/-</p>
                    </h4>

                    <button class="pkg-btn" type="submit">book now</button>
                </div>
            </div>



            <!-- main all packages end -->

            <!-- hotel  start-->

            <div class="head">
                <h1 style="text-align: center; padding-top: 100px; padding-bottom: 80px;">Tour &nbsp;<span
                        style="color: rgb(255, 166, 0);">Hotel</span></h1>
            </div>

            <div class="row" id="hotel">
                <div class="column-left">
                    <div class="slider">
                        <div class="slide">
                            <!--<img src="img/hotel1.jpg" alt="Image 1">-->
                            <img src="../img/hotel1.jpg" alt=""/>
                        </div>
                        <div class="slide">
                            <!--<img src="img/hotel2.jpg" alt="Image 2">-->
                            <img src="../img/hotel2.jpg" alt=""/>
                        </div>
                        <div class="slide">
                            <!--<img src="img/hotel3.jpg" alt="Image 3">-->
                            <img src="../img/hotel3.jpg" alt=""/>
                        </div>
                        <div class="slide">
                            <!--<img src="img/hotel4.jpg" alt="Image 4">-->
                            <img src="../img/hotel4.jpg" alt=""/>
                        </div>
                    </div>

                    <div class="icons">
                        <div class="prev"><i class="fa-solid fa-circle-chevron-left"></i></div>
                        <div class="next"><i class="fa-solid fa-circle-chevron-right"></i></div>
                    </div>

                </div>
                <div class="column-right">

                    <h1>MakeTrip Laxury Hotel</h1>
                    <p class="location">all package location</p>
                    <h3 class="star">4.5<i class="fa-solid fa-star" style="color: whitesmoke;"></i></h3>
                    <h4 class="hdisc">20%Off</h4> 
                    <h4 class="hdisc-p"><i class="fa-solid fa-indian-rupee-sign"></i>
                        <p>12,000/</p>
                    </h4>
                    <h4 class="h-rupee"><i class="fa-solid fa-indian-rupee-sign" style="color: rgb(13, 161, 210);"></i>
                        <p>9,600/-</p>
                    </h4>
                    <p class="per">1 room per night</p>


                    <h3 class="rooms"><i class="fa-solid fa-circle"></i><p>Dulex Rooms</p></h3>
                    <h4 class="adult"><i class="fa-solid fa-circle"></i><p>2 Adults</p></h4>
                    <h4 class="room"><i class="fa-solid fa-circle-check"></i><p>room is avalible</p></h4>
                    <h4 class="cancel"><i class="fa-regular fa-circle-xmark"></i><p>Free cancellation</p></h4>

                    <button class="hotel-btn" type="submit">book now</button>

                </div>
            </div>


            <!-- hotel  end-->


            <!-- Booking start -->
            <br>

            <div class="book" id="booking">
                <div class="head">
                    <h1 style="text-align: center; padding: 80px;">booking &nbsp; <span
                            style="color: rgb(255, 166, 0);">Now</span> </h1>
                </div>

                <div class="booking">
                    <!--<img src="img/booking.jpg" alt="book">-->
                    <img src="../img/booking.jpg" alt=""/>

                    <div class="form">
                        <h2 style="color: rgba(255, 166, 0, 0.929);">Book A Tour</h2>
                        <p>Name</p>
                        <input type="text" placeholder="Enter your full name" name="name">
                        <!-- <p>Email</p>
                        <input type="email" placeholder="Enter your email" name="email" id=""> -->
                        <p>Phone no</p>
                        <input type="number" placeholder="Enter your Contact no" name="number">
                        <p>date and time</p>
                        <input type="datetime" name="datetime" id="datetime">
                        <p>Address</p>
                        <input type="text" placeholder="Enter your Address" name="address">
                        <p>Adults</p>
                        <input type="number" placeholder="Enter total mambers" name="adults" id="adults">
                        <p>Pick up point</p>
                        <input type="text" placeholder="enter your pick up point" name="pickup">
                        <p>package</p>
                        <input type="text" placeholder="Enter your package" name="package">
                        <!-- <p>select the hotel:</p>
                        <select class="select" name="hotels" id="select">
                            <option value="taj Mahal hotel">Taj Mahal hotel</option>
                            <option value="rajmahal palase hotel">rajmahal palase hotel</option>
                            <option value="Ambay Villa hotel">Ambay Villa hotel</option>
                        </select> -->
                        <p>bus no</p>
                        <input type="number" placeholder="Enter your bus no" name="bus" id="bus">
                        <br>
                        <br>
                        <button type="submit">book now</button>
                    </div>
                </div>
            </div>

            <!-- booking end  -->

            <!-- contact start -->

            <div class="head" id="contact">
                <h1 style="text-align: center; padding: 80px;">Contact &nbsp; <span
                        style="color: rgb(255, 166, 0);">Us</span> </h1>
            </div>
            <div class="contact">

                <div class="contact-text">
                    <h2>Get In <span>Touch</span></h2>
                    <p>his application is develop to provide best travelling services to <br>
                        the customers and travel agents. We have developed tours and travel <br>
                        management system to provide a search platform where a tourist can <br>
                        find their tour places according to their choices. his application <br>
                        is develop to provide best travelling services to the customers and <br>
                        travel agents. We have developed tours and travel </p>
                    <div class="list">
                        <li><a href="#"><i class="fa-solid fa-square-phone" style="color: #57ee20;"></i> +91 9443909090</a>
                        </li>
                        <li><a href="#"><i class="fa-solid fa-square-envelope" style="color: #1ce31f;"></i>
                                MakeTrip@gmail.com</a></li>
                        <li><a href="#"><i class="fa-solid fa-map-location-dot" style="color: #19f04f;"></i> Palika
                                bajar,patan</a></li>
                    </div>
                </div>

                <div class="contact-form">
                    <form action="#">
                        <h2>Send <span>feedback</span></h2>
                        <input type="text" placeholder="Name" required>
                        <input type="email" placeholder="Email" required>
                        <textarea name="" id="" cols="35" rows="10" placeholder="Message" required></textarea>
                        <input type="submit" value="Send" class="submit" required>
                    </form>
                </div>
            </div>



            <!-- contact end -->

            <!-- footer start -->

            <div class="footer">

                <div class="text">
                    <h3 class="text-primary">MakeTrip</h3>
                    <p class="info">This application is develop to provide best travelling services to <br>
                        the customers and travel agents. We have developed tours and travel <br>
                        management system to provide a search platform where a tourist can <br>
                        find their tour places according to their choices.</p>
                    <p></p>
                    <p></p>

                </div>

                <div class="text">
                    <h3>Content</h3>
                    <p>Mobile:+012 345 67890</p>
                    <!-- <p>+012 345 67890</p> -->
                    <p>email:@info.com</p>
                    <p>Address:palika bazar,patan </p>
                    <!-- <p>@info.com</p> -->
                </div>

                <div class="text">
                    <h3>popular places</h3>
                    <p>shimla</p>
                    <p>goa</p>
                    <p>mumbai</p>
                </div>
            </div>

            <!-- footer end  -->


        </div>

        <script src="../js/travel.js" type="text/javascript"></script>
        <!--<script src="travel.js"></script>-->
    </body>

</html>



