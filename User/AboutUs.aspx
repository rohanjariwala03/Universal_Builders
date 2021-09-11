<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<%--<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from expert-themes.com/html/ourland/about.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 17 Jan 2019 05:25:42 GMT -->
<head>
<meta charset="utf-8">
<title>Ourland - Real Estate HTML Template | About Us</title>
<!-- Stylesheets -->
<link href="css/bootstrap.css" rel="stylesheet">
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

<body>--%>

<div class="page-wrapper">
    <!-- Preloader -->
    <div class="preloader"></div>
    
    <!-- Main Header-->
    <header class="main-header header-style-seven">
        <!--Header Top-->
        <div class="header-top">
            <div class="auto-container">
                <div class="inner-container clearfix">
                    <%--<div class="top-left">
                        <div class="text"><span>Welcome</span> to Universal Builders - Making Business Better</div>
                    </div>--%>
                    <div class="top-right clearfix">
                        <%--<ul class="clearfix">
                            <li><a href="#">Login</a></li>
                            <li><a href="#">Register</a></li>
                        </ul>--%>
                        <%--<div class="btn-box">
                            <a href="admin/submit-property.html" class="theme-btn btn-style-two">GET APPOINTMENT</a>
                        </div>--%>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Header Top -->

         <!-- Header Upper -->
        <%--<div class="header-upper">
            <div class="auto-container">
                <div class="clearfix">
                    
                    <div class="logo-outer">
                        <div class="logo"><a href="index-2.html"><img src="images/logo-3.png" alt="" title=""></a></div>
                    </div>
                    
                    <div class="upper-right clearfix">
                        
                        <!--Info Box-->
                        <div class="upper-column info-box">
                            <div class="icon-box"><span class="la la-envelope-o"></span></div>
                            <ul>
                                <li><span>Email:</span></li>
                                <li>support@willie.com</li>
                            </ul>

                        </div>

                        <!--Info Box-->
                        <div class="upper-column info-box">
                            <div class="icon-box"><span class="la la-phone"></span></div>
                            <ul>
                                <li><span>Phone:</span></li>
                                <li>(+82) 135 255 1535</li>
                            </ul>
                        </div>

                        <!--Info Box-->
                        <div class="upper-column info-box">
                            <div class="icon-box"><span class="la la-home"></span></div>
                            <ul>
                                <li><span>Address:</span></li>
                                <li>Morar Gelid Street, New York</li>
                            </ul>

                        </div>
                    </div>
                </div>
            </div>
        </div>--%>
        <!-- Header Upper -->


        <!-- Header Lower -->
       <%-- <div class="header-lower">
            <div class="auto-container">
                <div class="main-box clearfix">
                    <div class="nav-outer clearfix">
                        <!-- Main Menu -->
                        <nav class="main-menu navbar-expand-md navbar-dark">
                            <div class="navbar-header">
                                <!-- Toggle Button -->      
                                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                    <span class="icon flaticon-menu"></span>
                                </button>
                            </div>
                            
                            <div class="collapse navbar-collapse clearfix" id="navbarSupportedContent">
                                <ul class="navigation clearfix">
                                    <li class="dropdown"><a href="#">Home</a>
                                        <ul>
                                            <li class="dropdown"><a href="#">Header Styles</a>
                                                <ul>
                                                    <li><a href="index-2.html">Header Style One</a></li>
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
                                    </li>
                                    <li class="current dropdown"><a href="#">About</a>
                                        <ul>
                                            <li><a href="about.html">About Us</a></li>
                                            <li><a href="faq.html">FAQ's</a></li>
                                            <li><a href="testimonial.html">Testimonials</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown"><a href="#">Agents</a>
                                        <ul>
                                            <li><a href="agents.html">Agents</a></li>
                                            <li><a href="agent-detail.html">Agent Detail</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown"><a href="#">Properties</a>
                                        <ul>
                                            <li><a href="properties.html">Properties</a></li>
                                            <li><a href="property-list-view.html">Property List View</a></li>
                                            <li><a href="property-grid-view.html">Property Grid View</a></li>
                                            <li><a href="property-modern-view.html">Property Modern View</a></li>
                                            <li><a href="property-detail.html">Property Detail</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown"><a href="#">Blog</a>
                                        <ul>
                                            <li><a href="blog.html">Blog Default</a></li>
                                            <li><a href="blog-list.html">Blog List View</a></li>
                                            <li><a href="blog-grid.html">Blog Grid View</a></li>
                                            <li><a href="blog-detail.html">Blog Detail</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="contact.html">Contact</a></li>
                                    <li class="dropdown has-mega-menu"><a href="#">Pages</a>
                                        <div class="mega-menu">
                                            <div class="mega-menu-bar row clearfix">
                                                <div class="column col-lg-3 col-md-3 col-sm-12">
                                                    <h3>About Us</h3>
                                                    <ul>
                                                        <li><a href="about.html">About Us</a></li>
                                                        <li><a href="agents.html">Agents</a></li>
                                                        <li><a href="agent-detail.html">Agent Detail</a></li>
                                                        <li><a href="faq.html">FAQ's</a></li>
                                                        <li><a href="testimonial.html">Testimonials</a></li>
                                                    </ul>
                                                </div>
                                                <div class="column col-lg-3 col-md-3 col-sm-12">
                                                    <h3>Properties</h3>
                                                    <ul>
                                                        <li><a href="properties.html">Properties</a></li>
                                                        <li><a href="property-list-view.html">Property List View</a></li>
                                                        <li><a href="property-grid-view.html">Property Grid View</a></li>
                                                        <li><a href="property-modern-view.html">Property Modern View</a></li>
                                                        <li><a href="property-detail.html">Property Detail</a></li>
                                                    </ul>
                                                </div>
                                                <div class="column col-lg-3 col-md-3 col-sm-12">
                                                    <h3>Blog</h3>
                                                    <ul>
                                                        <li><a href="blog.html">Blog Default</a></li>
                                                        <li><a href="blog-list.html">Blog List View</a></li>
                                                        <li><a href="blog-grid.html">Blog Grid View</a></li>
                                                        <li><a href="blog-detail.html">Blog Detail</a></li>
                                                        <li><a href="error-page.html">404 Error Page</a></li>
                                                    </ul>
                                                </div>
                                                <div class="column col-lg-3 col-md-3 col-sm-12">
                                                    <h3>Pages</h3>
                                                    <ul>
                                                        <li><a href="admin/submit-property.html">Submit Property</a></li>
                                                        <li><a href="admin/dashboard.html">Dashboard</a></li>
                                                        <li><a href="coming-soon.html">Coming Soon</a></li>
                                                        <li><a href="login.html">Login</a></li>
                                                        <li><a href="contact.html">Contact Us</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>              
                            </div>
                        </nav><!-- Main Menu End-->
                            
                        <!-- Main Menu End-->
                        <div class="outer-box">
                           <div class="btn-box">
                               <a href="content.html" class="theme-btn btn-style-one">Get Appointment</a>
                           </div>--%>

                            <!--Search Box-->
                        <%--    <div class="search-box-outer">
                                <div class="dropdown">
                                    <button class="search-box-btn dropdown-toggle" type="button" id="dropdownMenu3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="la la-search"></span></button>
                                    <ul class="dropdown-menu pull-right search-panel" aria-labelledby="dropdownMenu3">
                                        <li class="panel-outer">
                                            <div class="form-container">
                                                <form method="post" action="https://expert-themes.com/html/ourland/blog.html">
                                                    <div class="form-group">
                                                        <input type="search" name="field-name" value="" placeholder="Search Here" required>
                                                        <button type="submit" class="search-btn"><span class="la la-search"></span></button>
                                                    </div>
                                                </form>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>--%>
        <!--End Header Lower-->

        <!-- Sticky Header  -->
        <%--<div class="sticky-header">
            <div class="auto-container clearfix">
                <!--Logo-->
                <div class="logo pull-left">
                    <a href="index-2.html" title=""><img src="images/logo-small.png" alt="" title=""></a>
                </div>
                <!--Right Col-->
                <div class="pull-right">
                    <!-- Main Menu -->
                    <nav class="main-menu">
                        <div class="navbar-collapse show collapse clearfix">
                            <ul class="navigation clearfix">
                                <li class="dropdown"><a href="#">Home</a>
                                    <ul>
                                        <li class="dropdown"><a href="#">Header Styles</a>
                                            <ul>
                                                <li><a href="index-2.html">Header Style One</a></li>
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
                                </li>
                                <li class="current dropdown"><a href="#">About</a>
                                    <ul>
                                        <li><a href="about.html">About Us</a></li>
                                        <li><a href="faq.html">FAQ's</a></li>
                                        <li><a href="testimonial.html">Testimonials</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown"><a href="#">Agents</a>
                                    <ul>
                                        <li><a href="agents.html">Agents</a></li>
                                        <li><a href="agent-detail.html">Agent Detail</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown"><a href="#">Properties</a>
                                    <ul>
                                        <li><a href="properties.html">Properties</a></li>
                                        <li><a href="property-list-view.html">Property List View</a></li>
                                        <li><a href="property-grid-view.html">Property Grid View</a></li>
                                        <li><a href="property-modern-view.html">Property Modern View</a></li>
                                        <li><a href="property-detail.html">Property Detail</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown"><a href="#">Blog</a>
                                    <ul>
                                        <li><a href="blog.html">Blog Default</a></li>
                                        <li><a href="blog-list.html">Blog List View</a></li>
                                        <li><a href="blog-grid.html">Blog Grid View</a></li>
                                        <li><a href="blog-detail.html">Blog Detail</a></li>
                                    </ul>
                                </li>
                                <li><a href="contact.html">Contact</a></li>
                                <li class="dropdown has-mega-menu"><a href="#">Pages</a>
                                    <div class="mega-menu">
                                        <div class="mega-menu-bar row clearfix">
                                            <div class="column col-lg-3 col-md-3 col-sm-12">
                                                <h3>About Us</h3>
                                                <ul>
                                                    <li><a href="about.html">About Us</a></li>
                                                    <li><a href="agents.html">Agents</a></li>
                                                    <li><a href="agent-detail.html">Agent Detail</a></li>
                                                    <li><a href="faq.html">FAQ's</a></li>
                                                    <li><a href="testimonial.html">Testimonials</a></li>
                                                </ul>
                                            </div>
                                            <div class="column col-lg-3 col-md-3 col-sm-12">
                                                <h3>Properties</h3>
                                                <ul>
                                                    <li><a href="properties.html">Properties</a></li>
                                                    <li><a href="property-list-view.html">Property List View</a></li>
                                                    <li><a href="property-grid-view.html">Property Grid View</a></li>
                                                    <li><a href="property-modern-view.html">Property Modern View</a></li>
                                                    <li><a href="property-detail.html">Property Detail</a></li>
                                                </ul>
                                            </div>
                                            <div class="column col-lg-3 col-md-3 col-sm-12">
                                                <h3>Blog</h3>
                                                <ul>
                                                    <li><a href="blog.html">Blog Default</a></li>
                                                    <li><a href="blog-list.html">Blog List View</a></li>
                                                    <li><a href="blog-grid.html">Blog Grid View</a></li>
                                                    <li><a href="blog-detail.html">Blog Detail</a></li>
                                                    <li><a href="error-page.html">404 Error Page</a></li>
                                                </ul>
                                            </div>
                                            <div class="column col-lg-3 col-md-3 col-sm-12">
                                                <h3>Pages</h3>
                                                <ul>
                                                    <li><a href="admin/submit-property.html">Submit Property</a></li>
                                                    <li><a href="admin/dashboard.html">Dashboard</a></li>
                                                    <li><a href="coming-soon.html">Coming Soon</a></li>
                                                    <li><a href="login.html">Login</a></li>
                                                    <li><a href="contact.html">Contact Us</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul> 
                        </div>--%>
             <%--       </nav><!-- Main Menu End-->
                </div>
            </div>
        </div><!-- End Sticky Menu -->
    </header>--%>
    <!--End Main Header -->

    <!--Page Title-->
    <section class="page-title" style="background-image:url(images/background/16.jpg);">
        <div class="auto-container">
            <div class="inner-container clearfix">
                <h1>About Us</h1>
                <ul class="bread-crumb clearfix">
                    <li><a href="Index.aspx">Home</a></li>
                    <li>About Us</li>
                </ul>
            </div>
        </div>
    </section>
    <!--End Page Title-->

    <!-- About Us -->
    <section class="about-us style-two">
        <div class="auto-container">
            <div class="row">
                <!-- Info Column -->
                <div class="info-column col-xl-6 col-lg-12 col-md-12 col-sm-12">
                    <div class="inner-column">
                        <div class="sec-title">
                            <span class="title">THE BEST PLACE TO FIND THE HOUSE YOU WANT</span>
                            <h2>WELL TO UNIVERSAL BUILDERS</h2>
                        </div>

                        <div class="text"><strong>UNIVERSAL BUILDERS</strong> is the best place for elit, sed do eiusmod tempor dolor sit amet, conse ctetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et lorna aliquatd minimam, quis nostrud exercitation oris nisi ut aliquip ex ea. </div>

                        <div class="row features">
                            <!-- Feature Block -->
                            <div class="feature-block col-lg-6 col-md-6 col-sm-12">
                                <div class="inner-box">
                                    <span class="icon flaticon-house-1"></span>
                                    <h4><a href="PropertyAll.aspx">Buy Property</a></h4>
                                    <div class="text">We have the best properties Sale, Buy, and Rent Dealers.</div>
                                </div>
                            </div>

                            <!-- Feature Block -->
                            <div class="feature-block col-lg-6 col-md-6 col-sm-12">
                                <div class="inner-box">
                                    <span class="icon flaticon-rent"></span>
                                    <h4><a href="PropertyAll.aspx">Rent Property</a></h4>
                                    <div class="text">We have the best properties Sale, Buy, and Rent Dealers.</div>
                                </div>
                            </div>

                            <!-- Feature Block -->
                            <div class="feature-block col-lg-6 col-md-6 col-sm-12">
                                <div class="inner-box">
                                    <span class="icon flaticon-house-5"></span>
                                    <h4><a href="PropertyAll.aspx">Real Estate Kit</a></h4>
                                    <div class="text">We have the best properties Sale, Buy, and Rent Dealers.</div>
                                </div>
                            </div>

                            <!-- Feature Block -->
                            <div class="feature-block col-lg-6 col-md-6 col-sm-12">
                                <div class="inner-box">
                                    <span class="icon flaticon-apartment"></span>
                                    <h4><a href="PropertyAll.aspx">Sale Property</a></h4>
                                    <div class="text">We have the best properties Sale, Buy, and Rent Dealers.</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Video Column -->
                <div class="video-column col-xl-6 col-lg-8 col-md-12 col-sm-12">
                    <div class="inner-column">
                        <div class="video-box">
                            <figure class="image"><img src="images/resource/image-2.jpg" alt=""></figure>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- About Us -->

    <!-- Fun Fact -->
    <section class="fun-facts-section" style="background-image:url(images/background/6.jpg);">
        <div class="auto-container">
            <div class="row">
                <div class="video-column col-lg-8 col-sm-12 col-xs-12">
                    <div class="video-box">
                         <figure class="image"><img src="images/resource/image-5.jpg" alt="">
                            <a href="https://www.youtube.com/watch?v=Fvae8nxzVz4" class="link" data-fancybox="gallery" data-caption=""><span class="icon flaticon-play-button-3"></span></a>
                        </figure>
                    </div>
                </div>
                <div class="counter-column col-lg-4 col-md-12 col-sm-12">
                    <div class="inner-column">
                        <!--Column-->
                        <div class="column count-box">
                            <div class="content">
                                <div class="icon-box"><span class="la la-home"></span></div>
                                <div class="count-outer count-box">
                                    <span class="count-text" data-speed="3000" data-stop="300">0 </span>
                                </div>
                                <div class="counter-title">Sold Houses</div>
                            </div>
                        </div>
                        

                        <!--Column-->
                        <div class="column count-box">
                            <div class="content">
                                <div class="icon-box"><span class="la la-th-list"></span></div>
                                <div class="count-outer count-box">
                                    <span class="count-text" data-speed="2000" data-stop='<%=Session["totProp"]%>'><asp:Label ID="lblprop" runat="server" Text=""></asp:Label> </span>
                                </div>
                                <div class="counter-title">Total Property Listing</div>
                            </div>
                        </div>
                        

                        <!--Column-->
                        <div class="column count-box">
                            <div class="content">
                                <div class="icon-box"><span class="la la-user-secret"></span></div>
                                <div class="count-outer count-box">
                                    <span class="count-text" data-speed="2000" data-stop='<%=Session["totdeal"]%>' ><asp:Label ID="lblagent" runat="server" Text=""></asp:Label> </span>
                                </div>
                                <div class="counter-title">Expert Agents</div>
                            </div>
                        </div>
                        
                        <!--Column-->
                        <div class="column count-box">
                            <div class="content">
                                <div class="icon-box"><span class="la la-trophy"></span></div>
                                <div class="count-outer count-box">
                                    <span class="count-text" data-speed="3000" data-stop="100">0 </span>
                                </div>
                                <div class="counter-title">Won Awards</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Fun Fact -->

    <!-- Services Section -->
    <section class="services-section">
        <div class="auto-container">
            <div class="sec-title">
                <span class="title">we offer the best real estate</span>
                <h2>Property Services</h2>
            </div>

            <div class="row">
                <!-- Service Block -->
                <div class="service-block col-lg-4 col-md-6 col-sm-12">
                    <div class="inner-box">
                        <div class="icon-box"><span class="icon flaticon-buildings"></span></div>
                        <h4><a href="PropDetails.aspx">Houses</a></h4>
                        <div class="text">A house is a building that functions as a home. They can range from simple dwellings such as rudimentary huts of  tribes and the improvised shacks in shantytowns to complex, structures of wood, brick, concrete or other materials.</div>
                        <div class="link-box"><a href="PropDetails.aspx">Read More</a></div>
                    </div>
                </div>

                <!-- Service Block -->
                <div class="service-block col-lg-4 col-md-6 col-sm-12">
                    <div class="inner-box">
                        <div class="icon-box"><span class="icon flaticon-apartment-1"></span></div>
                        <h4><a href="PropDetails.aspx">apartments</a></h4>
                        <div class="text">An apartment (American English), flat (British English) or unit (Australian English) is a self-contained housing unit (a type of residential real estate) that occupies only part of a building, generally on a single storey.</div>
                        <div class="link-box"><a href="PropDetails.aspx">Read More</a></div>
                    </div>
                </div>

                <!-- Service Block -->
                <div class="service-block col-lg-4 col-md-6 col-sm-12">
                    <div class="inner-box">
                        <div class="icon-box"><span class="icon flaticon-urban"></span></div>
                        <h4><a href="PropDetails.aspx">Commercial</a></h4>
                        <div class="text">The term commercial property (also called commercial real estate, investment or income property) refers to buildings or land intended to generate a profit, either from capital gain or rental income.</div>
                        <div class="link-box"><a href="PropDetails.aspx">Read More</a></div>
                    </div>
                </div>

                <!-- Service Block -->
                <div class="service-block col-lg-4 col-md-6 col-sm-12">
                    <div class="inner-box">
                        <div class="icon-box"><span class="icon flaticon-house-1"></span></div>
                        <h4><a href="PropDetails.aspx">Renting & Selling</a></h4>
                        <div class="text">Residences can be classified by and how they are connected to neighbouring residences and land. Different types of housing tenure can be used for the same physical type.</div>
                        <div class="link-box"><a href="PropDetails.aspx">Read More</a></div>
                    </div>
                </div>

                <!-- Service Block -->
                <div class="service-block col-lg-4 col-md-6 col-sm-12">
                    <div class="inner-box">
                        <div class="icon-box"><span class="icon flaticon-settings-2"></span></div>
                        <h4><a href="PropDetails.aspx">Management</a></h4>
                        <div class="text">Management (or managing) is the administration of an organization, whether it is a business, a not-for-profit organization, or government body. </div>
                        <div class="link-box"><a href="PropDetails.aspx">Read More</a></div>
                    </div>
                </div>

                <!-- Service Block -->
                <div class="service-block col-lg-4 col-md-6 col-sm-12">
                    <div class="inner-box">
                        <div class="icon-box"><span class="icon flaticon-file-1"></span></div>
                        <h4><a href="PropDetails.aspx">Property Listing</a></h4>
                        <div class="text">services that real estate brokers use to establish contractual offers of compensation (among brokers) and accumulate and disseminate information to enable appraisals.</div>
                        <div class="link-box"><a href="PropDetails.aspx">Read More</a></div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--End Services Section -->

     <!-- Process Section -->
    <section class="process-section" style="background-image: url(images/background/9.jpg);">
        <div class="auto-container">
            <div class="sec-title light">
                <span class="title">FIND YOUR HOUSE IN YOUR CITY</span>
                <h2>WORK PROCESS</h2>
            </div>

            <div class="row">
                <!-- Process Block -->
                <div class="process-block col-lg-3 col-md-6 col-sm-12">
                    <div class="inner-box">
                        <div class="icon-box"><span class="la la-user-secret"></span></div>
                        <h4><a href="Agent.aspx">Meet Our Agent</a></h4>
                        <div class="text">You Meet our agent and decuse your property Demand</div>
                    </div>
                </div>

                <!-- Process Block -->
                <div class="process-block col-lg-3 col-md-6 col-sm-12">
                    <div class="inner-box">
                        <div class="icon-box"><span class="la la-building-o"></span></div>
                        <h4><a href="PropDetails.aspx">Choose Location</a></h4>
                        <div class="text">You Meet our agent and decuse your property Demand</div>
                    </div>
                </div>

                <!-- Process Block -->
                <div class="process-block col-lg-3 col-md-6 col-sm-12">
                    <div class="inner-box">
                        <div class="icon-box"><span class="la la-map-marker"></span></div>
                        <h4><a href="PropertAll.aspx">Select Your Property</a></h4>
                        <div class="text">You Meet our agent and decuse your property Demand</div>
                    </div>
                </div>

                <!-- Process Block -->
                <div class="process-block col-lg-3 col-md-6 col-sm-12">
                    <div class="inner-box">
                        <div class="icon-box"><span class="la la-file-text"></span></div>
                        <h4><a href="Agent.aspx">Confirmation</a></h4>
                        <div class="text">You Meet our agent and decuse your property Demand</div>
                    </div>
                </div>
            </div>
        </div>
    </section>    
    <!--End Process Section -->

    <!-- Why Choose Us -->
    <section class="why-choose-us">
        <div class="auto-container">
            <div class="sec-title">
                <span class="title">FIND YOUR HOUSE IN YOUR CITY</span>
                <h2>WHY CHOOSE US</h2>
            </div>

            <div class="row">
                <!-- Features BLock -->
                <div class="feature-block-two col-lg-4 col-md-6 col-sm-12">
                    <div class="inner-box">
                        <div class="icon-box"><span class="icon flaticon-sketching"></span></div>
                        <h4><a href="AboutUs.aspx">Architecture Experience</a></h4>
                        <div class="text">Experience architecture (XA) is the art of articulating a clear user story/journey through an information architecture, interaction design and experience design that an end user navigates across products and services offered by the client or as intended by the designer.</div>
                    </div>
                </div>

                <!-- Features BLock -->
                <div class="feature-block-two col-lg-4 col-md-6 col-sm-12">
                    <div class="inner-box">
                        <div class="icon-box"><span class="icon flaticon-worker"></span></div>
                        <h4><a href="AboutUs.aspx">Refinance Calculator</a></h4>
                        <div class="text">Refinance calculator is pretty useful tool to calculate your refinancing loan amount as well as other financial details pertaining to the refinance. This is an automated tool where users provide information on their existing loans as inputs and get information on the refinance amount and others.</div>
                    </div>
                </div>

                <!-- Features BLock -->
                <div class="feature-block-two col-lg-4 col-md-6 col-sm-12">
                    <div class="inner-box">
                        <div class="icon-box"><span class="icon flaticon-mixer-with-wheels"></span></div>
                        <h4><a href="AboutUs.aspx">House / Condo Contruction</a></h4>
                        <div class="text">A house is a building that functions as a home. They can range from simple dwellings such as rudimentary huts of nomadic tribes and the improvised shacks in shantytowns to complex, fixed structures of wood, brick, concrete or other materials containing plumbing, ventilation, and electrical systems.</div>
                    </div>
                </div>

                <!-- Features BLock -->
                <div class="feature-block-two col-lg-4 col-md-6 col-sm-12">
                    <div class="inner-box">
                        <div class="icon-box"><span class="icon flaticon-award"></span></div>
                        <h4><a href="AboutUs.aspx">Fince Winner</a></h4>
                        <div class="text">Prizes are also given to publicize noteworthy or exemplary behaviour, and to provide incentives for improved outcomes and competitive efforts. In general, prizes are regarded in a positive light,and their winners are admired. However, many prizes, especially the more famous ones, have often caused controversy and jealousy.</div>
                    </div>
                </div>

                <!-- Features BLock -->
                <div class="feature-block-two col-lg-4 col-md-6 col-sm-12">
                    <div class="inner-box">
                        <div class="icon-box"><span class="icon flaticon-trophy"></span></div>
                        <h4><a href="AboutUs.aspx">Best House Saller Winner</a></h4>
                        <div class="text">A bestseller is, usually, a book that is included on a list of top-selling or frequently-borrowed titles, normally based on publishing industry and book trade figures and library circulation statistics; such lists may be published by newspapers, magazines, or book store chains.</div>
                    </div>
                </div>

                <!-- Features BLock -->
                <div class="feature-block-two col-lg-4 col-md-6 col-sm-12">
                    <div class="inner-box">
                        <div class="icon-box"><span class="icon flaticon-medal"></span></div>
                        <h4><a href="AboutUs.aspx">Best Support Winner</a></h4>
                        <div class="text">Customer support is a range of customer services to assist customers in making cost effective and correct use of a product. It includes assistance in planning, installation, training, troubleshooting, maintenance, upgrading, and disposal of a product.</div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Why Choose Us -->

    <!-- App Section -->
    <%--<section class="app-section" style="background-image: url(images/background/17.jpg);">
        <div class="auto-container">
            <div class="row">
                <!-- Image Box -->
                <div class="image-column order-last col-lg-5 col-md-12 col-sm-12">
                    <div class="inner-column">
                        <div class="image-box">
                            <figure class="image"><img src="images/resource/image-6.png" alt=""></figure>
                        </div>
                    </div>
                </div>

                <!-- Content Box -->
                <div class="content-column col-lg-7 col-md-12 col-sm-12">
                    <div class="inner-column">
                        <h2>Property Find On Your <br>Finger Tip</h2>
                        <div class="text">consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </div>
                        <div class="link-box">
                            <a href="#"><img src="images/resource/app-store.png" alt=""></a>
                            <a href="#"><img src="images/resource/google-play.png" alt=""></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    --%><!--End App Section -->

    <!--Clients Section-->
   <%-- <section class="clients-section style-two alternate">
        <div class="auto-container">
            <div class="sponsors-outer">
                <!--Sponsors Carousel-->
                <ul class="sponsors-carousel owl-carousel owl-theme">
                    <li class="slide-item"><figure class="image-box"><a href="#"><img src="images/clients/1.png" alt=""></a></figure></li>
                    <li class="slide-item"><figure class="image-box"><a href="#"><img src="images/clients/2.png" alt=""></a></figure></li>
                    <li class="slide-item"><figure class="image-box"><a href="#"><img src="images/clients/3.png" alt=""></a></figure></li>
                    <li class="slide-item"><figure class="image-box"><a href="#"><img src="images/clients/4.png" alt=""></a></figure></li>
                    <li class="slide-item"><figure class="image-box"><a href="#"><img src="images/clients/1.png" alt=""></a></figure></li>
                    <li class="slide-item"><figure class="image-box"><a href="#"><img src="images/clients/2.png" alt=""></a></figure></li>
                    <li class="slide-item"><figure class="image-box"><a href="#"><img src="images/clients/3.png" alt=""></a></figure></li>
                    <li class="slide-item"><figure class="image-box"><a href="#"><img src="images/clients/4.png" alt=""></a></figure></li>
                </ul>
            </div>
        </div>
    </section>
   --%> <!--End Clients Section-->  

    <!-- Main Footer -->
    <%--<footer class="main-footer style-three">
        <div class="auto-container">
            <div class="upper-box">
                <div class="row">
                    <!-- Upper column -->
                    <div class="upper-column col-lg-3 col-md-12 col-sm-12">
                        <div class="footer-logo">
                            <figure class="image"><a href="index-2.html"><img src="images/footer-logo.png" alt=""></a></figure>
                        </div>
                    </div>

                    <!-- Upper column -->
                    <div class="upper-column col-lg-6 col-md-12 col-sm-12">
                        <div class="subscribe-form">
                            <form method="post" action="https://expert-themes.com/html/ourland/blog.html">
                                <div class="form-group">
                                    <input type="email" name="email" value="" placeholder="Enter Your Email" required="">
                                    <button type="submit" class="theme-btn btn-style-four"><i class="icon la la-paper-plane"></i></button>
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
            </div>

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
                                            <div class="thumb"><a href="blog-detail.html"><img src="images/resource/post-thumb-1.jpg" alt=""></a></div>
                                            <h4><a href="blog-detail.html">Modern Design Building </a></h4>
                                            <span class="date">1 October, 2018</span>
                                        </div>

                                        <div class="post">
                                            <div class="thumb"><a href="blog-detail.html"><img src="images/resource/post-thumb-2.jpg" alt=""></a></div>
                                            <h4><a href="blog-detail.html">Real Eatate Expo 2019</a></h4>
                                            <span class="date">10 October, 2018</span>
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
                                            <li><a href="properties.html">Rental Builidngs</a></li>
                                            <li><a href="properties.html">Browe all Categories</a></li>
                                            <li><a href="properties.html">Mortagages Rates</a></li>
                                            <li><a href="properties.html">Terms of use</a></li>
                                            <li><a href="properties.html">Privacy Policy</a></li>
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
                                            <li><span class="la la-map-marker"></span> 203, Envato Labs, Behind Alis <br>Steet, Melbourne, Australia.</li>
                                            <li><span class="la la-phone"></span>0321-3607589, 092-7586492</li>
                                            <li><span class="la la-envelope"></span><a href="#">info@ourland.com</a></li>
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
                    <div class="copyright-text">
                        <p>© Copyright 2019 All rights reserved – Design By <a href="index-2.html">expert-themes</a></p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- End Main Footer -->--%>

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
        <span>You will find much more options for colors and styling in admin panel. This color picker is used only for demonstation purposes.</span>
    </div>
    <a href="#" class="purchase-btn">Purchase now $17</a>
</div><!-- End Color Switcher -->

<script src="js/jquery.js"></script> 
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-ui.js"></script>
<script src="js/jquery.fancybox.js"></script>
<script src="js/owl.js"></script>
<script src="js/wow.js"></script>
<script src="js/isotope.js"></script>
<script src="js/mixitup.js"></script>
<script src="js/appear.js"></script>
<script src="js/script.js"></script>
<!-- Color Setting -->
<script src="js/color-settings.js"></script>
<%--</body>--%>

<!-- Mirrored from expert-themes.com/html/ourland/about.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 17 Jan 2019 05:25:49 GMT -->
<%--</html>--%>
</asp:Content>

