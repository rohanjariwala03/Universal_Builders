﻿<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.master" AutoEventWireup="true" CodeFile="PropertyAll.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   <%-- <form id="Form1" runat="server">--%>
    <div class="page-wrapper">
    <!-- Preloader -->
    <div class="preloader"></div>
    <asp:Label ID="lb" runat="server" Text="0" Visible="false" ></asp:Label>
        <!-- Main Header-->
 <%--   <header class="main-header header-style-seven">
        <!--Header Top-->
        <div class="header-top">
            <div class="auto-container">
                <div class="inner-container clearfix">
                    <div class="top-left">
                        <div class="text"><span>Welcome</span> to Ourland Real Estate - Making Business Better</div>
                    </div>
                    <div class="top-right clearfix">
                        <ul class="clearfix">
                            <li><a href="#">Login</a></li>
                            <li><a href="#">Register</a></li>
                        </ul>
                        <div class="btn-box">
                            <a href="admin/submit-property.html" class="theme-btn btn-style-two">Add Property</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Header Top -->

         <!-- Header Upper -->
        <div class="header-upper">
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
        </div>
        <!-- Header Upper -->


        <!-- Header Lower -->
        <div class="header-lower">
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
                                    <li class="dropdown"><a href="#">About</a>
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
                                    <li class="current dropdown"><a href="#">Properties</a>
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
                           </div>

                            <!--Search Box-->
                            <div class="search-box-outer">
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
        </div>
  --%>      <!--End Header Lower-->

        <!-- Sticky Header  -->
      <%--  <div class="sticky-header">
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
                                <li class="dropdown"><a href="#">About</a>
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
                                <li class="current dropdown"><a href="#">Properties</a>
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
                </div>
            </div>
        </div><!-- End Sticky Menu -->
    </header>--%>
    <!--End Main Header -->

    <!--Page Title-->
    <section class="page-title" style="background-image:url(images/background/16.jpg);">
        <div class="auto-container">
            <div class="inner-container clearfix">
                <h1>Properties</h1>
                <ul class="bread-crumb clearfix">
                    <li><a href="Index.aspx">Home</a></li>
                    <li>Properties</li>
                </ul>
            </div>
        </div>
    </section>
    <!--End Page Title-->

    <!-- Property Filter Section -->
    <section class="property-filter-section">
        <div class="auto-container">
            <!--MixitUp Galery-->
            <div class="mixitup-gallery">
                <div class="upper-box clearfix">
                   
                     <div class="sec-title">
                        <span class="title">FIND YOUR HOUSE IN YOUR CITY</span>
                        <h2>PROPERTY TYPES</h2>
                    </div>
                      

                    <!--Filter-->
                    <div class="filters">
                        <ul class="filter-tabs filter-btns clearfix">
                            <li class="active filter" data-role="button" data-filter="all">All</li>
                            <li class="filter" data-role="button" data-filter=".apprtment">Appartment</li>
                            <li class="filter" data-role="button" data-filter=".house">Bunglow</li>
                            <li class="filter" data-role="button" data-filter=".villa">Row House</li>
                            <%--<li class="filter" data-role="button" data-filter=".form">Form</li>
                            <li class="filter" data-role="button" data-filter=".restaurent">Restaurent</li>--%>
                        </ul>                                    
                    </div>
                </div>

               <%-- <div class="filter-list row">--%>


                    <asp:Repeater ID="Rep1" runat="server" DataSourceID="SqlDataSource1">

                    <HeaderTemplate>
                <div class="filter-list row">
                    </HeaderTemplate>

                    <ItemTemplate>
                    <!-- Property Block -->
                    <div class="property-block all mix house villa col-xl-4 col-lg-6 col-md-6 col-sm-12">
                        <div class="inner-box">
                            <div class="image-box">
                                <figure class="image"><img src='../Admin/img/<%# Eval("pimg") %>' alt=""></figure>
                                <span class="for"><%#Eval("PCat") %></span>
                                <span class="featured">FEATURED</span>
                                <ul class="option-box">
                                    <li><a href="images/resource/property-1.jpg" class="lightbox-image" data-fancybox="property"><i class="la la-camera"></i></a></li>
                                    <li><a href='Favo.aspx?prid=<%#Eval("pid") %>&usrid=2'><i class="la la-heart"></i></a></li>
                                    <%--<li><a href="#"><i class="la la-retweet"></i></a></li>--%>
                                </ul>
                                <ul class="info clearfix">
                                    <li><a href="properties.html"><i class="la la-calendar-minus-o"></i>2 Years Ago</a></li>
                                </ul>
                            </div>
                            <div class="lower-content">
