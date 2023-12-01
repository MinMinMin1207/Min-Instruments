<%-- 
    Document   : viewCart
    Created on : Jun 15, 2023, 4:22:47 PM
    Author     : Min
--%>

<%@page import="sample.shopping.InstrumentsDTO"%>
<%@page import="sample.shopping.Tea"%>
<%@page import="sample.shopping.Cart"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        

        <!-- title -->
        <title>Cart</title>

        <!-- favicon -->
        <link rel="shortcut icon" type="image/png" href="assets/img/favicon.png">
        <!-- google font -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
        <!-- fontawesome -->
        <link rel="stylesheet" href="./css/all.min.css">
        <!-- bootstrap -->
        <link rel="stylesheet" href="./css/bootstrap.min.css">
        <!-- owl carousel -->
        <link rel="stylesheet" href="./css/owl.carousel.css">
        <!-- magnific popup -->
        <link rel="stylesheet" href="./css/magnific-popup.css">
        <!-- animate css -->
        <link rel="stylesheet" href="./css/animate.css">
        <!-- mean menu css -->
        <link rel="stylesheet" href="./css/meanmenu.min.css">
        <!-- main style -->
        <link rel="stylesheet" href="./css/main.css">
        <!-- responsive -->
        <link rel="stylesheet" href="./css/responsive.css">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

    </head>
    <body>

        <!--PreLoader-->
        <div class="loader">
            <div class="loader-inner">
                <div class="circle"></div>
            </div>
        </div>
        <!--PreLoader Ends-->

        <!-- header -->
        <div class="top-header-area" id="sticker">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-sm-12 text-center">
                        <div class="main-menu-wrap">
                            <!-- logo -->
                            <div class="site-logo">
                                <a href="homee.html">
                                    <img src="./img/piano (1).png" alt="">
                                </a>
                            </div>
                            <!-- logo -->

                            <!-- menu start -->
                            <nav class="main-menu">
                                <ul>
                                    <li class="current-list-item"><a href="homee.html">Home</a>
                                        <ul class="sub-menu">
                                            <li><a href="index.html">Static Home</a></li>
                                            <li><a href="index_2.html">Slider Home</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">About</a></li>
                                    <li><a href="#">Pages</a>
                                        <ul class="sub-menu">
                                            <li><a href="404.html">404 page</a></li>
                                            <li><a href="about.html">About</a></li>
                                            <li><a href="cart.html">Cart</a></li>
                                            <li><a href="checkout.html">Check Out</a></li>
                                            <li><a href="contact.html">Contact</a></li>
                                            <li><a href="news.html">News</a></li>
                                            <li><a href="shop.jsp">Shop</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">News</a>
                                        <ul class="sub-menu">
                                            <li><a href="news.html">News</a></li>
                                            <li><a href="single-news.html">Single News</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">Contact</a></li>
                                    <li><a href="shop.html">Shop</a>
                                        <ul class="sub-menu">
                                            <li><a href="shop.html">Shop</a></li>
                                            <li><a href="checkout.html">Check Out</a></li>
                                            <li><a href="single-product.html">Single Product</a></li>
                                            <li><a href="cart.html">Cart</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <div class="header-icons">
                                            <a class="shopping-cart" href="cart.html"><i class='bx bxs-cart-add'></i></a>
                                            <a class="mobile-hide search-bar-icon" href="#"><i class='bx bx-search-alt'></i></a>
                                        </div>
                                    </li>
                                </ul>
                            </nav>
                            <a class="mobile-show search-bar-icon" href="#"><i class="fas fa-search"></i></a>
                            <div class="mobile-menu"></div>
                            <!-- menu end -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end header -->

        <!-- search area -->
        <div class="search-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <span class="close-btn"><i class='bx bx-x'></i></span>
                        <div class="search-bar">
                            <div class="search-bar-tablecell">
                                <h3>Search For:</h3>
                                <input type="text" placeholder="Keywords">
                                <button type="submit">Search <i class='bx bxs-search' ></i></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end search arewa -->

        <!-- breadcrumb-section -->
        <div class="breadcrumb-section breadcrumb-bg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2 text-center">
                        <div class="breadcrumb-text">
                            <p>High Quality and Trustworthy</p>
                            <h1>Cart</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end breadcrumb section -->

        <!-- cart -->
        <%
            Cart cart = (Cart) session.getAttribute("CART");

            if (cart != null) {
                if (cart.getCart().size() > 0) {
        %>
        <div class="cart-section mt-150 mb-150">
            <div class="container">
                <div class="row">

                    <div class="col-lg-8 col-md-12">

                        <div class="cart-table-wrap">

                            <table class="cart-table">

                                <thead class="cart-table-head">
                                    <tr class="table-head-row">
                                        <th class="product-remove"></th>
                                        <th class="product-image">ProductID</th>
                                        <th class="product-image">Product Image</th>
                                        <th class="product-name">Name</th>
                                        <th class="product-price">Price</th>
                                        <th class="product-quantity">Quantity</th>
                                        <th class="product-total">Total</th>
                                        <th>Edit</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                        int count = 1;
                                        double total = 0;
                                        for (InstrumentsDTO tea : cart.getCart().values()) {
                                            total += tea.getPrice() * tea.getQuantity();
                                    %>
                                <form action="MainController" method="POST">
                                    <tr class="table-body-row">
                                        <td class="product-remove"><input type ="submit" name ="action" value ="Remove"/></td>
                                        <td class="product-image"><input type="text" name="id" value="<%= tea.getId()%>"></td>
                                        <td class="product-image"><img src="<%= tea.getImage()%>" alt=""></td>
                                        <td class="product-name"><%= tea.getName()%></td>
                                        <td class="product-price">$<%= tea.getPrice()%></td>
                                        <td class="product-quantity"><input type ="number" value ="<%= tea.getQuantity()%>" min ="1" name = "quantity" required=""/></td>
                                        <td class="product-total"><%= tea.getPrice() * tea.getQuantity()%>$</td>
                                        <td>
                                            <input type ="submit" name ="action" value ="Edit"/>
                                        </td>
                                    </tr>
                                </form>
                                <%
                                    }
                                %>

                                </tbody>
                            </table>

                        </div>
                    </div>

                    <div class="col-lg-4">
                        <div class="total-section">
                            <table class="total-table">
                                <thead class="total-table-head">
                                    <tr class="table-total-row">
                                        <th>Total</th>
                                        <th>Price</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="total-data">
                                        <td><strong>Subtotal: </strong></td>
                                        <td>$<%= total%></td>
                                    </tr>
                                    <tr class="total-data">
                                        <td><strong>Shipping: </strong></td>
                                        <td>$45</td>
                                    </tr>
                                    <tr class="total-data">
                                        <td><strong>Total: </strong></td>
                                        <td>$<%= total + 45%></td>
                                    </tr>
                                </tbody>
                            </table>
                            <div class="cart-buttons">
                                <form action="MainController" method="POST" >

                                    <a href="MainController?action=CheckOut" class="boxed-btn black">Check Out</a>
                                </form>
                            </div>
                        </div>

                        <div class="coupon-section">
                            <h3>Apply Coupon</h3>
                            <div class="coupon-form-wrap">
                                <form action="index.html">
                                    <p><input type="text" placeholder="Coupon"></p>
                                    <p><input type="submit" value="Apply"></p>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%
        } else {
        %>

        <h1>Your cart is empty! Buy something, please</h1>

        <%
                }
            }
        %>

        <!-- end cart -->

        <!-- logo carousel -->
        <div class="logo-carousel-section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="logo-carousel-inner">
                            <div class="single-logo-item">
                                <img src="assets/img/company-logos/1.png" alt="">
                            </div>
                            <div class="single-logo-item">
                                <img src="assets/img/company-logos/2.png" alt="">
                            </div>
                            <div class="single-logo-item">
                                <img src="assets/img/company-logos/3.png" alt="">
                            </div>
                            <div class="single-logo-item">
                                <img src="assets/img/company-logos/4.png" alt="">
                            </div>
                            <div class="single-logo-item">
                                <img src="assets/img/company-logos/5.png" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end logo carousel -->

        <!-- footer -->
        <div class="footer-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="footer-box about-widget">
                            <h2 class="widget-title">About us</h2>
                            <p>Welcome to our Piano Shopping Page! At MIN, we're dedicated to helping you find your perfect piano. From grand pianos to uprights and digital pianos, our curated selection caters to all musicians. Start your musical journey with us today!</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="footer-box get-in-touch">
                            <h2 class="widget-title">Get in Touch</h2>
                            <ul>
                                <li>Lô E2a-7, Đường D1, Đ. D1, Khu Công Nghệ Cao, Thủ Đức, TP Hồ Chí Minh.</li>
                                <li>pianostore.minminmin@gmail.com</li>
                                <li>0822 050 673</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="footer-box pages">
                            <h2 class="widget-title">Pages</h2>
                            <ul>
                                <li><a href="index.html">Home</a></li>
                                <li><a href="about.html">About</a></li>
                                <li><a href="services.html">Shop</a></li>
                                <li><a href="news.html">News</a></li>
                                <li><a href="contact.html">Contact</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="footer-box subscribe">
                            <h2 class="widget-title">Subscribe</h2>
                            <p>Subscribe to our mailing list to get the latest updates.</p>
                            <form action="index.html">
                                <input type="email" placeholder="Email">
                                <button type="submit"><i class="fas fa-paper-plane"></i></button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end footer -->

        <!-- copyright -->
        <div class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-12">
                        <p>Copyrights &copy; 2023 - <a href="https://www.facebook.com/phucloc.nguyenthuy.5">Nguyen Thuy Phuc Loc</a>,  All Rights Reserved.</p>
                    </div>
                    <div class="col-lg-6 text-right col-md-12">
                        <div class="social-icons">
                            <ul>
                                <li><a href="#" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
                                <li><a href="#" target="_blank"><i class="fab fa-twitter"></i></a></li>
                                <li><a href="#" target="_blank"><i class="fab fa-instagram"></i></a></li>
                                <li><a href="#" target="_blank"><i class="fab fa-linkedin"></i></a></li>
                                <li><a href="#" target="_blank"><i class="fab fa-dribbble"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end copyright -->

        <!-- jquery -->
        <script src="./js/jquery-1.11.3.min.js"></script>
        <!-- bootstrap -->
        <script src="./js/bootstrap.min.js"></script>
        <!-- count down -->
        <script src="./js/jquery.countdown.js"></script>
        <!-- isotope -->
        <script src="./js/jquery.isotope-3.0.6.min.js"></script>
        <!-- waypoints -->
        <script src="./js/waypoints.js"></script>
        <!-- owl carousel -->
        <script src="./js/owl.carousel.min.js"></script>
        <!-- magnific popup -->
        <script src="./js/jquery.magnific-popup.min.js"></script>
        <!-- mean menu -->
        <script src="./js/jquery.meanmenu.min.js"></script>
        <!-- sticker js -->
        <script src="./js/sticker.js"></script>
        <!-- main js -->
        <script src="./js/main.js"></script>
        
        <script>
            document.querySelector("#formCheckOut").onsubmit = () => {
                alert("Your cart is packing and on the way to you !");
            }
        </script>
        
    </body>
</html>
