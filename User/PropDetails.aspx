<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.master" AutoEventWireup="true" CodeFile="PropDetails.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <style>
                

                input:focus, 
                    textarea:focus {
                    outline: none;
                    }

                p {
                    max-height: 60px;
                }

                h1 {
                    color: #ccc;
                    font-size: 1.4em;
                    font-weight: 700;
                    margin: 0;
                    text-align:center;
                }

                .calc {
                    background: #fff;
                    border-radius: 6px;
                    box-shadow: 15px 15px 0px rgba(0,0,0,.1);
                    margin: 50px auto;
                    padding: 20px;
                    padding-top: 30px;
                    width: 300px;
                    .header {
                        background: url('https://s3-us-west-2.amazonaws.com/s.cdpn.io/95581/rx7-Spectrum-Photography.jpg');
                        background-position: 106% 89%;
                        background-size: 101%;
                        border-bottom: 2px solid #f26964;
                        border-top-left-radius: 6px;
                        border-top-right-radius: 6px;
                        bottom: 30px;
                        height: 102px;
                        position: relative;
                        right: 20px;
                        width: 340px;
                    }
                    input {
                        background: #f5f5f5;
                        border: 0;
                        border: 1px solid #eee;
                        border-radius: 6px;
                        max-width: 215px;
                        padding: 20px;
                        padding-left: 65px;
                        margin-bottom: 10px;
                        width: 100%;
                    }

                    .btn {
                        background: #f26964;
                        border: 0;
                        border-radius: 6px;
                        box-shadow: 0px 3px 0px #c1524e;
                        color: #fff;
                        font-size: 1.2em;
                        padding: 20px;
                        position: relative;
                        text-shadow: 1px 1px 0px rgba(0,0,0,.1);
                        width: 100%;
                        &:active {
                            box-shadow:none;
                            top:3px;
                        }
                    }
                  #output {
                      border-radius: 6px;
                      color: #919191;
                      font-size: 28px;
                      font-weight: bold;
                      height: 34px;
                      margin: 0 auto;
                      padding: 11px;
                      text-align: center;
                      vertical-align: middle;
                      visibility: visible;
                  }
                }

                .fa {
                    background-color: #f26964;
                    border-bottom-left-radius: 6px;
                    border-top-left-radius: 6px;
                    height: 18px;
                    bottom: 68px;
                    color: white;
                    padding: 20px;
                    position: relative;
                    width: 12px;
                }
                .fa-usd {
                    &:before {
                        bottom: 1px;
                        font-size: 18px;
                        left: 2px;
                        position: relative;
                    }
                }

                .interest {
                    &:before {
                        content: "%";
                        font-weight: bold;    
                    }
                }
           </style>


    <%--<form id="Form1" runat="server">--%>