<%--                                <ul class="tags">
                                    <li><a href="property-detail.html">Apartment</a>,</li>
                                    <li><a href="property-detail.html">Bar</a>,</li>
                                    <li><a href="property-detail.html">House</a>,</li>
                                </ul>--%>
                                <%--<div class="thumb"><img src="images/resource/thumb-5.jpg" alt=""></div>--%>
                                <h3><a href="PropDetails.aspx?proid=<%#Eval("Pid") %>"><%#Eval("pname") %></a></h3>
                                <div class="lucation"><i class="la la-map-marker"></i> <%#Eval("Paddress") %></div>
                                <ul class="property-info clearfix">
                                    <li><i class="flaticon-dimension"></i> <%#Eval("totalsquarefeet") %> Square Feet</li>
                                    <li><i class="flaticon-bed"></i><%#Eval("bedroom") %></li>
                                    <li><i class="flaticon-car"></i><%#Eval("Kitchen") %></li>
                                    <li><i class="flaticon-bathtub"></i> <%#Eval("bathroom") %></li>
                                </ul>
                                <div class="property-price clearfix">
                                    <div class="read-more"><a href="PropDetails.aspx?proid=<%#Eval("Pid") %>" class="theme-btn">More Detail</a></div>
                                    <div class="price"><%#Eval("TotalPrice") %></div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Property Block -->
                    <%--<div class="property-block all mix restaurent apprtment form col-xl-4 col-lg-6 col-md-6 col-sm-12">
                        <div class="inner-box">
                            <div class="image-box">
                                <figure class="image"><img src="images/resource/property-2.jpg" alt=""></figure>
                                <span class="for">FOR SALE</span>
                                <span class="featured">FEATURED</span>
                                <ul class="option-box">
                                    <li><a href="images/resource/property-2.jpg" class="lightbox-image" data-fancybox="property"><i class="la la-camera"></i></a></li>
                                    <li><a href="#"><i class="la la-heart"></i></a></li>
                                    <li><a href="#"><i class="la la-retweet"></i></a></li>
                                </ul>
                                <ul class="info clearfix">
                                    <li><a href="properties.html"><i class="la la-calendar-minus-o"></i>2 Years Ago</a></li>
                                </ul>
                            </div>
                            <div class="lower-content">
                                <ul class="tags">
                                    <li><a href="property-detail.html">Apartment</a>,</li>
                                    <li><a href="property-detail.html">Bar</a>,</li>
                                    <li><a href="property-detail.html">House</a>,</li>
                                </ul>
                                <div class="thumb"><img src="images/resource/thumb-6.jpg" alt=""></div>
                                <h3><a href="property-detail.html">Apartment Morden 1243, W No...</a></h3>
                                <div class="lucation"><i class="la la-map-marker"></i> Orland Park, IL 35785, Chicago, United State</div>
                                <ul class="property-info clearfix">
                                    <li><i class="flaticon-dimension"></i> 356 Sq-Ft</li>
                                    <li><i class="flaticon-bed"></i> 4 Bedrooms</li>
                                    <li><i class="flaticon-car"></i> 2 Garage</li>
                                    <li><i class="flaticon-bathtub"></i> 3 Bathroom</li>
                                </ul>
                                <div class="property-price clearfix">
                                    <div class="read-more"><a href="property-detail.html" class="theme-btn">More Detail</a></div>
                                    <div class="price">$ 13,65,000</div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Property Block -->
                    <div class="property-block all mix house restaurent villa col-xl-4 col-lg-6 col-md-6 col-sm-12">
                        <div class="inner-box">
                            <div class="image-box">
                                <figure class="image"><img src="images/resource/property-3.jpg" alt=""></figure>
                                <span class="for">FOR SALE</span>
                                <span class="featured">FEATURED</span>
                                <ul class="option-box">
                                    <li><a href="images/resource/property-3.jpg" class="lightbox-image" data-fancybox="property"><i class="la la-camera"></i></a></li>
                                    <li><a href="#"><i class="la la-heart"></i></a></li>
                                    <li><a href="#"><i class="la la-retweet"></i></a></li>
                                </ul>
                                <ul class="info clearfix">
                                    <li><a href="properties.html"><i class="la la-calendar-minus-o"></i>2 Years Ago</a></li>
                                </ul>
                            </div>
                            <div class="lower-content">
                                <ul class="tags">
                                    <li><a href="property-detail.html">Apartment</a>,</li>
                                    <li><a href="property-detail.html">Bar</a>,</li>
                                    <li><a href="property-detail.html">House</a>,</li>
                                </ul>
                                <div class="thumb"><img src="images/resource/thumb-7.jpg" alt=""></div>
                                <h3><a href="property-detail.html">Great Home for Single fmaily</a></h3>
                                <div class="lucation"><i class="la la-map-marker"></i> Orland Park, IL 35785, Chicago, United State</div>
                                <ul class="property-info clearfix">
                                    <li><i class="flaticon-dimension"></i> 356 Sq-Ft</li>
                                    <li><i class="flaticon-bed"></i> 4 Bedrooms</li>
                                    <li><i class="flaticon-car"></i> 2 Garage</li>
                                    <li><i class="flaticon-bathtub"></i> 3 Bathroom</li>
                                </ul>
                                <div class="property-price clearfix">
                                    <div class="read-more"><a href="property-detail.html" class="theme-btn">More Detail</a></div>
                                    <div class="price">$ 13,65,000</div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Property Block -->
                    <div class="property-block all mix apprtment villa form col-xl-4 col-lg-6 col-md-6 col-sm-12">
                        <div class="inner-box">
                            <div class="image-box">
                                <figure class="image"><img src="images/resource/property-4.jpg" alt=""></figure>
                                <span class="for">FOR SALE</span>
                                <span class="featured">FEATURED</span>
                                <ul class="option-box">
                                    <li><a href="images/resource/property-4.jpg" class="lightbox-image" data-fancybox="property"><i class="la la-camera"></i></a></li>
                                    <li><a href="#"><i class="la la-heart"></i></a></li>
                                    <li><a href="#"><i class="la la-retweet"></i></a></li>
                                </ul>
                                <ul class="info clearfix">
                                    <li><a href="properties.html"><i class="la la-calendar-minus-o"></i>2 Years Ago</a></li>
                                </ul>
                            </div>
                            <div class="lower-content">
                                <ul class="tags">
                                    <li><a href="property-detail.html">Apartment</a>,</li>
                                    <li><a href="property-detail.html">Bar</a>,</li>
                                    <li><a href="property-detail.html">House</a>,</li>
                                </ul>
                                <div class="thumb"><img src="images/resource/thumb-8.jpg" alt=""></div>
                                <h3><a href="property-detail.html">Single House Near Orland Park.</a></h3>
                                <div class="lucation"><i class="la la-map-marker"></i> Orland Park, IL 35785, Chicago, United State</div>
                                <ul class="property-info clearfix">
                                    <li><i class="flaticon-dimension"></i> 356 Sq-Ft</li>
                                    <li><i class="flaticon-bed"></i> 4 Bedrooms</li>
                                    <li><i class="flaticon-car"></i> 2 Garage</li>
                                    <li><i class="flaticon-bathtub"></i> 3 Bathroom</li>
                                </ul>
                                <div class="property-price clearfix">
                                    <div class="read-more"><a href="property-detail.html" class="theme-btn">More Detail</a></div>
                                    <div class="price">$ 13,65,000</div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Property Block -->
                    <div class="property-block all mix house restaurent villa col-xl-4 col-lg-6 col-md-6 col-sm-12">
                        <div class="inner-box">
                            <div class="image-box">
                                <figure class="image"><img src="images/resource/property-5.jpg" alt=""></figure>
                                <span class="for">FOR SALE</span>
                                <span class="featured">FEATURED</span>
                                <ul class="option-box">
                                    <li><a href="images/resource/property-5.jpg" class="lightbox-image" data-fancybox="property"><i class="la la-camera"></i></a></li>
                                    <li><a href="#"><i class="la la-heart"></i></a></li>
                                    <li><a href="#"><i class="la la-retweet"></i></a></li>
                                </ul>
                                <ul class="info clearfix">
                                    <li><a href="properties.html"><i class="la la-calendar-minus-o"></i>2 Years Ago</a></li>
                                </ul>
                            </div>
                            <div class="lower-content">
                                <ul class="tags">
                                    <li><a href="property-detail.html">Apartment</a>,</li>
                                    <li><a href="property-detail.html">Bar</a>,</li>
                                    <li><a href="property-detail.html">House</a>,</li>
                                </ul>
                                <div class="thumb"><img src="images/resource/thumb-9.jpg" alt=""></div>
                                <h3><a href="property-detail.html">Apartment Morden 1243, W No...</a></h3>
                                <div class="lucation"><i class="la la-map-marker"></i> Orland Park, IL 35785, Chicago, United State</div>
                                <ul class="property-info clearfix">
                                    <li><i class="flaticon-dimension"></i> 356 Sq-Ft</li>
                                    <li><i class="flaticon-bed"></i> 4 Bedrooms</li>
                                    <li><i class="flaticon-car"></i> 2 Garage</li>
                                    <li><i class="flaticon-bathtub"></i> 3 Bathroom</li>
                                </ul>
                                <div class="property-price clearfix">
                                    <div class="read-more"><a href="property-detail.html" class="theme-btn">More Detail</a></div>
                                    <div class="price">$ 13,65,000</div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Property Block -->
                    <div class="property-block all mix apprtment restaurent form col-xl-4 col-lg-6 col-md-6 col-sm-12">
                        <div class="inner-box">
                            <div class="image-box">
                                <figure class="image"><img src="images/resource/property-6.jpg" alt=""></figure>
                                <span class="for">FOR SALE</span>
                                <span class="featured">FEATURED</span>
                                <ul class="option-box">
                                    <li><a href="images/resource/property-6.jpg" class="lightbox-image" data-fancybox="property"><i class="la la-camera"></i></a></li>
                                    <li><a href="#"><i class="la la-heart"></i></a></li>
                                    <li><a href="#"><i class="la la-retweet"></i></a></li>
                                </ul>
                                <ul class="info clearfix">
                                    <li><a href="properties.html"><i class="la la-calendar-minus-o"></i>2 Years Ago</a></li>
                                </ul>
                            </div>
                            <div class="lower-content">
                                <ul class="tags">
                                    <li><a href="property-detail.html">Apartment</a>,</li>
                                    <li><a href="property-detail.html">Bar</a>,</li>
                                    <li><a href="property-detail.html">House</a>,</li>
                                </ul>
                                <div class="thumb"><img src="images/resource/thumb-10.jpg" alt=""></div>
                                <h3><a href="property-detail.html">Great Home for Single fmaily</a></h3>
                                <div class="lucation"><i class="la la-map-marker"></i> Orland Park, IL 35785, Chicago, United State</div>
                                <ul class="property-info clearfix">
                                    <li><i class="flaticon-dimension"></i> 356 Sq-Ft</li>
                                    <li><i class="flaticon-bed"></i> 4 Bedrooms</li>
                                    <li><i class="flaticon-car"></i> 2 Garage</li>
                                    <li><i class="flaticon-bathtub"></i> 3 Bathroom</li>
                                </ul>
                                <div class="property-price clearfix">
                                    <div class="read-more"><a href="property-detail.html" class="theme-btn">More Detail</a></div>
                                    <div class="price">$ 13,65,000</div>
                                </div>
                            </div>
                        </div>
                    </div>--%>

                        </ItemTemplate>
                    <FooterTemplate>
                </div>

                <!-- Load More -->
                
                        <div class="load-more-btn text-center">
                    <%--<a href="#" class="theme-btn btn-style-two">Load More</a>--%>
                   <%-- <asp:Button ID="btnld" runat="server" class="theme-btn btn-style-two" Text="Load More" />--%>
                </div>
            </FooterTemplate>
                    </asp:Repeater>

                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Pid], [Pname],[Paddress], [Pdesc], [Ptype], [PCat], [Bedroom], [Bathroom], [Kitchen], [TotalSquareFeet], [PerFeetPrice], [TotalPrice], [Paddress], [OwnerId], [OwnerType], [Pimg], [Pvideo], [Cid], [sid], [Ciid], [Status] FROM [PropertyOwner] WHERE ([Status] = @Status)">
                    <SelectParameters>
                    <asp:ControlParameter ControlID="lb" PropertyName="Text" DefaultValue="0" Name="Status" Type="Int32"></asp:ControlParameter>
                </SelectParameters>
                </asp:SqlDataSource>






                    <!-- Property Block -->
                    <%--<div class="property-block all mix house villa col-xl-4 col-lg-6 col-md-6 col-sm-12">
                        <div class="inner-box">
                            <div class="image-box">
                                <figure class="image"><img src="images/resource/property-1.jpg" alt=""></figure>
                                <span class="for">FOR SALE</span>
                                <span class="featured">FEATURED</span>
                                <ul class="option-box">
                                    <li><a href="images/resource/property-1.jpg" class="lightbox-image" data-fancybox="property"><i class="la la-camera"></i></a></li>
                                    <li><a href="#"><i class="la la-heart"></i></a></li>
                                    <li><a href="#"><i class="la la-retweet"></i></a></li>
                                </ul>
                                <ul class="info clearfix">
                                    <li><a href="properties.html"><i class="la la-calendar-minus-o"></i>2 Years Ago</a></li>
                                </ul>
                            </div>
                            <div class="lower-content">
                                <ul class="tags">
                                    <li><a href="property-detail.html">Apartment</a>,</li>
                                    <li><a href="property-detail.html">Bar</a>,</li>
                                    <li><a href="property-detail.html">House</a>,</li>
                                </ul>
                                <div class="thumb"><img src="images/resource/thumb-5.jpg" alt=""></div>
                                <h3><a href="property-detail.html">Single House Near Orland Park.</a></h3>
                                <div class="lucation"><i class="la la-map-marker"></i> Orland Park, IL 35785, Chicago, United State</div>
                                <ul class="property-info clearfix">
                                    <li><i class="flaticon-dimension"></i> 356 Sq-Ft</li>
                                    <li><i class="flaticon-bed"></i> 4 Bedrooms</li>
                                    <li><i class="flaticon-car"></i> 2 Garage</li>
                                    <li><i class="flaticon-bathtub"></i> 3 Bathroom</li>
                                </ul>
                                <div class="property-price clearfix">
                                    <div class="read-more"><a href="property-detail.html" class="theme-btn">More Detail</a></div>
                                    <div class="price">$ 13,65,000</div>
                                </div>
                            </div>
                        </div>
                    </div>--%>

                    <!-- Property Block -->
                    <%--<div class="property-block all mix restaurent apprtment form col-xl-4 col-lg-6 col-md-6 col-sm-12">
                        <div class="inner-box">
                            <div class="image-box">
                                <figure class="image"><img src="images/resource/property-2.jpg" alt=""></figure>
                                <span class="for">FOR SALE</span>
                                <span class="featured">FEATURED</span>
                                <ul class="option-box">
                                    <li><a href="images/resource/property-2.jpg" class="lightbox-image" data-fancybox="property"><i class="la la-camera"></i></a></li>
                                    <li><a href="#"><i class="la la-heart"></i></a></li>
                                    <li><a href="#"><i class="la la-retweet"></i></a></li>
                                </ul>
                                <ul class="info clearfix">
                                    <li><a href="properties.html"><i class="la la-calendar-minus-o"></i>2 Years Ago</a></li>
                                </ul>
                            </div>
                            <div class="lower-content">
                                <ul class="tags">
                                    <li><a href="property-detail.html">Apartment</a>,</li>
                                    <li><a href="property-detail.html">Bar</a>,</li>
                                    <li><a href="property-detail.html">House</a>,</li>
                                </ul>
                                <div class="thumb"><img src="images/resource/thumb-6.jpg" alt=""></div>
                                <h3><a href="property-detail.html">Apartment Morden 1243, W No...</a></h3>
                                <div class="lucation"><i class="la la-map-marker"></i> Orland Park, IL 35785, Chicago, United State</div>
                                <ul class="property-info clearfix">
                                    <li><i class="flaticon-dimension"></i> 356 Sq-Ft</li>
                                    <li><i class="flaticon-bed"></i> 4 Bedrooms</li>
                                    <li><i class="flaticon-car"></i> 2 Garage</li>
                                    <li><i class="flaticon-bathtub"></i> 3 Bathroom</li>
                                </ul>
                                <div class="property-price clearfix">
                                    <div class="read-more"><a href="property-detail.html" class="theme-btn">More Detail</a></div>
                                    <div class="price">$ 13,65,000</div>
                                </div>
                            </div>
                        </div>
                    </div>--%>

                    <!-- Property Block -->
                    <%--<div class="property-block all mix house restaurent villa col-xl-4 col-lg-6 col-md-6 col-sm-12">
                        <div class="inner-box">
                            <div class="image-box">
                                <figure class="image"><img src="images/resource/property-3.jpg" alt=""></figure>
                                <span class="for">FOR SALE</span>
                                <span class="featured">FEATURED</span>
                                <ul class="option-box">
                                    <li><a href="images/resource/property-3.jpg" class="lightbox-image" data-fancybox="property"><i class="la la-camera"></i></a></li>
                                    <li><a href="#"><i class="la la-heart"></i></a></li>
                                    <li><a href="#"><i class="la la-retweet"></i></a></li>
                                </ul>
                                <ul class="info clearfix">
                                    <li><a href="properties.html"><i class="la la-calendar-minus-o"></i>2 Years Ago</a></li>
                                </ul>
                            </div>
                            <div class="lower-content">
                                <ul class="tags">
                                    <li><a href="property-detail.html">Apartment</a>,</li>
                                    <li><a href="property-detail.html">Bar</a>,</li>
                                    <li><a href="property-detail.html">House</a>,</li>
                                </ul>
                                <div class="thumb"><img src="images/resource/thumb-7.jpg" alt=""></div>
                                <h3><a href="property-detail.html">Great Home for Single fmaily</a></h3>
                                <div class="lucation"><i class="la la-map-marker"></i> Orland Park, IL 35785, Chicago, United State</div>
                                <ul class="property-info clearfix">
                                    <li><i class="flaticon-dimension"></i> 356 Sq-Ft</li>
                                    <li><i class="flaticon-bed"></i> 4 Bedrooms</li>
                                    <li><i class="flaticon-car"></i> 2 Garage</li>
                                    <li><i class="flaticon-bathtub"></i> 3 Bathroom</li>
                                </ul>
                                <div class="property-price clearfix">
                                    <div class="read-more"><a href="property-detail.html" class="theme-btn">More Detail</a></div>
                                    <div class="price">$ 13,65,000</div>
                                </div>
                            </div>
                        </div>
                    </div>--%>

                    <!-- Property Block -->
                    <%--<div class="property-block all mix apprtment villa form col-xl-4 col-lg-6 col-md-6 col-sm-12">
                        <div class="inner-box">
                            <div class="image-box">
                                <figure class="image"><img src="images/resource/property-4.jpg" alt=""></figure>
                                <span class="for">FOR SALE</span>
                                <span class="featured">FEATURED</span>
                                <ul class="option-box">
                                    <li><a href="images/resource/property-4.jpg" class="lightbox-image" data-fancybox="property"><i class="la la-camera"></i></a></li>
                                    <li><a href="#"><i class="la la-heart"></i></a></li>
                                    <li><a href="#"><i class="la la-retweet"></i></a></li>
                                </ul>
                                <ul class="info clearfix">
                                    <li><a href="properties.html"><i class="la la-calendar-minus-o"></i>2 Years Ago</a></li>
                                </ul>
                            </div>
                            <div class="lower-content">
                                <ul class="tags">
                                    <li><a href="property-detail.html">Apartment</a>,</li>
                                    <li><a href="property-detail.html">Bar</a>,</li>
                                    <li><a href="property-detail.html">House</a>,</li>
                                </ul>
                                <div class="thumb"><img src="images/resource/thumb-8.jpg" alt=""></div>
                                <h3><a href="property-detail.html">Single House Near Orland Park.</a></h3>
                                <div class="lucation"><i class="la la-map-marker"></i> Orland Park, IL 35785, Chicago, United State</div>
                                <ul class="property-info clearfix">
                                    <li><i class="flaticon-dimension"></i> 356 Sq-Ft</li>
                                    <li><i class="flaticon-bed"></i> 4 Bedrooms</li>
                                    <li><i class="flaticon-car"></i> 2 Garage</li>
                                    <li><i class="flaticon-bathtub"></i> 3 Bathroom</li>
                                </ul>
                                <div class="property-price clearfix">
                                    <div class="read-more"><a href="property-detail.html" class="theme-btn">More Detail</a></div>
                                    <div class="price">$ 13,65,000</div>
                                </div>
                            </div>
                        </div>
                    </div>--%>

                    <!-- Property Block -->
                    <%--<div class="property-block all mix house restaurent villa col-xl-4 col-lg-6 col-md-6 col-sm-12">
                        <div class="inner-box">
                            <div class="image-box">
                                <figure class="image"><img src="images/resource/property-5.jpg" alt=""></figure>
                                <span class="for">FOR SALE</span>
                                <span class="featured">FEATURED</span>
                                <ul class="option-box">
                                    <li><a href="images/resource/property-5.jpg" class="lightbox-image" data-fancybox="property"><i class="la la-camera"></i></a></li>
                                    <li><a href="#"><i class="la la-heart"></i></a></li>
                                    <li><a href="#"><i class="la la-retweet"></i></a></li>
                                </ul>
                                <ul class="info clearfix">
                                    <li><a href="properties.html"><i class="la la-calendar-minus-o"></i>2 Years Ago</a></li>
                                </ul>
                            </div>
                            <div class="lower-content">
                                <ul class="tags">
                                    <li><a href="property-detail.html">Apartment</a>,</li>
                                    <li><a href="property-detail.html">Bar</a>,</li>
                                    <li><a href="property-detail.html">House</a>,</li>
                                </ul>
                                <div class="thumb"><img src="images/resource/thumb-9.jpg" alt=""></div>
                                <h3><a href="property-detail.html">Apartment Morden 1243, W No...</a></h3>
                                <div class="lucation"><i class="la la-map-marker"></i> Orland Park, IL 35785, Chicago, United State</div>
                                <ul class="property-info clearfix">
                                    <li><i class="flaticon-dimension"></i> 356 Sq-Ft</li>
                                    <li><i class="flaticon-bed"></i> 4 Bedrooms</li>
                                    <li><i class="flaticon-car"></i> 2 Garage</li>
                                    <li><i class="flaticon-bathtub"></i> 3 Bathroom</li>
                                </ul>
                                <div class="property-price clearfix">
                                    <div class="read-more"><a href="property-detail.html" class="theme-btn">More Detail</a></div>
                                    <div class="price">$ 13,65,000</div>
                                </div>
                            </div>
                        </div>
                    </div>--%>

                    <!-- Property Block -->
                    <%--<div class="property-block all mix apprtment restaurent form col-xl-4 col-lg-6 col-md-6 col-sm-12">
                        <div class="inner-box">
                            <div class="image-box">
                                <figure class="image"><img src="images/resource/property-6.jpg" alt=""></figure>
                                <span class="for">FOR SALE</span>
                                <span class="featured">FEATURED</span>
                                <ul class="option-box">
                                    <li><a href="images/resource/property-6.jpg" class="lightbox-image" data-fancybox="property"><i class="la la-camera"></i></a></li>
                                    <li><a href="#"><i class="la la-heart"></i></a></li>
                                    <li><a href="#"><i class="la la-retweet"></i></a></li>
                                </ul>
                                <ul class="info clearfix">
                                    <li><a href="properties.html"><i class="la la-calendar-minus-o"></i>2 Years Ago</a></li>
                                </ul>
                            </div>
                            <div class="lower-content">
                                <ul class="tags">
                                    <li><a href="property-detail.html">Apartment</a>,</li>
                                    <li><a href="property-detail.html">Bar</a>,</li>
                                    <li><a href="property-detail.html">House</a>,</li>
                                </ul>
                                <div class="thumb"><img src="images/resource/thumb-10.jpg" alt=""></div>
                                <h3><a href="property-detail.html">Great Home for Single fmaily</a></h3>
                                <div class="lucation"><i class="la la-map-marker"></i> Orland Park, IL 35785, Chicago, United State</div>
                                <ul class="property-info clearfix">
                                    <li><i class="flaticon-dimension"></i> 356 Sq-Ft</li>
                                    <li><i class="flaticon-bed"></i> 4 Bedrooms</li>
                                    <li><i class="flaticon-car"></i> 2 Garage</li>
                                    <li><i class="flaticon-bathtub"></i> 3 Bathroom</li>
                                </ul>
                                <div class="property-price clearfix">
                                    <div class="read-more"><a href="property-detail.html" class="theme-btn">More Detail</a></div>
                                    <div class="price">$ 13,65,000</div>
                                </div>
                            </div>
                        </div>
                    </div>--%>

                </div>
           
                <!-- Load More -->

           
            </div>
         </section>
        </div>
    
    <!--End Property Filter Section -->


    <!--Clients Section-->
    <%--<section class="clients-section style-three">
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
    </section>--%>
    <!--End Clients Section--> 

    <!-- Main Footer -->
 <%--   <footer class="main-footer style-three">
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
        <span>You will find much more options for colors and styling in admin panel. This color picker is used only for demonstation purposes.</span>
    </div>
    <a href="#" class="purchase-btn">Purchase now $17</a>
</div><!-- End Color Switcher -->--%>

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
<%--</form>--%>


</asp:Content>

