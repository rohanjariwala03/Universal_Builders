﻿<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
<%--<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from expert-themes.com/html/ourland/ by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 17 Jan 2019 05:19:21 GMT -->
<head>
<meta charset="utf-8">
<title>Ourland - Real Estate HTML Template | Home Page 01</title>
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
</head>--%>

<%--<body>--%>
    <%--<html>
        <head>
            <title></title>
        </head>
        <body>--%>





<%--<form id="frm1" runat="server">--%>
<div class="page-wrapper">
    <!-- Preloader -->
    <div class="preloader"></div>
    
    <!-- Main Header-->
   <%-- <header class="main-header header-style-one">
        <!--Header Top-->
        <div class="header-top">
            <div class="auto-container">
                <div class="inner-container clearfix">
                    <div class="top-left">
                        <ul class="contact-list clearfix">
                            <li><i class="la la-home"></i> 256 Interior the good, New York</li>
                            <li><i class="la la-envelope-o"></i><a href="#">supportyou@ourland.com</a></li>
                        </ul>
                    </div>
                    <div class="top-right">
                        <div class="btn-box"><a href="admin/submit-property.html" class="theme-btn btn-style-four">Submit Property</a></div>
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
                            <div class="logo"><a href="index-2.html"><img src="images/logo.png" alt="" title=""></a></div>
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
                                        <li class="current dropdown"><a href="#">Home</a>
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
                            <div class="outer-box clearfix">
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
        </div>
        <!--End Header Lower-->

   --%>     
    <!-- Sticky Header  -->
        <div class="sticky-header">
            <div class="auto-container clearfix">
                <!--Logo-->
                <div class="logo pull-left">
                    <a href="index.aspx" title=""><img src="images/logo-small.png" alt="" title=""></a>
                </div>
                <!--Right Col-->
                <%--<div class="pull-right">--%>
                    <!-- Main Menu -->
                   <!-- Main Menu End-->
                <%--</div>--%>
            </div>
        </div><!-- End Sticky Menu -->
    <!--End Main Header -->
    
    <!--Main Slider-->
    
    <section class="main-slider">
        <div class="rev_slider_wrapper fullwidthbanner-container"  id="rev_slider_one_wrapper" data-source="gallery">
            <div class="rev_slider fullwidthabanner" id="rev_slider_one" data-version="5.4.1">
                <ul>
                    <!-- Slide 1 -->
                    <li data-description="Slide Description" data-easein="default" data-easeout="default" data-fsmasterspeed="1500" data-fsslotamount="7" data-fstransition="fade" data-hideafterloop="0" data-hideslideonmobile="off" data-index="rs-1689" data-masterspeed="default" data-param1="" data-param10="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-rotate="0" data-saveperformance="off" data-slotamount="default" data-thumb="images/main-slider/image-2.jpg" data-title="Slide Title" data-transition="parallaxvertical">
                        
                        <img alt="" class="rev-slidebg" data-bgfit="cover" data-bgparallax="10" data-bgposition="center center" data-bgrepeat="no-repeat" data-kenburns="on" data-duration="10000" data-ease="Linear.easeNone" data-scalestart="100" data-scaleend="120" src="images/main-slider/image-1.jpg"> 

                        <div class="tp-caption" 
                        data-paddingbottom="[0,0,0,0]"
                        data-paddingleft="[0,0,0,0]"
                        data-paddingright="[0,0,0,0]"
                        data-paddingtop="[0,0,0,0]"
                        data-responsive_offset="on"
                        data-type="text"
                        data-height="none"
                        data-whitespace="nowrap"
                        data-width="auto"
                        data-text-align="center"
                        data-hoffset="['10','50','0','0']"
                        data-voffset="['0','0','0','0']"
                        data-x="['right','right','center','center']"
                        data-y="['middle','middle','middle','middle']"
                        data-frames='[{"delay":1500,"speed":1000,"frame":"0","from":"x:50px;opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"x:50px;opacity:0;","ease":"Power3.easeInOut"}]'>
                            <div class="content-box">
                                <div class="inner-box">
                                    <div class="title-box">
                                        <h3>Madhuvan</h3>
                                        <p>Near Madhuvan Circle</p>
                                    </div>
                                    <ul class="info-list">
                                        <li><span>4000</span>Area Sq-ft</li>
                                        <li><span>05</span>Bed Room</li>
                                        <li><span>01</span>Kitchen</li>
                                    </ul>
                                    <div class="price">1,00,00,000</div>
                                    <div class="btn-box"><%--<a href="agent-detail.html" class="theme-btn btn-style-one">CONTACT AGENT</a>--%>
                                        <asp:Button ID="btnag1" runat="server" Text="View Details"  class="theme-btn btn-style-one" OnClick="btnag1_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>

                    <!-- Slide 1 -->
                    <li data-description="Slide Description" data-easein="default" data-easeout="default" data-fsmasterspeed="1500" data-fsslotamount="7" data-fstransition="fade" data-hideafterloop="0" data-hideslideonmobile="off" data-index="rs-1690" data-masterspeed="default" data-param1="" data-param10="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-rotate="0" data-saveperformance="off" data-slotamount="default" data-thumb="images/main-slider/image-2.jpg" data-title="Slide Title" data-transition="parallaxvertical">
                        
                        <img alt="" class="rev-slidebg" data-bgfit="cover" data-bgparallax="10" data-bgposition="center center" data-bgrepeat="no-repeat"  data-kenburns="on" data-duration="10000" data-ease="Linear.easeNone" data-scalestart="100" data-scaleend="120" src="images/main-slider/image-2.jpg"> 

                        <div class="tp-caption" 
                        data-paddingbottom="[0,0,0,0]"
                        data-paddingleft="[0,0,0,0]"
                        data-paddingright="[0,0,0,0]"
                        data-paddingtop="[0,0,0,0]"
                        data-responsive_offset="on"
                        data-type="text"
                        data-height="none"
                        data-whitespace="nowrap"
                        data-width="auto"
                        data-text-align="center"
                        data-hoffset="['10','50','0','0']"
                        data-voffset="['0','0','0','0']"
                        data-x="['right','right','center','center']"
                        data-y="['middle','middle','middle','middle']"
                        data-frames='[{"delay":1500,"speed":1000,"frame":"0","from":"x:50px;opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"x:50px;opacity:0;","ease":"Power3.easeInOut"}]'>
                            <div class="content-box">
                                <div class="inner-box">
                                    <div class="title-box">
                                        <h3>Matruchhaya</h3>
                                        <p>Pal</p>
                                    </div>
                                    <ul class="info-list">
                                        <li><span>2500</span>Area Sq-ft</li>
                                        <li><span>04</span>Bed Room</li>
                                        <li><span>01</span>Kitchen</li>
                                    </ul>
                                    <div class="price">50,00,000</div>
                                    <div class="btn-box"><%--<a href="agent-detail.html" class="theme-btn btn-style-one">CONTACT AGENT</a>--%>
                                        <asp:Button ID="btnag2" runat="server" Text="View Details"  class="theme-btn btn-style-one" OnClick="btnag2_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </section>
    <!--End Main Slider-->

    <!-- Property Search Section -->
    <section class="property-search-section">
        <div class="auto-container">
            <div class="property-search-tabs tabs-box">
                <ul class="tab-buttons">
                    <%--<li data-tab="#sale" class="tab-btn active-btn">Sale</li>--%>
                    <asp:Button data-tab="#sale" ID="btnsale" runat="server" class="tab-btn active-btn" Text="Search" />
                    <%--<asp:Button data-tab="#rent" ID="btnrent" runat="server" class="tab-btn" Text="Rent" />--%>
                    <asp:Label ID="lb" runat="server" Text="0" Visible="false" ></asp:Label>
                    <%--<li data-tab="#rent" class="tab-btn">Rent</li>--%>
                </ul>

                <div class="tabs-content">
                    <!--Tab / Active Tab-->
                    <div class="tab active-tab" id="sale">                         
                        <div class="property-search-form">
                            
                                <div class="row">
                                    <!-- Form Group -->
                                    <div class="form-group col-lg-3 col-md-6 col-sm-12">
                                        <label>Country</label>
                                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                            <ContentTemplate>
                                        <asp:DropDownList ID="drcountry" runat="server" DataSourceID="SqlDataSource2"  DataTextField="coname" DataValueField="coid" AutoPostBack="True">
                                          
                                        </asp:DropDownList>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [country]"></asp:SqlDataSource>
                                    </div>
                                    <div class="form-group col-lg-3 col-md-6 col-sm-12">
                                        <label>State</label>
                                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                            <ContentTemplate>
                                        <asp:DropDownList ID="drst" runat="server"  DataSourceID="SqlDataSource3" DataTextField="sname" DataValueField="sid" AutoPostBack="True">
                                          
                                        </asp:DropDownList>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                         <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [state] WHERE ([coid] = @coid)">
                                                        <SelectParameters>
                                                            <asp:ControlParameter ControlID="drcountry" Name="coid" PropertyName="SelectedValue" Type="Int32" />
                                                        </SelectParameters>
			                                        </asp:SqlDataSource>
                                        
                                    </div>
                                    <div class="form-group col-lg-3 col-md-6 col-sm-12">
                                        <label>city</label>
                                        <%--<select class="custom-select-box">
                                            <option>Any</option>
                                            <option>New York</option>
                                            <option>Los Angeles</option>
                                            <option>Chicago</option>
                                            <option>Houston</option>
                                        </select>--%>
                                        <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                            <ContentTemplate>
                                        <asp:DropDownList ID="drct" runat="server" class="custom-select-box" DataSourceID="SqlDataSource4" DataTextField="ciname" DataValueField="ciid" AutoPostBack="True">
                                            
                                        </asp:DropDownList>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [cit] WHERE ([sid] = @sid)">
                                                        <SelectParameters>
                                                            <asp:ControlParameter ControlID="drst" Name="sid" PropertyName="SelectedValue" Type="Int32" />
                                                        </SelectParameters>
			                                        </asp:SqlDataSource>
                                    </div>

                                    


                                    <div class="form-group col-lg-3 col-md-6 col-sm-12">
                                        <label>Property Type</label>
                                        <%--<select class="custom-select-box">
                                            <option>Any</option>
                                            <option>New York</option>
                                            <option>Los Angeles</option>
                                            <option>Chicago</option>
                                            <option>Houston</option>
                                        </select>--%>
                                        <asp:DropDownList ID="drpt" runat="server" class="custom-select-box">
                                            <%--<asp:ListItem>Any</asp:ListItem>
                                            <asp:ListItem>Surat</asp:ListItem>
                                            <asp:ListItem>Pune</asp:ListItem>
                                            <asp:ListItem>Bangalore</asp:ListItem>--%>
                                        </asp:DropDownList>
                                    </div>

                                    <div class="form-group col-lg-3 col-md-6 col-sm-12">
                                        <label>Property Status</label>
                                        <%--<select class="custom-select-box">
                                            <option>Any</option>
                                            <option>New York</option>
                                            <option>Los Angeles</option>
                                            <option>Chicago</option>
                                            <option>Houston</option>
                                        </select>--%>
                                        <asp:DropDownList ID="drps" runat="server" class="custom-select-box">
                                            <%--<asp:ListItem>Any</asp:ListItem>
                                            <asp:ListItem>Surat</asp:ListItem>
                                            <asp:ListItem>Pune</asp:ListItem>
                                            <asp:ListItem>Bangalore</asp:ListItem>--%>
                                        </asp:DropDownList>
                                    </div>
                                    <!-- Form Group -->