<div class="page-wrapper">
    <!-- Preloader -->
    <div class="preloader"></div>
    
        <!-- Main Header-->
    <header class="main-header header-style-seven">
        <!--Header Top-->
        <div class="header-top">
            <%--<div class="auto-container">
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
            </div>--%>
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
        <%--<div class="header-lower">
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
        </div>--%>
        <!--End Header Lower-->

        <!-- Sticky Header  -->
       <%-- <div class="sticky-header">
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
        </div>--%><!-- End Sticky Menu -->
    </header>
    <!--End Main Header -->

    <!--Page Title-->
    <section class="page-title" style="background-image:url(images/background/16.jpg);">
        <div class="auto-container">
            <div class="inner-container clearfix">
                <h1>Property Detail</h1>
                <ul class="bread-crumb clearfix">
                    <li><a href="index-2.html">Home</a></li>
                    <li>Property Detail</li>
                </ul>
            </div>
        </div>
    </section>
    <!--End Page Title-->

    <!-- Sidebar Page Container -->
    <div class="sidebar-page-container">
        <div class="auto-container">
            <div class="upper-info-box">
                <div class="row">
                    <div class="about-property col-lg-8 col-md-12 col-sm-12">
                        <h2><%--Single House Near Orland Park,..--%><asp:Label ID="lblname" runat="server" Text=""></asp:Label></h2>
                        <div class="location"><i class="la la-map-marker"></i><asp:Label ID="Label1" runat="server" Text=""></asp:Label></div>
                        <ul class="property-info clearfix">
                            <li><i class="flaticon-dimension"></i> <asp:Label ID="lblsq" runat="server" Text=""></asp:Label> Square Feet</li>
                            <li><i class="flaticon-bed"></i><asp:Label ID="lblroom" runat="server" Text=""></asp:Label> </li>
                            <li><i class="flaticon-car"></i> <asp:Label ID="lblkitchen" runat="server" Text=""></asp:Label></li>
                            <li><i class="flaticon-bathtub"></i> <asp:Label ID="lblbathroom" runat="server" Text=""></asp:Label></li>
                        </ul>
                    </div>
                    <div class="price-column col-lg-4 col-md-12 col-sm-12">
                        <%--<span class="title">Start From</span>--%>
                        <div class="price">Rs.<asp:Label ID="lblpri" runat="server" Text=""></asp:Label></div>
                        <%--<span class="status">For Sale</span>--%>
                    </div>
                </div>
            </div>
            <div class="row clearfix">
                <!--Content Side-->
                <div class="content-side col-lg-8 col-md-12 col-sm-12">
                    <div class="property-detail">

