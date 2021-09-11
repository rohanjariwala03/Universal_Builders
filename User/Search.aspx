<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="User_Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<%--<form id="Form1" runat="server">--%>

<div class="page-wrapper">
    <!-- Preloader -->
    <div class="preloader"></div>
    
        <!-- Main Header-->
    
    <!--Page Title-->
    <section class="page-title" style="background-image:url(images/background/16.jpg);">
        <div class="auto-container">
            <div class="inner-container clearfix">
                <h1>Property List View</h1>
                <ul class="bread-crumb clearfix">
                    <li><a href="Index.aspx">Home</a></li>
                    <li>Property</li>
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
                                <span class="title">FIND YOUR HOUSE IN YOUR CITY</span>
                                <h2>PROPERTY LIST</h2>
                            </div>

                            <%--<ul class="filter-options">
                                <li class="active"><a href="property-list-view.html"><span class="la la-th-list"></span></a></li>
                                <li><a href="property-grid-view.html"><span class="la la-th-large"></span></a></li>
                            </ul>--%>
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

                        
                        <asp:Label ID="Label1" runat="server" Text="Sorry.....No Property Available" Font-Size="XX-Large" Font-Bold="True" ForeColor="#999999" Visible="False"></asp:Label>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ></asp:SqlDataSource>
                        <asp:Label ID="l1" runat="server"></asp:Label> 
                        
                        
                    </div>
                </div>

                <!--Sidebar Side-->
                

                        <!-- Categories -->
                        

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
                        </div>--%>

                        <!-- Recent Properties -->
                        <%--<div class="sidebar-widget recent-properties">
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
                                </article>--%>
                            </div>
                        </div>
                    </aside>
                </div>
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



</asp:Content>