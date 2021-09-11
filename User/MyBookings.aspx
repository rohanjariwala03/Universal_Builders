<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.master" AutoEventWireup="true" CodeFile="MyBookings.aspx.cs" Inherits="User_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    

   <%-- <form id="Form1" runat="server">--%>

<div class="page-wrapper">
    <!-- Preloader -->
    <div class="preloader"></div>
    
        <!-- Main Header-->
    
    <!--End Main Header -->

    <!--Page Title-->
    <section class="page-title" style="background-image:url(images/background/16.jpg);">
        <div class="auto-container">
            <div class="inner-container clearfix">
                <h1>My Bookings</h1>
                <ul class="bread-crumb clearfix">
                    <li><a href="Index.aspx">Home</a></li>
                    <li>My Property Bookings</li>
                </ul>
            </div>
        </div>
    </section>
    <!--End Page Title-->

    <!-- Sidebar Page Container -->
    <div class="sidebar-page-container">
        <div class="auto-container">
            <div class="row clearfix">
                <!--Content Side-->
                <div class="content-side col-lg-8 col-md-12 col-sm-12">
                    <div class="property-list-view">
                        <div class="upper-box clearfix">
                            <div class="sec-title">
                                <%--<span class="title">FIND YOUR HOUSE IN YOUR CITY</span>--%>
                                <h2>My Bookings</h2>
                            </div>
                            <%--<ul class="filter-options">
                                <li class="active"><a href="propertyListview.aspx"><span class="la la-th-list"></span></a></li>
                                <li><a href="PropGridView.aspx"><span class="la la-th-large"></span></a></li>
                            </ul>--%>
                        </div>


                      <div class="dashboard">
	                    <div class="container-fluid">
	                        <div class="content-area">
                                <br />
                                <br />
                               <center><h1> <asp:Label ID="Label1" runat="server" Text="No Property Booked" Visible="false"  ForeColor="#999999"></asp:Label></h1></center>
                                <br />
                                <br />
                             </div>
                         </div>
                      </div>

                        <!-- Property Block -->

                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                        <div class="property-block-three">
                            <div class="inner-box">
                                <div class="row clearfix">
                                    <div class="column col-xl-6 col-lg-12 col-md-12 col-sm-12">
                                        <div class="image-box">
                                            <figure class="image"><img src='../Admin/img/<%# Eval("pimg") %>' alt=""></figure>
                                            <span class="for"><%#Eval("PCat") %></span>
                                            <span class="featured">FEATURED</span>
                                            <%--<ul class="option-box">
                                                <li><a href="images/resource/property-1.jpg" class="lightbox-image" data-fancybox="property"><i class="la la-camera"></i></a></li>
                                                <li><a href="#"><i class="la la-heart"></i></a></li>
                                                <li><a href="#"><i class="la la-retweet"></i></a></li>
                                            </ul>--%>
                                            <%--<ul class="info clearfix">
                                                <li><a href="properties.html"><i class="la la-calendar-minus-o"></i>2 Years Ago</a></li>
                                            </ul>--%>
                                        </div>
                                    </div>

                                    <div class="column col-xl-6 col-lg-12 col-md-12 col-sm-12">
                                        <div class="lower-content">
                                            <%--<ul class="tags">
                                                <li><a href="property-detail.html">Apartment</a>,</li>
                                                <li><a href="property-detail.html">Bar</a>,</li>
                                                <li><a href="property-detail.html">House</a>,</li>
                                            </ul>--%>
                                            <%--<div class="thumb"><img src="images/resource/thumb-5.jpg" alt=""></div>--%>
                                            <h3><a href="PropDetails.aspx?proid=<%#Eval("Pid") %>"><%#Eval("pname") %></a></h3>
                                            <div class="lucation"><i class="la la-map-marker"></i><%#Eval("Paddress") %></div>
                                            <ul class="property-info clearfix">
                                                <li><i class="flaticon-dimension"></i> <%#Eval("totalsquarefeet") %> Square Feet</li>
                                                <li><i class="flaticon-bed"></i> <%#Eval("Bedroom") %></li>
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
                            </div>
                        </div>

                            </ItemTemplate>
                            </asp:Repeater>

                        
                        
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" >
                             
                        </asp:SqlDataSource>

                        
                        <asp:Label ID="lb" runat="server" Text="0" Visible="false"></asp:Label>
                    </div>
                </div>

                <!--Sidebar Side-->
                
            </div>
        </div>
    </div>
    <!-- End Sidebar Container -->


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

    <!-- End Main Footer -->

</div>
<!--End pagewrapper-->

<!-- Color Palate / Color Switcher -->
<!-- End Color Switcher -->

<%--<script src="js/jquery.js"></script> 
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
<script src="js/color-settings.js"></script>--%>
    <%--</form>--%>






</asp:Content>