<%--                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                            <ItemTemplate>--%>
                        <div class="upper-box">
                            <div class="carousel-outer">
                                
                                <ul class="image-carousel owl-carousel owl-theme">
                                    <li><asp:Image ID="Image1" runat="server" /></li>
                                    <li><asp:Image ID="Image2" runat="server" /></li>
                                    <li><asp:Image ID="Image3" runat="server" /></li>
                                    <li><asp:Image ID="Image4" runat="server" /></li>
                                     <%-- <li><a href="images/resource/property-detail-2.jpg" class="lightbox-image" title="Image Caption Here"></a></li>--%>

                                 <%-- <li><a href="images/resource/property-detail-3.jpg" class="lightbox-image" title="Image Caption Here"><img src="images/resource/property-detail-3.jpg" alt=""></a></li>

                                    <li><a href="images/resource/property-detail-4.jpg" class="lightbox-image" title="Image Caption Here"><img src="images/resource/property-detail-4.jpg" alt=""></a></li>

                                    <li><a href="images/resource/property-detail-5.jpg" class="lightbox-image" title="Image Caption Here"><img src="images/resource/property-detail-5.jpg" alt=""></a></li>--%>
                                </ul>
                                
                                <ul class="thumbs-carousel owl-carousel owl-theme">

                                    <%--<li><img src="../Admin/img/PropGal/<%#Eval("gimg") %>" alt=""></li>
                                    <li><img src="images/resource/property-thumb-8.jpg" alt=""></li>
                                    <li><img src="images/resource/property-thumb-7.jpg" alt=""></li>
                                    <li><img src="images/resource/property-thumb-6.jpg" alt=""></li>--%>
                                    
                                </ul>
                            </div>
                        </div>
                        <%--        </ItemTemplate>
                        </asp:Repeater>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [pid], [gimg] FROM [gallry]"></asp:SqlDataSource>
                        --%><div class="lower-content">
                            <h3>Descripation</h3>
                            <asp:Label ID="lbldesc" runat="server" Text=""></asp:Label>
                        </div>

                        <!-- Property Features -->
                        <div class="property-features">
                            <h3>Essential Information</h3>
                            <ul class="list-style-one">
                                <li>Price: <asp:Label ID="lblprice" runat="server" Text=""></asp:Label></li>
                                <li>For: <asp:Label ID="lblcat" runat="server" Text=""></asp:Label></li>
                                <li>Property Types: <asp:Label ID="lbltype" runat="server" Text=""></asp:Label></li>
                                <li>Area: <asp:Label ID="lblsqft" runat="server" Text=""></asp:Label>SQFT</li>
                                <li>Country: <asp:Label ID="lblcountry" runat="server" Text=""></asp:Label> </li>
                                <li>City: <asp:Label ID="lblcity" runat="server" Text=""></asp:Label></li>
                                <li>Bedrooms: <asp:Label ID="lblbed" runat="server" Text=""></asp:Label> </li>
                                <li>Bathrooms: <asp:Label ID="lblbath" runat="server" Text=""></asp:Label></li>
                                <li>Kitchen: <asp:Label ID="lblkit" runat="server" Text=""></asp:Label></li>
                            </ul>
                        </div>


                        <!-- Property Features -->
                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                            <HeaderTemplate>
                        <div class="property-features">
                            <h3>Home Amenities</h3>
                            
                            <ul class="list-style-one">
                                </HeaderTemplate>
                            <ItemTemplate>
                                <li><%#Eval("Amenities") %></li>
                                <%--<li>Alarm System</li>
                                <li>Basketball court</li>
                                <li>Bedding</li>
                                <li>Dishes</li>
                                <li>Dishwasher</li>
                                <li>Doorman</li>
                                <li>Elevator</li>
                                <li>Fireplace</li>
                                <li>Garden</li>
                                <li>Gym</li>
                                <li>Hair Dryer</li>
                                <li>Heating System</li>
                                <li>High Ceiling</li>
                                <li>Hot Tub</li>
                                <li>Microwave</li>
                                <li>Iron</li>
                                <li>Laundry</li>
                                <li>Oven</li>
                                <li>Parking</li>
                                <li>Pool</li>--%>
                                 </ItemTemplate>
                            <FooterTemplate>
                            </ul>
                               
                        </div>
                                </FooterTemplate>
                            </asp:Repeater>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ConnectionString2 %>' SelectCommand="SELECT [Pid], [Amenities], [Aid] FROM [Amenities] WHERE ([Pid] = @Pid)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblrep" PropertyName="Text" Name="Pid" Type="Int32"></asp:ControlParameter>
                            </SelectParameters>
                        </asp:SqlDataSource>


                         <div class="property-features">
                            <asp:Label ID="lblkj" runat="server" Text="You Are Just One Click Away From Byuing Your Dream Home"></asp:Label><br />
                             <h3>Rs.<asp:Label ID="lbltoken" runat="server" Text="80"></asp:Label></h3>
                            <asp:Button ID="btnbkl" runat="server" Text="Book" class="theme-btn btn-style-one" OnClick="btnbkl_Click"/>
                        </div>

                        
                        
                        <asp:Label ID="lblrep" runat="server" Visible="false" ></asp:Label>
                        

                       

                        <!-- Flooring Tabs -->
                       <%-- <div class="flooring-tabs tabs-box">
                            <div class="clearfix">
                                <h3>Flooring Plans</h3>
                                <ul class="tab-buttons">
                                    <li data-tab="#groud-floor" class="tab-btn active-btn">Grand Floor</li>
                                    <li data-tab="#first-floor" class="tab-btn">First Floor</li>
                                    <li data-tab="#second-floor" class="tab-btn">Second Floor</li>
                                </ul>                
                            </div>

                            <div class="tabs-content">
                                <!--Tab / Active Tab-->
                                <div class="tab active-tab" id="groud-floor">
                                    <div class="image-box">
                                        <figure class="image"><img src="images/resource/house-map.jpg" alt=""></figure>
                                    </div>
                                </div>

                                <!--Tab -->
                                <div class="tab" id="first-floor">
                                    <div class="image-box">
                                        <figure class="image"><img src="images/resource/house-map.jpg" alt=""></figure>
                                    </div>
                                </div>

                                <!--Tab -->
                                <div class="tab" id="second-floor">
                                    <div class="image-box">
                                        <figure class="image"><img src="images/resource/house-map.jpg" alt=""></figure>
                                    </div>
                                </div>
                            </div>
                        </div>--%>

                        <!-- Nearest Places -->
                        <%--<div class="nearest-places">
                            <h3>Near By Place</h3>
                            <div class="outer-box clearfix">
                                <div class="places-column">
                                    <ul class="places-list">
                                        <li>
                                            <strong>City Center</strong>
                                            <div class="text"><b>City Stars Mall</b>Verso Street, Lundon, UK <span>2.5 km</span></div>
                                        </li>

                                        <li>
                                            <strong>School</strong>
                                            <div class="text"><b>Polar Secondary School,</b>Verso Street, Lundon, UK <span>2.5 km</span></div>
                                        </li>

                                        <li>
                                            <strong>Restaurant</strong>
                                            <div class="text"><b>Spectra Resturant & Cafe, </b>Verso Street, Lundon, UK <span>2.5 km</span></div>
                                            <div class="text"><b>Mojesty Resturant, </b>Carrer De Verso Street, Lundon, UK<span>2.5 km</span></div>
                                        </li>

                                        <li>
                                            <strong>Bank</strong>
                                            <div class="text"><b>United Bank</b>Verso Street, Lundon, UK <span>2.5 km</span></div>
                                        </li>

                                        <li>
                                            <strong>Airport</strong>
                                            <div class="text"><b>Lundon International Airport</b>Verso Street, Lundon, UK <span>2.5 km</span></div>
                                        </li>

                                        <li>
                                            <strong>Bar</strong>
                                            <div class="text"><b>Verna Plaza Bar</b>Verso Street, Lundon, UK <span>2.5 km</span></div>
                                        </li>
                                    </ul>
                                </div>

                                <div class="map-column">
                                    <div class="map-outer">
                                        <!--Map Canvas-->
                                        <div class="map-canvas"
                                            data-zoom="12"
                                            data-lat="-37.817085"
                                            data-lng="144.955631"
                                            data-type="roadmap"
                                            data-hue="#ffc400"
                                            data-title="Envato"
                                            data-icon-path="images/icons/map-marker.png"
                                            data-content="Melbourne VIC 3000, Australia<br><a href='mailto:info@youremail.com'>info@youremail.com</a>">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>--%>

                        <!-- Review Box -->
                        
                         <!-- Review Comment Form -->
                        <div class="review-comment-form"> 
                            <h3>Leave A Review</h3>
                            
                                <div class="row">
                                    <div class="form-group col-lg-6 col-md-12 col-sm-12">
                                        <%--<input type="text" name="username" placeholder="Full Name" required>--%>
                                        <asp:TextBox ID="txtuname" runat="server" placeholder="Full Name"></asp:TextBox>
                                    </div>
                                    <div class="form-group col-lg-6 col-md-12 col-sm-12">
                                        <%--<input type="text" name="number" placeholder="Email Address" required>--%>
                                        <asp:TextBox ID="txtem" runat="server" placeholder="Email Address"></asp:TextBox>
                                    </div>
                                    <div class="form-group col-lg-12 col-md-12 col-sm-12">
                                        <%--<textarea name="message" placeholder="Massage"></textarea>--%>
                                        <asp:TextBox ID="txtmsg" runat="server" placeholder="Message" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                                    <%--<div class="form-group col-lg-6 col-md-6 col-sm-6">
                                        <div class="rating-box">
                                            <div class="text"> Your Rating:</div>
                                            <div class="rating"><a href="#"><span class="la la-star-o"></span></a><a href="#"><span class="la la-star-o"></span></a><a href="#"><span class="la la-star-o"></span></a><a href="#"><span class="la la-star-o"></span></a><a href="#"><span class="la la-star-o"></span></a>
                                            </div>
                                        </div>
                                    </div>--%>

                                    <div class="form-group col-lg-6 col-md-6 col-sm-6 text-right">
                                        <%--<button class="theme-btn btn-style-one" type="submit" name="submit-form">Submit now</button>--%>
                                        <asp:Button ID="txtsb" runat="server" class="theme-btn btn-style-one" text="Submit Now" OnClick="txtsb_Click"/>
                                    </div>
                                </div>
                            
                        </div>
                    </div>
                </div>

                <!--Sidebar Side-->
                <div class="sidebar-side col-lg-4 col-md-12 col-sm-12">
                    <aside class="sidebar default-sidebar">

                        <!--search box-->
                        <div class="sidebar-widget sort-by">
                            <%--<select class="custom-select-box">
                                <option>Sort By</option>
                                <option>Residential</option>
                                <option>Commercial</option>
                                <option>Industrial</option>
                                <option>Apartments</option>
                            </select>--%>
                            <asp:DropDownList runat="server" ID="drsr" class="custom-select-box">
                                                <asp:ListItem>Sort By</asp:ListItem>
                                                <asp:ListItem>Residential</asp:ListItem>
                                                <asp:ListItem>Apartment</asp:ListItem>
                                                <asp:ListItem>Commercial</asp:ListItem>
                                                
                                            </asp:DropDownList>
                        </div>

                        <!-- Categories -->
                        <div class="sidebar-widget search-properties">
                            <div class="sidebar-title"><h3>Search Properties</h3></div>
                            <!-- Property Search Form -->
                            <div class="property-search-form style-three">
                                
                                    <div class="row no-gutters">
                                        <!-- Form Group -->
                                        <div class="form-group">
                                            <%--<select class="custom-select-box">
                                                <option>Location</option>
                                                <option>New York</option>
                                                <option>Los Angeles</option>
                                                <option>Chicago</option>
                                                <option>Houston</option>
                                            </select>--%>
                                            <asp:DropDownList runat="server" ID="drloc" class="custom-select-box">
                                                <asp:ListItem>Location</asp:ListItem>
                                                <asp:ListItem>Surat</asp:ListItem>
                                                <asp:ListItem>Ahmedabad</asp:ListItem>
                                                <asp:ListItem>Vadodara</asp:ListItem>
                                                <asp:ListItem>Rajkot</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>

                                        <!-- Form Group -->
                                        <div class="form-group">
                                            <%--<select class="custom-select-box">
                                                <option>Property Type</option>
                                                <option>Residential</option>
                                                <option>Commercial</option>
                                                <option>Industrial</option>
                                                <option>Apartments</option>
                                            </select>--%>
                                            <asp:DropDownList runat="server" ID="drpt" class="custom-select-box">
                                                <asp:ListItem>Property Type</asp:ListItem>
                                                <asp:ListItem>Residetial</asp:ListItem>
                                                <asp:ListItem>Apartment</asp:ListItem>
                                                
                                            </asp:DropDownList>

                                        </div>

                                        <!-- Form Group -->
                                        <div class="form-group">
                                            <%--<select class="custom-select-box">
                                                <option>Property Status</option>
                                                <option>For Rent</option>
                                                <option>For Sale</option>
                                            </select>--%>
                                            <asp:DropDownList runat="server" ID="drps" class="custom-select-box">
                                               <asp:ListItem>Property Status</asp:ListItem>
                                                 <asp:ListItem>For Rent</asp:ListItem>
                                                <asp:ListItem>For Sale</asp:ListItem>
                                                
                                            </asp:DropDownList>

                                        </div>


                                        <!-- Form Group -->
                                        <div class="form-group">
                                            <%--<select class="custom-select-box">
                                                <option>Any Bedrooms</option>
                                                <option>01 Bedroom</option>
                                                <option>02 Bedrooms</option>
                                                <option>03 Bedrooms</option>
                                                <option>04 Bedrooms</option>
                                                <option>05 Bedrooms</option>
                                            </select>--%>
                                            <asp:DropDownList runat="server" ID="drbed" class="custom-select-box">
                                                <asp:ListItem>Any Bedroom</asp:ListItem>
                                                <asp:ListItem>01 Bedroom</asp:ListItem>
                                                <asp:ListItem>02 Bedroom</asp:ListItem>
                                                <asp:ListItem>03 Bedroom</asp:ListItem>
                                                <asp:ListItem>04 Bedroom</asp:ListItem>
                                            </asp:DropDownList>

                                        </div>

                                        <!-- Form Group -->
                                        <div class="form-group">
                                            <%--<select class="custom-select-box">
                                                <option>Any Bathrooms</option>
                                                <option>01 Bathroom</option>
                                                <option>02 Bathrooms</option>
                                                <option>03 Bathrooms</option>
                                                <option>04 Bathrooms</option>
                                                <option>05 Bathrooms</option>
                                            </select>--%>
                                            <asp:DropDownList runat="server" ID="drbat" class="custom-select-box">
                                                <asp:ListItem>Any Bathroom</asp:ListItem>
                                                <asp:ListItem>01 Bathroom</asp:ListItem>
                                                <asp:ListItem>02 Bathroom</asp:ListItem>
                                                
                                            </asp:DropDownList>
                                        </div>

                                        <!-- Form Group -->
                                        <div class="form-group">
                                            <div class="range-slider-one clearfix">
                                                <label>Price Filter</label>
                                                <div class="price-range-slider"></div>
                                                <div class="input"><input type="text" class="price-amount" name="field-name"></div>
                                                <div class="title">INDIAN RUPEES</div>
                                            </div>
                                        </div>


                                        <!-- Form Group -->
                                        <div class="form-group">
                                            <%--<button type="submit" class="theme-btn btn-style-one">Search</button>--%>
                                            <asp:Button ID="btnsub" class="theme-btn btn-style-one" runat="server" Text="Search" BackColor="#3399FF" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End Form -->
                        

                         <!-- Categories -->
                        <%--<div class="sidebar-widget categories">
                            <div class="sidebar-title"><h3>Category Properties</h3></div>
                            <ul class="cat-list">
                                <li><a href="#">Apartments <span>22</span></a></li>
                                <li><a href="#">Villas <span>45</span></a></li>
                                <li><a href="#">Open Houses <span>62</span></a></li>
                                <li><a href="#">Offices <span>70</span></a></li>
                                <li><a href="#">Residentals <span>90</span></a></li>
                                <li><a href="#">Co-Working <span>65</span></a></li>
                                <li><a href="#">Flat <span>48</span></a></li>
                                <li><a href="#">Cottage <span>24</span></a></li>
                            </ul>
                        </div>

                        <!-- Recent Properties -->
                        <div class="sidebar-widget recent-properties">
                            <div class="sidebar-title"><h3>Recent Properties</h3></div>
                            <div class="widget-content">
                                <!-- Post -->
                                <article class="post">
                                    <div class="post-thumb">
                                        <a href="blog-detail.html">
                                            <img src="images/resource/property-thumb-1.jpg" alt="">
                                            <span class="status">Rent</span>
                                        </a>
                                    </div>
                                    <span class="location">Lundon, UK</span>
                                    <h3><a href="blog-detail.html">Laxury Balles Villa</a></h3>
                                    <div class="price">$ 760,000</div>
                                </article>

                                <!-- Post -->
                                <article class="post">
                                    <div class="post-thumb">
                                        <a href="blog-detail.html">
                                            <img src="images/resource/property-thumb-2.jpg" alt="">
                                            <span class="status">Rent</span>
                                        </a>
                                    </div>
                                    <span class="location">Lundon, UK</span>
                                    <h3><a href="blog-detail.html">Laxury Balles Villa</a></h3>
                                    <div class="price">$ 760,000</div>
                                </article>

                                <!-- Post -->
                                <article class="post">
                                    <div class="post-thumb">
                                        <a href="blog-detail.html">
                                            <img src="images/resource/property-thumb-3.jpg" alt="">
                                            <span class="status hot">hot</span>
                                        </a>
                                    </div>
                                    <span class="location">Lundon, UK</span>
                                    <h3><a href="blog-detail.html">Laxury Balles Villa</a></h3>
                                    <div class="price">$ 760,000</div>
                                </article>

                                <!-- Post -->
                                <article class="post">
                                    <div class="post-thumb">
                                        <a href="blog-detail.html">
                                            <img src="images/resource/property-thumb-4.jpg" alt="">
                                            <span class="status">Rent</span>
                                        </a>
                                    </div>
                                    <span class="location">Lundon, UK</span>
                                    <h3><a href="blog-detail.html">Laxury Balles Villa</a></h3>
                                    <div class="price">$ 760,000</div>
                                </article>
                            </div>
                        </div>--%>
                    </aside>
                </div>
            </div>
        </div>
    </div>
    <!-- End Sidebar Container -->

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
    </footer>--%>
    <!-- End Main Footer -->

