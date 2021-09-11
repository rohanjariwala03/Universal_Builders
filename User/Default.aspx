<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="User_Default" %>

<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from expert-themes.com/html/ourland/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 17 Jan 2019 05:23:47 GMT -->
<head>
<meta charset="utf-8">
<title>Universal Builders- Real Estate</title>
<!-- Stylesheets -->
<link href="css/bootstrap.css" rel="stylesheet">
<link href="plugins/revolution/css/settings.css" rel="stylesheet" type="text/css"><!-- REVOLUTION SETTINGS STYLES -->
<link href="plugins/revolution/css/layers.css" rel="stylesheet" type="text/css"><!-- REVOLUTION LAYERS STYLES -->
<link href="plugins/revolution/css/navigation.css" rel="stylesheet" type="text/css"><!-- REVOLUTION NAVIGATION STYLES -->
<link href="css/style.css" rel="stylesheet">
<link href="css/responsive.css" rel="stylesheet">
<!--Color Switcher Mockup-->
<link href="css/color-switcher-design.css" rel="stylesheet">
<!--Color Themes-->
<link id="theme-color-file" href="css/color-themes/default-theme.css" rel="stylesheet">

<link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">
<link rel="icon" href="images/favicon.png" type="image/x-icon">
<!-- Responsive -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script><![endif]-->
<!--[if lt IE 9]><script src="js/respond.js"></script><![endif]-->
</head>

<body>
    <form id="Form1" runat="server">