<%--                                    <div class="form-group col-lg-3 col-md-6 col-sm-12">
                                        <label>search by property id</label>--%>
                                        <%--<input type="text" name="text" placeholder="Search ID" required>--%>
                                        <%--<asp:TextBox ID="txtsid1" runat="server" placeholder="Search ID"></asp:TextBox>
                                    </div>--%>

                                    <!-- Form Group -->
<%--                                    <div class="form-group col-lg-3 col-md-6 col-sm-12">
                                        <label>search by Address</label>--%>
                                        <%--<input type="text" name="text" placeholder="Search ID" required>--%>
                                        <%--<asp:TextBox ID="txtad1" runat="server" placeholder="Search ID"></asp:TextBox>
                                    </div>--%>

                                    <!-- Form Group -->
                                    

                                    <div class="form-group col-lg-3 col-md-6 col-sm-12">
                                        <label>Bedroom</label>
                                        <asp:DropDownList ID="drloc1" runat="server" class="custom-select-box">
                                            <asp:ListItem>Any</asp:ListItem>
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                            <asp:ListItem>5</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>

                                    <!-- Form Group -->
                                    <div class="form-group col-lg-3 col-md-6 col-sm-12">
                                        <label>Price from</label>
                                        <%--<select class="custom-select-box">
                                            <option>Any</option>
                                            <option>$1000</option>
                                            <option>$2000</option>
                                            <option>$5000</option>
                                            <option>$10000</option>
                                            <option>$100000</option>
                                        </select>--%>
                                        <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                            <ContentTemplate>
                                       <asp:DropDownList ID="drprcfrm" runat="server" AutoPostBack="true" OnSelectedIndexChanged="drprcfrm_SelectedIndexChanged">
                                            <asp:ListItem>Any</asp:ListItem>
                                           <asp:ListItem>20 lakhs</asp:ListItem>
                                            <asp:ListItem>40 lakhs</asp:ListItem>
                                            <asp:ListItem>60 lakhs</asp:ListItem>
                                            <asp:ListItem>80 lakhs</asp:ListItem>
                                            <asp:ListItem>1 cr</asp:ListItem>
                                            <asp:ListItem>2 cr</asp:ListItem>
                                        
                                        </asp:DropDownList>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                    </div>
                                   
                                    <!-- Form Group -->
                                    <div class="form-group col-lg-3 col-md-6 col-sm-12">
                                        <label>Price To</label>
                                        <%--<select class="custom-select-box">
                                            <option>Any</option>
                                            <option>$1000</option>
                                            <option>$2000</option>
                                            <option>$5000</option>
                                            <option>$10000</option>
                                            <option>$100000</option>
                                        </select>--%>
                                        <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                                            <ContentTemplate>
                                        <asp:DropDownList ID="drprcto" runat="server">
                                            <asp:ListItem>Any</asp:ListItem>
                                            <asp:ListItem>Any</asp:ListItem>
                                           <asp:ListItem>20 lakhs</asp:ListItem>
                                            <asp:ListItem>40 lakhs</asp:ListItem>
                                            <asp:ListItem>60 lakhs</asp:ListItem>
                                            <asp:ListItem>80 lakhs</asp:ListItem>
                                            <asp:ListItem>1 cr</asp:ListItem>
                                            <asp:ListItem>2 cr</asp:ListItem>
                                            
                                            <%--<asp:ListItem>20 lakhs</asp:ListItem>
                                            <asp:ListItem>30 lakhs</asp:ListItem>
                                            <asp:ListItem>40 lakhs</asp:ListItem>
                                            <asp:ListItem>50 lakhs</asp:ListItem>
                                            <asp:ListItem>60 lakhs</asp:ListItem>
                                            <asp:ListItem>70 lakhs</asp:ListItem>
                                            <asp:ListItem>80 lakhs</asp:ListItem>
                                            <asp:ListItem>90 lakhs</asp:ListItem>
                                            <asp:ListItem>1 cr</asp:ListItem>
                                            <asp:ListItem>1.2 cr</asp:ListItem>
                                            <asp:ListItem>1.4 cr</asp:ListItem>
                                            <asp:ListItem>1.6 cr</asp:ListItem>
                                            <asp:ListItem>1.8 cr</asp:ListItem>
                                            <asp:ListItem>2 cr</asp:ListItem>
                                            <asp:ListItem>2.3 cr</asp:ListItem>
                                            <asp:ListItem>2.6 cr</asp:ListItem>
                                            <asp:ListItem>3 cr</asp:ListItem>
                                            <asp:ListItem>3.5 cr</asp:ListItem>
                                            <asp:ListItem>4 cr</asp:ListItem>
                                            <asp:ListItem>5 cr</asp:ListItem>
                                            <asp:ListItem>6 cr</asp:ListItem>
                                            <asp:ListItem>7 cr</asp:ListItem>--%>
                                        </asp:DropDownList>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                    </div>

                                    <!-- Form Group -->
                                    <div class="form-group col-lg-3 col-md-6 col-sm-12">
                                        <%--<button type="submit" class="theme-btn btn-style-two">Search</button>--%>
                                        <asp:Button runat="server" ID="btnsearch" class="theme-btn btn-style-two" Text="Search" BackColor="Black" OnClick="btnsearch_Click" />
                                    </div>
                                </div>

                        </div>
                    </div>
                    <!--Tab -->
                    <div class="tab" id="rent">
                        <div class="property-search-form">
                            
                                <div class="row">
                                    <!-- Form Group -->
                                    <div class="form-group col-lg-3 col-md-6 col-sm-12">
                                        <label>city</label>
                                       <%-- <select class="custom-select-box">
                                            <option>Any</option>
                                            <option>New York</option>
                                            <option>Los Angeles</option>
                                            <option>Chicago</option>
                                            <option>Houston</option>
                                        </select>--%>
                                        <asp:DropDownList ID="drct2" runat="server" class="custom-select-box">
                                            <asp:ListItem>Any</asp:ListItem>
                                            <asp:ListItem>Surat</asp:ListItem>
                                            <asp:ListItem>Pune</asp:ListItem>
                                            <asp:ListItem>Bangalore</asp:ListItem>
                                        </asp:DropDownList>
 
                                    </div>

                                    <!-- Form Group -->
                                    <div class="form-group col-lg-3 col-md-6 col-sm-12">
                                        <label>search by property id</label>
                                        <%--<input type="text" name="text" placeholder="Search ID" required>--%>
                                        <asp:TextBox ID="txtsid2" runat="server" placeholder="Search ID"></asp:TextBox>
                                    </div>

                                    <!-- Form Group -->
                                    <div class="form-group col-lg-3 col-md-6 col-sm-12">
                                        <label>search by Address</label>
                                        <%--<input type="text" name="text" placeholder="Search ID" required>--%>
                                        <asp:TextBox ID="txtad2" runat="server" placeholder="Search ID"></asp:TextBox>
                                    </div>

                                    <!-- Form Group -->
                                    <div class="form-group col-lg-3 col-md-6 col-sm-12">
                                        <label>Location</label>
                                        <%--<select class="custom-select-box">
                                            <option>Any</option>
                                            <option>New York</option>
                                            <option>Los Angeles</option>
                                            <option>Chicago</option>
                                            <option>Houston</option>
                                        </select>--%>
                                        <asp:DropDownList ID="drloc2" runat="server" class="custom-select-box">
                                            <asp:ListItem>Any</asp:ListItem>
                                            <asp:ListItem>Adajan</asp:ListItem>
                                            <asp:ListItem>Pal</asp:ListItem>
                                            <asp:ListItem>Bhatha</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>

                                    <!-- Form Group -->
                                    <div class="form-group col-lg-3 col-md-6 col-sm-12">
                                        <label>country</label>
                                        <%--<select class="custom-select-box">
                                            <option>Any</option>
                                            <option>California</option>
                                            <option>Florida</option>
                                            <option>Georgia</option>
                                            <option>New York</option>
                                            <option>Texas</option>
                                        </select>--%>
                                        <asp:DropDownList ID="drcn2" runat="server" class="custom-select-box">
                                            <asp:ListItem>Any</asp:ListItem>
                                            <asp:ListItem>India</asp:ListItem>
                                            <asp:ListItem>Japan</asp:ListItem>
                                            <asp:ListItem>Russia</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>

                                    <!-- Form Group -->
                                    <div class="form-group col-lg-3 col-md-6 col-sm-12">
                                        <div class="range-slider-one clearfix">
                                            <label>Area</label>
                                            <div class="area-range-slider"></div>
                                            <div class="input"><%--<input type="text" class="property-amount" name="field-name" readonly>--%>
                                                <asp:TextBox runat="server" ID="txtar" class="property-amount" > </asp:TextBox>
                                            </div>
                                            <div class="title">m<sup>2</sup></div>
                                        </div>
                                    </div>

                                    <!-- Form Group -->
                                    <div class="form-group col-lg-3 col-md-6 col-sm-12">
                                        <div class="range-slider-one clearfix">
                                            <label>Price Filter</label>
                                            <div class="price-range-slider"></div>
                                            <div class="input"><%--<input type="text" class="price-amount" name="field-name" readonly>--%>
                                                <asp:TextBox runat="server" ID="txtpf" class="property-amount" > </asp:TextBox>
                                            </div>
                                            <div class="title">INDIAN Rupee</div>
                                        </div>
                                    </div>

                                    <!-- Form Group -->
                                    <div class="form-group col-lg-3 col-md-6 col-sm-12">
                                        <%--<button type="submit" class="theme-btn btn-style-two">Search</button>--%>
                                        <asp:Button runat="server" ID="btnsub2" Text="Search" class="theme-btn btn-style-two" BackColor="Black"/>
                                    </div>
                                </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Property Search Section -->

    <!-- Recent Section -->
    <section class="property-section">
        <div class="auto-container">
            <div class="sec-title">
                <span class="title">FIND YOUR HOUSE IN YOUR CITY</span>
                <h2>PROPERTIES</h2>
            </div>
                <asp:Repeater ID="Rep1" runat="server" DataSourceID="SqlDataSource1">
                    <HeaderTemplate>
                        <div class="row">
                    </HeaderTemplate>
                    <ItemTemplate>
            
                <!-- Property Block -->
                <div class="property-block col-lg-4 col-md-6 col-sm-12">
                    <div class="inner-box">
                        <div class="image-box">
                            <div class="single-item-carousel owl-carousel owl-theme">
                                <figure class="image"><img src='../Admin/img/<%# Eval("pimg") %>' alt=""></figure>
                                <%--<figure class="image"><img src="images/resource/property-2.jpg" alt=""></figure>
                                <figure class="image"><img src="images/resource/property-3.jpg" alt=""></figure>--%>
                            </div>
                            <span class="for"> <%#Eval("PCat") %> </span>
                            <span class="featured">FEATURED</span>
                            <%--<ul class="info clearfix">
                                <li><a href="properties.html"><i class="la la-calendar-minus-o"></i>2 Years Ago</a></li>
                                <li><a href="agent-detail.html"><i class="la la-user-secret"></i>Ghaly Morca</a></li>
                            </ul>--%>
                        </div>
                        <div class="lower-content">
                            <%--<ul class="tags">
                                <li><a href="property-detail.html">Apartment</a>,</li>
                                <li><a href="property-detail.html">Bar</a>,</li>
                                <li><a href="property-detail.html">House</a>,</li>
                            </ul>--%>
                            <h3><a href="PropDetails.aspx?proid=<%#Eval("Pid") %>"><%--Single House Near Orland Park.--%><%#Eval("pname") %></a></h3>
                            <div class="lucation"><i class="la la-map-marker"></i><%#Eval("Paddress") %></div>
                            <ul class="property-info clearfix">
                                <li><i class="flaticon-dimension"></i> <%#Eval("totalsquarefeet") %> Square Feet</li>
                                <li><i class="flaticon-bed"></i><%#Eval("bedroom") %></li>
                                <li><i class="flaticon-car"></i><%#Eval("Kitchen") %></li>
                                <li><i class="flaticon-bathtub"></i><%#Eval("bathroom") %> </li>
                            </ul>
                            <div class="property-price clearfix">
                                <div class="read-more"><a href="PropDetails.aspx?proid=<%#Eval("pid") %>" class="theme-btn">More Detail</a></div>
                                <div class="price"><%#Eval("TotalPrice") %></div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Property Block -->
                <%--<div class="property-block col-lg-4 col-md-6 col-sm-12">
                    <div class="inner-box">
                        <div class="image-box">
                            <figure class="image"><img src="images/resource/property-2.jpg" alt=""></figure>
                            <span class="for">FOR SALE</span>
                            <span class="featured">FEATURED</span>
                            <ul class="option-box">
                                <li><a href="images/resource/property-1.jpg" class="lightbox-image" data-fancybox="property"><i class="la la-camera"></i></a></li>
                                <li><a href="#"><i class="la la-heart"></i></a></li>
                                <li><a href="#"><i class="la la-retweet"></i></a></li>
                            </ul>
                            <ul class="info clearfix">
                                <li><a href="properties.html"><i class="la la-calendar-minus-o"></i>2 Years Ago</a></li>
                                <li><a href="agent-detail.html"><i class="la la-user-secret"></i>Ghaly Morca</a></li>
                            </ul>
                        </div>
                        <div class="lower-content">
                            <ul class="tags">
                                <li><a href="property-detail.html">Apartment</a>,</li>
                                <li><a href="property-detail.html">Bar</a>,</li>
                                <li><a href="property-detail.html">House</a>,</li>
                            </ul>
                            <h3><a href="property-detail.html">Apartment Morden 1243, W No.</a></h3>
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
                <div class="property-block col-lg-4 col-md-6 col-sm-12">
                    <div class="inner-box">
                        <div class="image-box">
                            <figure class="image"><img src="images/resource/property-3.jpg" alt=""></figure>
                            <span class="for">FOR SALE</span>
                            <span class="featured">FEATURED</span>
                            <div class="video-link"><a href="https://www.youtube.com/watch?v=Fvae8nxzVz4" data-fancybox="gallery" data-caption=""><i class="icon la la-play-circle" aria-hidden="true"></i></a></div>
                            <ul class="info clearfix">
                                <li><a href="properties.html"><i class="la la-calendar-minus-o"></i>2 Years Ago</a></li>
                                <li><a href="agent-detail.html"><i class="la la-user-secret"></i>Ghaly Morca</a></li>
                            </ul>
                        </div>
                        <div class="lower-content">
                            <ul class="tags">
                                <li><a href="property-detail.html">Apartment</a>,</li>
                                <li><a href="property-detail.html">Bar</a>,</li>
                                <li><a href="property-detail.html">House</a>,</li>
                            </ul>
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
            <div class="load-more-btn text-center">
                <a href="PropertyAll.aspx" class="theme-btn btn-style-two">Load More</a>
            </div>
                        
                             </FooterTemplate>

    </asp:Repeater>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Top 6 [Pid],[TotalPrice], [Pname], [Pdesc], [Ptype], [PCat], [Bedroom], [Bathroom], [Kitchen], [TotalSquareFeet], [PerFeetPrice], [Paddress], [OwnerType], [Pimg], [Status] FROM [PropertyOwner] WHERE ([Status] = @Status)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lb" PropertyName="Text" DefaultValue="0" Name="Status" Type="Int32"></asp:ControlParameter>
                </SelectParameters>
            </asp:SqlDataSource>
   
             </div>
                   
    </section>
    
    
    <!--End Property Section -->



    <!-- About Us -->
    <section class="about-us" style="background-image: url(images/background/1.jpg);">
        <div class="auto-container">
            <div class="row">
                <!-- Info Column -->
                <div class="info-column col-xl-6 col-lg-12 col-md-12 col-sm-12">
                    <div class="inner-column">
                        <div class="sec-title light">
                            <span class="title">THE BEST PLACE TO FIND THE HOUSE YOU WANT</span>
                            <h2>WELLCOME TO UNIVERSAL BUILDER - REAL ESTATE</h2>
                        </div>

                        <div class="text"><strong>OURLAND REAL ESTATE</strong> is the best place for elit, sed do eiusmod tempor dolor sit amet, conse ctetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et lorna aliquatd minimam, quis nostrud exercitation oris nisi ut aliquip ex ea. </div>

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
                                    <h4><a href="AddPropertyOwner.aspx">Rent Property</a></h4>
                                    <div class="text">We have the best properties Sale, Buy, and Rent Dealers.</div>
                                </div>
                            </div>

                            <!-- Feature Block -->
                            <div class="feature-block col-lg-6 col-md-6 col-sm-12">
                                <div class="inner-box">
                                    <span class="icon flaticon-house-5"></span>
                                    <h4><a href="about.html">Real Estate Kit</a></h4>
                                    <div class="text">We have the best properties Sale, Buy, and Rent Dealers.</div>
                                </div>
                            </div>

                            <!-- Feature Block -->
                            <div class="feature-block col-lg-6 col-md-6 col-sm-12">
                                <div class="inner-box">
                                    <span class="icon flaticon-apartment"></span>
                                    <h4><a href="AddPropertyOwner.aspx">Sale Property</a></h4>
                                    <div class="text">We have the best properties Sale, Buy, and Rent Dealers.</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Video Column -->
                <div class="video-column col-xl-6 col-lg-7 col-md-12 col-sm-12">
                    <div class="inner-column">
                        <div class="video-box">
                            <figure class="image"><img src="images/resource/image-2.jpg" alt=""></figure>
                            <a href="https://www.youtube.com/watch?v=Fvae8nxzVz4" class="play-now" data-fancybox="gallery" data-caption=""><i class="icon la la-play" aria-hidden="true"></i><span class="ripple"></span></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- About Us -->

    <!--Popular Places Section-->
    <section class="popular-places-section">
        <div class="auto-container">
            <div class="sec-title">
                <span class="title">FIND YOUR DREAM HOUSE IN YOUR CITY</span>
                <h2>MOST POPULAR PLACES</h2>
            </div>
    
            <div class="masonry-items-container clearfix">
                <!-- Portfolio Item -->
                <div class="popular-item masonry-item medium-item">
                    <div class="image-box">
                        <figure class="image"><a href="properties.html"> <img src="images/gallery/1-1.jpg" alt=""></a></figure>
                        <div class="info-box">
                            <%--<span class="category">Apartment</span>--%>
                            <h3 class="place"><a href="SearchCity.aspx?ciid=1">Surat City</a></h3>
                            <div class="properties">
                                <asp:Label ID="Label1" runat="server" Text=""></asp:Label> Properties</div>
                            <div class="view-all"><a href="SearchCity.aspx?ciid=1">View All</a></div>
                        </div>
                    </div>
                </div>

                <!-- Portfolio Item -->
                <div class="popular-item masonry-item medium-item">
                    <div class="image-box">
                        <figure class="image"><img src="images/gallery/1-2.jpg" alt=""></figure>
                        <div class="info-box">
                            <%--<span class="category">House</span>--%>
                            <h3 class="place"><a href="SearchCity.aspx?ciid=2">Ahemdabad City</a></h3>
                            <div class="properties"><asp:Label ID="Label2" runat="server" Text=""></asp:Label> Properties</div>
                            <div class="view-all"><a href="SearchCity.aspx?ciid=2">View All</a></div>
                        </div>
                    </div>
                </div>

                <!-- Portfolio Item -->
                <div class="popular-item masonry-item medium-item">
                    <div class="image-box">
                        <figure class="image"><img src="images/gallery/1-3.jpg" alt=""></figure>
                        <div class="info-box">
                           <%-- <span class="category">Restaurant</span>--%>
                            <h3 class="place"><a href="SearchCity.aspx?ciid=3">Valsad City</a></h3>
                            <div class="properties"><asp:Label ID="Label3" runat="server" Text=""></asp:Label>  Properties</div>
                            <div class="view-all"><a href="SearchCity.aspx?ciid=3">View All</a></div>
                        </div>
                    </div>
                </div>

                <!-- Portfolio Item -->
                <div class="popular-item masonry-item small-item">
                    <div class="image-box">
                        <figure class="image"><img src="images/gallery/1-4.jpg" alt=""></figure>
                        <div class="info-box">
                            <%--<span class="category">Farm</span>--%>
                            <h3 class="place"><a href="SearchCity.aspx?ciid=7">Mumbai City</a></h3>
                            <div class="properties"><asp:Label ID="Label4" runat="server" Text=""></asp:Label>  Properties</div>
                            <div class="view-all"><a href="SearchCity.aspx?ciid=7">View All</a></div>
                        </div>
                    </div>
                </div>


                <!-- Portfolio Item -->
                <div class="popular-item masonry-item small-item">
                    <div class="image-box">
                        <figure class="image"><img src="images/gallery/1-5.jpg" alt=""></figure>
                        <div class="info-box">
                            <%--<span class="category">Villa</span>--%>
                            <h3 class="place"><a href="SearchCity.aspx?ciid=8">Pune City</a></h3>
                            <div class="properties"><asp:Label ID="Label5" runat="server" Text=""></asp:Label>  Properties</div>
                            <div class="view-all"><a href="SearchCity.aspx?ciid=8">View All</a></div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Load More -->
            <%--<div class="load-more-btn text-center">
                <a href="#" class="theme-btn btn-style-two">Load More</a>
            </div>--%>
        </div>
    </section>
    <!--Portfolio Section-->

    <!-- Call To Action -->
    <section class="call-to-action" style="background-image: url(images/background/2.jpg);">
        <div class="auto-container">
            <div class="clearfix">
                <!-- Title Column -->
                <div class="title-column">
                    <div class="sec-title light">
                        <span class="title">IN FEW SECONDS WITH WILLES</span>
                        <h2>BUY OR SALE YOUR HOUSE</h2>
                    </div>
                </div>

                <!-- Button Column -->
                <div class="button-column">
                    <a href="AddPropertyOwner.aspx" class="theme-btn btn-style-three">SUBMIT PROPERTY</a>
                    <a href="PropertyAll.aspx" class="theme-btn btn-style-one">BROWSE PROPERTY</a>
                </div>
            </div>
        </div>
    </section>
    <!--End Call To Action -->

    <!-- Agents Section -->
    <%--<div class="agents-section">
        <div class="auto-container">
            <div class="sec-title">
                <span class="title">MEET OUR PROFESSIONAL AGENTS</span>
                <h2>MEET OUR AGENTS</h2>
            </div>

            <div class="agents-carousel owl-carousel owl-theme">
                <!-- Agent Block -->
                <div class="agent-block">
                    <div class="inner-box">
                        <div class="image-box">
                            <figure class="image"><a href="agent-detail.html"><img src="images/resource/agent-1.jpg" alt=""></a></figure>
                            <ul class="social-links">
                                <li><a href="#"><i class="la la-facebook-f"></i></a></li>
                                <li><a href="#"><i class="la la-twitter"></i></a></li>
                                <li><a href="#"><i class="la la-google-plus"></i></a></li>
                                <li><a href="#"><i class="la la-dribbble"></i></a></li>
                                <li><a href="#"><i class="la la-pinterest"></i></a></li>
                            </ul>
                        </div>
                        <div class="info-box">
                            <h4 class="name"><a href="agent-detail.html">Magda Anoma</a></h4>
                            <span class="designation">Real Estate Agent</span>
                        </div>
                    </div>
                </div>

                <!-- Agent Block -->
                <div class="agent-block">
                    <div class="inner-box">
                        <div class="image-box">
                            <figure class="image"><a href="agent-detail.html"><img src="images/resource/agent-2.jpg" alt=""></a></figure>
                            <ul class="social-links">
                                <li><a href="#"><i class="la la-facebook-f"></i></a></li>
                                <li><a href="#"><i class="la la-twitter"></i></a></li>
                                <li><a href="#"><i class="la la-google-plus"></i></a></li>
                                <li><a href="#"><i class="la la-dribbble"></i></a></li>
                                <li><a href="#"><i class="la la-pinterest"></i></a></li>
                            </ul>
                        </div>
                        <div class="info-box">
                            <h4 class="name"><a href="agent-detail.html">Badoy Ghaly</a></h4>
                            <span class="designation">Real Estate Agent</span>
                        </div>
                    </div>
                </div>

                <!-- Agent Block -->
                <div class="agent-block">
                    <div class="inner-box">
                        <div class="image-box">
                            <figure class="image"><a href="agent-detail.html"><img src="images/resource/agent-3.jpg" alt=""></a></figure>
                            <ul class="social-links">
                                <li><a href="#"><i class="la la-facebook-f"></i></a></li>
                                <li><a href="#"><i class="la la-twitter"></i></a></li>
                                <li><a href="#"><i class="la la-google-plus"></i></a></li>
                                <li><a href="#"><i class="la la-dribbble"></i></a></li>
                                <li><a href="#"><i class="la la-pinterest"></i></a></li>
                            </ul>
                        </div>
                        <div class="info-box">
                            <h4 class="name"><a href="agent-detail.html">Lora Ptirayto</a></h4>
                            <span class="designation">Real Estate Agent</span>
                        </div>
                    </div>
                </div>

                <!-- Agent Block -->
                <div class="agent-block">
                    <div class="inner-box">
                        <div class="image-box">
                            <figure class="image"><a href="agent-detail.html"><img src="images/resource/agent-1.jpg" alt=""></a></figure>
                            <ul class="social-links">
                                <li><a href="#"><i class="la la-facebook-f"></i></a></li>
                                <li><a href="#"><i class="la la-twitter"></i></a></li>
                                <li><a href="#"><i class="la la-google-plus"></i></a></li>
                                <li><a href="#"><i class="la la-dribbble"></i></a></li>
                                <li><a href="#"><i class="la la-pinterest"></i></a></li>
                            </ul>
                        </div>
                        <div class="info-box">
                            <h4 class="name"><a href="agent-detail.html">Magda Anoma</a></h4>
                            <span class="designation">Real Estate Agent</span>
                        </div>
                    </div>
                </div>

                <!-- Agent Block -->
                <div class="agent-block">
                    <div class="inner-box">
                        <div class="image-box">
                            <figure class="image"><a href="agent-detail.html"><img src="images/resource/agent-2.jpg" alt=""></a></figure>
                            <ul class="social-links">
                                <li><a href="#"><i class="la la-facebook-f"></i></a></li>
                                <li><a href="#"><i class="la la-twitter"></i></a></li>
                                <li><a href="#"><i class="la la-google-plus"></i></a></li>
                                <li><a href="#"><i class="la la-dribbble"></i></a></li>
                                <li><a href="#"><i class="la la-pinterest"></i></a></li>
                            </ul>
                        </div>
                        <div class="info-box">
                            <h4 class="name"><a href="agent-detail.html">Badoy Ghaly</a></h4>
                            <span class="designation">Real Estate Agent</span>
                        </div>
                    </div>
                </div>

                <!-- Agent Block -->
                <div class="agent-block">
                    <div class="inner-box">
                        <div class="image-box">
                            <figure class="image"><a href="agent-detail.html"><img src="images/resource/agent-3.jpg" alt=""></a></figure>
                            <ul class="social-links">
                                <li><a href="#"><i class="la la-facebook-f"></i></a></li>
                                <li><a href="#"><i class="la la-twitter"></i></a></li>
                                <li><a href="#"><i class="la la-google-plus"></i></a></li>
                                <li><a href="#"><i class="la la-dribbble"></i></a></li>
                                <li><a href="#"><i class="la la-pinterest"></i></a></li>
                            </ul>
                        </div>
                        <div class="info-box">
                            <h4 class="name"><a href="agent-detail.html">Lora Ptirayto</a></h4>
                            <span class="designation">Real Estate Agent</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>--%>
    <!-- End Agents Section -->

    <!--Clients Section-->
    <%--<section class="clients-section">
        <div class="auto-container">
            <div class="sponsors-outer">
                <!--Sponsors Carousel-->
                <ul class="sponsors-carousel owl-carousel owl-theme">
                    <li class="slide-item"><figure class="image-box"><a href="#"><img src="images/clients/1-1.png" alt=""></a></figure></li>
                    <li class="slide-item"><figure class="image-box"><a href="#"><img src="images/clients/1-2.png" alt=""></a></figure></li>
                    <li class="slide-item"><figure class="image-box"><a href="#"><img src="images/clients/1-3.png" alt=""></a></figure></li>
                    <li class="slide-item"><figure class="image-box"><a href="#"><img src="images/clients/1-4.png" alt=""></a></figure></li>
                    <li class="slide-item"><figure class="image-box"><a href="#"><img src="images/clients/1-1.png" alt=""></a></figure></li>
                    <li class="slide-item"><figure class="image-box"><a href="#"><img src="images/clients/1-2.png" alt=""></a></figure></li>
                    <li class="slide-item"><figure class="image-box"><a href="#"><img src="images/clients/1-3.png" alt=""></a></figure></li>
                    <li class="slide-item"><figure class="image-box"><a href="#"><img src="images/clients/1-4.png" alt=""></a></figure></li>
                </ul>
            </div>
        </div>
    </section>--%>
    <!--End Clients Section-->

    <!-- News Section -->
    <section class="news-section">
        <div class="auto-container">
            <div class="sec-title">
                <span class="title">ALL ABOUT LATEST WILLIA UPDATES</span>
                <h2>NEWS & STORIES</h2>
            </div>

            <div class="row">
                <!-- News Block -->
                <div class="news-block col-lg-4 col-md-6 col-sm-12">
                    <div class="inner-box">
                        <div class="image-box">
                            <div class="single-item-carousel owl-carousel owl-theme">
                                <figure class="image"><%--<a href="blog-detail.html">--%><img src="images/resource/news-1.jpg" alt=""></a></figure>
                                <figure class="image"><%--<a href="blog-detail.html">--%><img src="images/resource/news-2.jpg" alt=""></a></figure>
                                <figure class="image"><%--<a href="blog-detail.html">--%><img src="images/resource/news-3.jpg" alt=""></a></figure>
                            </div>
                        </div>
                        <div class="lower-content">
                            <ul class="info">
                                <li>by <span>UNIVERSAL BUILDERS</span></li>
                                <li>JANUARY 14, 2019</li>
                            </ul>
                            <h3><%--<a href="blog-detail.html">--%>Dazzling retreat resort with the Modern Design</a></h3>
                        </div>
                    </div>
                </div>

                <!-- News Block -->
                <div class="news-block col-lg-4 col-md-6 col-sm-12">
                    <div class="inner-box">
                        <div class="image-box">
                            <figure class="image"><a href="images/resource/news-2.jpg" class="lightbox-image" data-fancybox="images"><img src="images/resource/news-2.jpg" alt=""></a></figure>
                            <div class="icon-box"><span class="icon la la-photo"></span></div>
                        </div>
                        <div class="lower-content">
                            <ul class="info">
                                <li>by <span>UNIVERSAL BUILDERS</span></li>
                                <li>JANUARY 14, 2019</li>
                            </ul>
                            <h3><%--<a href="blog-detail.html">--%>Independent apartment with modern design</a></h3>
                        </div>
                    </div>
                </div>

                <!-- News Block -->
                <div class="news-block col-lg-4 col-md-6 col-sm-12">
                    <div class="inner-box">
                        <div class="image-box">
                            <figure class="image"><a href="https://www.youtube.com/watch?v=oYN4RStp_t0" class="lightbox-image" data-fancybox="video"><img src="images/resource/news-3.jpg" alt=""></a></figure>
                            <div class="icon-box"><span class="icon la la-play"></span></div>
                        </div>
                        <div class="lower-content">
                            <ul class="info">
                                <li>by <span>UNIVERSAL BUILDERS</span></li>
                                <li>JANUARY 14, 2019</li>
                            </ul>
                            <h3><%--<a href="blog-detail.html">--%>Modron apartment adjacent to CEO park</a></h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--End News Section -->

    <%--<!-- Main Footer -->
    <footer class="main-footer" style="background-image: url(images/background/3.jpg);">
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
                                    <button type="submit" class="theme-btn btn-style-four">Submit</button>
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
                    <div class="footer-nav">
                        <ul class="clearfix">
                           <li><a href="index-2.html">Home</a></li> 
                           <li><a href="properties.html">Properties</a></li> 
                           <li><a href="properties.html">Agencies</a></li> 
                           <li><a href="agents.html">Agent</a></li> 
                           <li><a href="blog.html">Blogs</a></li> 
                           <li><a href="contact.html">Contact</a></li> 
                        </ul>
                    </div>
                                                                      
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
    
    <%--</form>--%>
    
<%--</body>

<!-- Mirrored from expert-themes.com/html/ourland/ by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 17 Jan 2019 05:22:18 GMT -->
</html>--%>
<%--</body>
        </html>--%>
</asp:Content>