</div>
<!--End pagewrapper-->
    <%--</form>--%>

    <div class="calc">
  <div class="header">
     
  </div>
          <h1>Loan Calculator</h1>
        <br />

    <p>
        <%--<input type="text" id="amount" name="amount" placeholder="Loan Amount">--%>
       <%-- <label for="amount" class="fa fa-usd"></label>--%>
        <asp:Label ID="lbl1" Text="Amount" runat="server"></asp:Label>
         <asp:TextBox runat="server" ID="txtamt" placeholder="Loan Amount" BorderWidth="1px" BorderStyle="Solid" ReadOnly="True"></asp:TextBox><br /><br />
       
    </p>
    <p>
        <%--<input type="text" id="months" placeholder="Months">--%>
    <%--  <label for="amount" class="fa fa-calendar"></label>--%>
          <asp:Label ID="lbl2" Text="Months" runat="server"></asp:Label>&nbsp;
         <asp:TextBox runat="server" ID="txtmnt" placeholder="Months" BorderWidth="1px" BorderStyle="Solid"></asp:TextBox><br /><br />
    </p>
    <p>
        <%--<input type="text" id="years" placeholder="Years">--%>
      <%--<label for="amount" class="fa fa-calendar"></label>--%>
         <asp:Label ID="lbl3" Text="Years" runat="server"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:TextBox runat="server" ID="txtyr" placeholder="Months" BorderWidth="1px" BorderStyle="Solid"></asp:TextBox><br /><br />
    </p>
    <p>
        <%--<input type="text" id="interest" placeholder="Interest Rate">--%>
       <%-- <label for="amount" class="fa interest"></label>--%>
           <asp:Label ID="lbl4" Text="Interest" runat="server"></asp:Label>&nbsp;
         <asp:TextBox runat="server" ID="txtint" placeholder="Interest Rate" BorderWidth="1px" BorderStyle="Solid"></asp:TextBox><br /><br />
    </p>
   <p>
        <%--<input type="text" id="down" placeholder="Down Payment">--%>
        <%--<label for="amount" class="fa fa-arrow-down"></label>--%>
          <asp:Label ID="lbl5" Text="DP" runat="server"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:TextBox runat="server" ID="txtdp" placeholder="Down Payment" BorderWidth="1px" BorderStyle="Solid"></asp:TextBox><br /><br />
    </p>
    <p>
        <%--<button class="btn" onclick="myFunction()">Calculate</button>--%>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button1" class="btn" runat="server" Text="Calculate"/>
    </p>
    <%--<p id="output">Monthly Payment</p>--%>
        <asp:Label ID="lblamt" runat="server" Text="Monthly Payment"></asp:Label>
</div>
</asp:Content>