<div class="page-wrapper">
    <!-- Preloader -->
    <%--<div class="preloader"></div>--%>
    
    <!-- Main Header-->
    <header class="main-header header-style-one">
        <!--Header Top-->
        <div class="header-top">
            <div class="auto-container">
                <div class="inner-container clearfix">
                    <div class="top-left">
                        <ul class="contact-list clearfix">
                            <li><i class="la la-home"></i> 124,Agiyaree street, surat</li>
                            <li><i class="la la-envelope-o"></i><a href="#">universalb123@gmail.com</a></li>
                        </ul>
                    </div>
                    <div class="top-right">
                        <div class="btn-box"><a href="Login.aspx" class="theme-btn btn-style-four">Login / Register</a></div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Header Top -->

        <!-- Header Lower -->
        <div class="header-lower">
            <div class="main-box">
                <div class="auto-container">
                    <div class="inner-container clearfix">
                        <div class="logo-box">
                            <div class="logo"><a href="Index.aspx"><img src="../l6.png" height="70" width="260" alt="" title=""></a></div>
                        </div>

                        <div class="nav-outer">
                            <!-- Main Menu -->
                            <nav class="main-menu navbar-expand-md navbar-light">
                                <div class="navbar-header">
                                    <!-- Toggle Button -->      
                                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                        <span class="icon flaticon-menu"></span>
                                    </button>
                                </div>
                                
                                <div class="collapse navbar-collapse clearfix" id="navbarSupportedContent">
                                    <ul class="navigation clearfix">
                                        <%--<li class="current dropdown"><a href="#">Home</a>
                                            <ul>
                                                <li class="dropdown"><a href="#">Header Styles</a>
                                                    <ul>
                                                        <li><a href="Index.aspx">Header Style One</a></li>
                                                        <li><a href="index-3.html">Header Style Two</a></li>
                                                        <li><a href="index-4.html">Header Style three</a></li>
                                                        <li><a href="index-5.html">Header Style Four</a></li>
                                                        <li><a href="index-6.html">Header Style Five</a></li>
                                                        <li><a href="index-7.html">Header Style Six</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="index-2.html">Home page 01</a></li>
                                                <li><a href="index-3.html">Home page 02</a></li>
                                                <li><a href="index-4.html">Home page 03</a></li>
                                                <li><a href="index-5.html">Home page 04</a></li>
                                                <li><a href="index-6.html">Home page 05</a></li>
                                                <li><a href="index-7.html">Home page 06</a></li>
                                            </ul>
                                        </li>--%>


                                        <li><a href="Index.aspx">Home</a></li>

                                        <li class="dropdown"><a href="#">About</a>
                                            <ul>
                                                <li><a href="AboutUs.aspx">About Us</a></li>
                                                <li><a href="ContactUs.aspx">ContactUs</a></li>
                                                <%--<li><a href="faq.html">FAQ's</a></li>--%>
                                               <%-- <li><a href="testimonial.html">Testimonials</a></li>--%>
                                            </ul>
                                        </li>

                                        <li><a href="AddPropertyOwner.aspx">Sell/Rent</a></li>
                                        

                                         <li><a href="PropertyAll.aspx">Property</a></li>
                                        
                                        <li><a href="Fav.aspx">Favourite</a></li>

                                        <li><a href="UMyProfile.aspx">Profile</a></li>

                                        <li class="dropdown has-mega-menu"><a href="#">Page</a>
                                            <div class="mega-menu">
                                                <div class="mega-menu-bar row clearfix">
                                                    <div class="column col-lg-3 col-md-3 col-sm-12">
                                                        <h3>About Us</h3>
                                                        <ul>
                                                            <li><a href="AboutUs.aspx">About Us</a></li>
                                                            <li><a href="Agent.aspx">Agents</a></li>
                                                            
                                                            <%--<li><a href="agent-detail.html">Agent Detail</a></li>
                                                            <li><a href="faq.html">FAQ's</a></li>
                                                            <li><a href="testimonial.html">Testimonials</a></li>--%>
                                                        </ul>
                                                    </div>
                                                    <div class="column col-lg-3 col-md-3 col-sm-12">
                                                        <h3>Properties</h3>
                                                        <ul>
                                                            <li><a href="AuctionProperty.aspx">Auction Properties</a></li>
                                                            <li><a href="PropertyListiew.aspx">Property List View</a></li>
                                                            <li><a href="PropertyGridView.aspx">Property Grid View</a></li>
                                                            <%--<li><a href="property-modern-view.html">Property Modern View</a></li>
                                                            <li><a href="property-detail.html">Property Detail</a></li>--%>
                                                        </ul>
                                                    </div>
                                                    <%--<div class="column col-lg-3 col-md-3 col-sm-12">
                                                        <h3>Blog</h3>
                                                        <ul>
                                                            <li><a href="blog.html">Blog Default</a></li>
                                                            <li><a href="blog-list.html">Blog List View</a></li>
                                                            <li><a href="blog-grid.html">Blog Grid View</a></li>
                                                            <li><a href="blog-detail.html">Blog Detail</a></li>
                                                            <li><a href="ErrorPage.aspx">404 Error Page</a></li>
                                                        </ul>
                                                    </div>--%>
                                                    <div class="column col-lg-3 col-md-3 col-sm-12">
                                                        <h3>Pages</h3>
                                                        <ul>
                                                            <li><a href="AddPropertyOwner.aspx">Sell Property</a></li>
                                                            <li><a href="UMyProfile.aspx">My Profile</a></li>
                                                            <%--<li><a href="coming-soon.html">Coming Soon</a></li>--%>
                                                            <li><a href="Login.aspx">Login</a></li>
                                                            <li><a href="ContactUs.aspx">Contact Us</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>              
                                </div>
                            </nav><!-- Main Menu End-->
                                
                            <!-- Main Menu End-->
                            <div class="outer-box clearfix">
                                <!--Search Box-->
                                <div class="search-box-outer">
                                    <div class="dropdown">
                                        <button class="search-box-btn dropdown-toggle" type="button" id="dropdownMenu3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="la la-search"></span></button>
                                        <ul class="dropdown-menu pull-right search-panel" aria-labelledby="dropdownMenu3">
                                            <li class="panel-outer">
                                                <div class="form-container">
                                                    <%--<form name="frm" runat="server" >--%>
                                                    <%--<form method="post" action="https://expert-themes.com/html/ourland/blog.html">--%>
                                                        <div class="form-group">
                                                           <%-- <input type="search" name="field-name" value="" placeholder="Search City" required>--%>
                                                          <%--  <asp:TextBox ID="txtsearch" runat="server" placeholder="Search City"></asp:TextBox>--%>
                                                            <%--<button type="submit" class="search-btn"><span class="la la-search"></span></button>--%>
                                                           <%-- <asp:Button ID="btnSearch" runat="server" Text="B"  class="search-btn" OnClick="btnSearch_Click"/>--%>
                                                        </div>
                                                    <%--</form>--%>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--End Header Lower-->

        <!-- Sticky Header  -->
        <div class="sticky-header">
            <div class="auto-container clearfix">
                <!--Logo-->
                <div class="logo pull-left">
                    <a href="Index.aspx" title=""><img src="../l4.png" height="50" width="140" alt="" title=""></a>
                </div>
                <!--Right Col-->
                <div class="pull-right">
                    <!-- Main Menu -->
                    <nav class="main-menu">
                        <div class="navbar-collapse show collapse clearfix">
                            <ul class="navigation clearfix">
                                <li><a href="Index.aspx">Home</a></li>


                                        <%--<li><a href="Agent.aspx">Agent</a></li>--%>
                                        

                                        <li class="dropdown"><a href="#">About</a>
                                            <ul>
                                                <li><a href="AboutUs.aspx">About Us</a></li>
                                                <li><a href="ContactUs.aspx">ContactUs</a></li>
                                                <%--<li><a href="faq.html">FAQ's</a></li>--%>
                                               <%-- <li><a href="testimonial.html">Testimonials</a></li>--%>
                                            </ul>
                                        </li>

                                        <li><a href="AddPropertyOwner.aspx">Sell/Rent</a></li>
                                        
                                        

                                         <li><a href="PropertyAll.aspx">Property</a></li>

                                <li><a href="Fav.aspx">Favourite</a></li>

                                 <li><a href="UMyProfile.aspx">Profile</a></li>
                                        
                                        <li class="dropdown has-mega-menu"><a href="#">Pages</a>
                                            <div class="mega-menu">
                                                <div class="mega-menu-bar row clearfix">
                                                    <div class="column col-lg-3 col-md-3 col-sm-12">
                                                        <h3>About Us</h3>
                                                        <ul>
                                                            <li><a href="AboutUs.aspx">About Us</a></li>
                                                            <li><a href="Agent.aspx">Agents</a></li>
                                                            <%--<li><a href="agent-detail.html">Agent Detail</a></li>
                                                            <li><a href="faq.html">FAQ's</a></li>
                                                            <li><a href="testimonial.html">Testimonials</a></li>--%>
                                                        </ul>
                                                    </div>
                                                    <div class="column col-lg-3 col-md-3 col-sm-12">
                                                        <h3>Properties</h3>
                                                        <ul>
                                                             <li><a href="AuctionProperty.aspx">Auction Properties</a></li>
                                                            <li><a href="PropertyListiew.aspx">Property List View</a></li>
                                                            <li><a href="PropertyGridView.aspx">Property Grid View</a></li>
                                                        </ul>
                                                    </div>
                                                    <%--<div class="column col-lg-3 col-md-3 col-sm-12">
                                                        <h3>Blog</h3>
                                                        <ul>
                                                            <li><a href="blog.html">Blog Default</a></li>
                                                            <li><a href="blog-list.html">Blog List View</a></li>
                                                            <li><a href="blog-grid.html">Blog Grid View</a></li>
                                                            <li><a href="blog-detail.html">Blog Detail</a></li>
                                                            <li><a href="error-page.html">404 Error Page</a></li>
                                                        </ul>
                                                    </div>--%>
                                                    <div class="column col-lg-3 col-md-3 col-sm-12">
                                                        <h3>Pages</h3>
                                                        
                                                        <ul>
                                                            <li><a href="AddPropertyOwner.aspx">Sell Property</a></li>
                                                            <li><a href="UMyProfile.aspx">My Profile</a></li>
                                                            <%--<li><a href="coming-soon.html">Coming Soon</a></li>--%>
                                                            <li><a href="Login.aspx">Login</a></li>
                                                            <li><a href="ContactUs.aspx">Contact Us</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                            </ul>              
                        </div>
                    </nav><!-- Main Menu End-->
                </div>
            </div>
        </div><!-- End Sticky Menu -->
    </header>
    <div class="page-wrapper">
    <!-- Preloader -->
    <div class="preloader"></div>
    
       <section class="comming-soon" <%--style="background-image:url(images/background/4.jpg)"--%>>
        <div class="auto-container">
            <div class="content">
                <%--<div class="content-inner">--%>
                   <%-- <div class="logo"><a href="index-2.html"><img src="images/logo-2.png" alt="" /></a></div>--%>
                    <h2>Comming Soon</h2>
                    <div class="time-counter"><div class="time-countdown clearfix" data-countdown="2019/1/19"></div></div>
                    <div class="text">Our Website is under construction. stay tuned for something amazing!. <br> Subscribe to be notified,</div>
                    
                    </div>
            </div>
      <%--  </div>--%>
    </section>

</div>
<!--End pagewrapper-->

<script src="js/jquery.js"></script> 
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-ui.js"></script>
<script src="js/jquery.countdown.js"></script>
<script src="js/appear.js"></script>
<script src="js/script.js"></script>

     <footer class="main-footer" style="background-image: url(images/background/3.jpg);">
        <div class="auto-container">
            <%--<div class="upper-box">
                <div class="row">
                    <!-- Upper column -->
                    <div class="upper-column col-lg-3 col-md-12 col-sm-12">
                        <div class="footer-logo">
                            <figure class="image"><a href="Index.aspx"><img src="../l4.png" height="50" width="140"" alt=""></a></figure>
                        </div>
                    </div>

                    <!-- Upper column -->
                    

                    <div class="upper-column col-lg-6 col-md-12 col-sm-12">
                        <div class="subscribe-form">
                            <form method="post"  action="https://expert-themes.com/html/ourland/blog.html">
                                <div class="form-group">
                                    <input type="email" name="email" value="" placeholder="Enter Your Email" required="">
                                    <asp:TextBox ID="txtEmail" runat="server" placeholder="Enter Your Email" ></asp:TextBox>
                                    <button type="submit" class="theme-btn btn-style-four" OnClick="Button1_Click">Submit</button>
                                     <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
                                </div>
                            
                            </form>
                        </div>
                    </div>

                    <!-- Upper column -->
                    <div class="upper-column col-lg-3 col-md-12 col-sm-12">
                        <div class="social-links">
                            <ul class="social-icon-two">
                                <li><a href="#"><i class="la la-facebook"></i></a></li>
                                <li><a href="#"><i class="la la-twitter"></i></a></li>
                                <li><a href="#"><i class="la la-google-plus"></i></a></li>
                                <li><a href="#"><i class="la la-dribbble"></i></a></li>
                                <li><a href="#"><i class="la la-pinterest-p"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>--%>

            <!--Widgets Section-->
            <div class="widgets-section">
                <div class="row">
                    <!--Big Column-->
                    <div class="big-column col-xl-7 col-lg-12 col-md-12 col-sm-12">
                        <div class="row">
                            
                            
                            <!--Footer Column-->
                            <div class="footer-column col-xl-6 col-lg-6 col-md-6 col-sm-12">
                                <div class="footer-widget cities-widget">
                                    <h2 class="widget-title">PROPERTY CITIES</h2>
                                    <div class="widget-content">
                                        <ul class="list clearfix">
                                            <li><a href="properties.html">Adıyaman</a></li>
                                            <li><a href="properties.html">Anchorage</a></li>
                                            <li><a href="properties.html">Ahvaz</a></li>
                                            <li><a href="properties.html">Angra dos Reis</a></li>
                                            <li><a href="properties.html">Akesu</a></li>
                                            <li><a href="properties.html">Ann Arbor</a></li>
                                            <li><a href="properties.html">Aksaray</a></li>
                                            <li><a href="properties.html">Antakya</a></li>
                                            <li><a href="properties.html">Al Khalis</a></li>
                                            <li><a href="properties.html">Lahore</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>         

                             <div class="footer-column col-xl-6 col-lg-6 col-md-6 col-sm-12">
                                <!--Footer Column-->
                                <div class="footer-widget popular-posts">
                                    <h2 class="widget-title">Popular Posts</h2>
                                     <!--Footer Column-->
                                    <div class="widget-content">
                                        <div class="post">
                                            <div class="thumb"><a href="PropertyAll.aspx"><img src="images/resource/post-thumb-1.jpg" alt=""></a></div>
                                            <h4><a href="PropertyAll.aspx">Modern Design Building </a></h4>
                                            <span class="date">1 October, 2019</span>
                                        </div>

                                        <div class="post">
                                            <div class="thumb"><a href="PropertyAll.aspx"><img src="images/resource/post-thumb-2.jpg" alt=""></a></div>
                                            <h4><a href="PropertyAll.aspx">Real Eatate Expo 2019</a></h4>
                                            <span class="date">10 October, 2019</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!--Big Column-->
                    <div class="big-column col-xl-5 col-lg-12 col-md-12 col-sm-12">
                        <div class="row clearfix">


                            <!--Footer Column-->
                            <div class="footer-column col-xl-5 col-lg-6 col-md-6 col-sm-12">
                                <div class="footer-widget links-widget">
                                    <h2 class="widget-title">USEFUL LINKS</h2>
                                    <div class="widget-content">
                                        <ul class="list clearfix">
                                            <li><a href="PropertyAll.aspx">Rental Builidngs</a></li>
                                            <li><a href="PropertyAll.aspx">Browe all Categories</a></li>
                                            <%--<li><a href="PropertyAll.aspx">Mortagages Rates</a></li>
                                            <li><a href="PropertyAll.aspx">Terms of use</a></li>
                                            <li><a href="PropertyAll.aspx">Privacy Policy</a></li>--%>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                            <!--Footer Column-->
                            <div class="footer-column col-xl-7 col-lg-6 col-md-6 col-sm-12">
                                <div class="footer-widget contact-widget">
                                    <h2 class="widget-title">Get in Touch</h2>
                                    <div class="widget-content">
                                        <ul class="contact-list">
                                            <li><span class="la la-map-marker"></span> 124, agiyaree  <br>Steet, Adajan , surat</li>
                                            <li><span class="la la-phone"></span>9824194347 , 7016364888 </li>
                                            <li><span class="la la-envelope"></span><a href="#">universalb123@gmail.com</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--Footer Bottom-->
        <div class="footer-bottom">
            <div class="auto-container">
                <!--Scroll to top-->
                <div class="scroll-to-top scroll-to-target" data-target="html"><span class="la la-angle-double-up"></span></div>

                <div class="inner-container clearfix">
                    <div class="footer-nav">
                        <ul class="clearfix">
                           <li><a href="Index.aspx">Home</a></li> 
                           <li><a href="PropertyAll.aspx">Properties</a></li> 
                           <li><a href="PropertyAll.aspx">Builders</a></li> 
                           <li><a href="Agents.aspx">Agent</a></li> 
                           <%--<li><a href="blog.html">Blogs</a></li> --%>
                           <li><a href="ContactUs.aspx">Contact</a></li> 
                        </ul>
                    </div>
                                                                      
                    <div class="copyright-text">
                        <p>© Copyright 2019 All rights reserved – Design By <a href="Index.aspx"> UNIVERSAL BUILDERS</a></p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- End Main Footer -->
</div>
<!--End pagewrapper-->

<!-- Color Palate / Color Switcher -->
<div class="color-palate">
    <div class="color-trigger">
        <i class="la la-cog"></i>
    </div>
    <div class="color-palate-head">
        <h6>Choose Your Color</h6>
    </div>
    <div class="various-color clearfix">
        <div class="colors-list">
            <span class="palate default-color active" data-theme-file="css/color-themes/default-theme.css"></span>
            <span class="palate green-color" data-theme-file="css/color-themes/green-theme.css"></span>
            <span class="palate blue-color" data-theme-file="css/color-themes/blue-theme.css"></span>
            <span class="palate orange-color" data-theme-file="css/color-themes/orange-theme.css"></span>
            <span class="palate purple-color" data-theme-file="css/color-themes/purple-theme.css"></span>
            <span class="palate teal-color" data-theme-file="css/color-themes/teal-theme.css"></span>
            <span class="palate brown-color" data-theme-file="css/color-themes/brown-theme.css"></span>
            <span class="palate redd-color" data-theme-file="css/color-themes/redd-color.css"></span>
        </div>
    </div>
    <ul class="box-version option-box"> <li>Full width</li> <li class="box">Boxed</li> </ul>
    <ul class="rtl-version option-box"> <li>LTR Version</li> <li class="rtl">RTL Version</li> </ul>
    <div class="palate-foo">
      <%--  <span>You will find much more options for colors and styling in admin panel. This color picker is used only for demonstation purposes.</span>--%>
    </div>
    <%--<a href="#" class="purchase-btn">Purchase now $17</a>--%>
</div><!-- End Color Switcher -->

<script src="js/jquery.js"></script> 
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!--Revolution Slider-->
<script src="plugins/revolution/js/jquery.themepunch.revolution.min.js"></script>
<script src="plugins/revolution/js/jquery.themepunch.tools.min.js"></script>
<script src="plugins/revolution/js/extensions/revolution.extension.actions.min.js"></script>
<script src="plugins/revolution/js/extensions/revolution.extension.carousel.min.js"></script>
<script src="plugins/revolution/js/extensions/revolution.extension.kenburn.min.js"></script>
<script src="plugins/revolution/js/extensions/revolution.extension.layeranimation.min.js"></script>
<script src="plugins/revolution/js/extensions/revolution.extension.migration.min.js"></script>
<script src="plugins/revolution/js/extensions/revolution.extension.navigation.min.js"></script>
<script src="plugins/revolution/js/extensions/revolution.extension.parallax.min.js"></script>
<script src="plugins/revolution/js/extensions/revolution.extension.slideanims.min.js"></script>
<script src="plugins/revolution/js/extensions/revolution.extension.video.min.js"></script>
<script src="js/main-slider-script.js"></script>
<!--End Revolution Slider-->
<script src="js/jquery-ui.js"></script>
<script src="js/jquery.fancybox.js"></script>
<script src="js/owl.js"></script>
<script src="js/wow.js"></script>
<script src="js/isotope.js"></script>
<script src="js/appear.js"></script>
<script src="js/script.js"></script>
<!-- Color Setting -->
<script src="js/color-settings.js"></script>
     </form>
</body>
</html>
