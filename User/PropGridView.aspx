<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.master" AutoEventWireup="true" CodeFile="PropGridView.aspx.cs" Inherits="User_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
   <%-- <form id="Form1" runat="server">--%>
<div class="page-wrapper">
    <!-- Preloader -->
    <div class="preloader"></div>
    

    <!--Page Title-->
    <section class="page-title" style="background-image:url(images/background/16.jpg);">
        <div class="auto-container">
            <div class="inner-container clearfix">
                <h1>Property Grid View</h1>
                <ul class="bread-crumb clearfix">
                    <li><a href="/Universal%20Builders/User/Index.aspx">Home</a></li>
                    <li>Property Grid View</li>
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
                    <div class="property-grid-view">
                        <div class="upper-box clearfix">
                            <div class="sec-title">
                                <span class="title">FIND YOUR HOUSE IN YOUR CITY</span>
                                <h2>PROPERTY GRID</h2>
                            </div>

                            <ul class="filter-options">
                                <li><a href="PropertyListview.aspx"><span class="la la-th-list"></span></a></li>
                                <li class="active"><a href="/Universal%20Builders/User/PropGridView.aspx"><span class="la la-th-large"></span></a></li>
                            </ul>
                        </div>

                        <div class="row">
                            <!-- Property Block -->
                            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                        <ItemTemplate>

                            <div class="property-block col-lg-6 col-md-12 col-sm-12">
                                <div class="inner-box">
                                    <div class="image-box">
                                        <figure class="image"><img src='../Admin/img/<%# Eval("pimg") %>' alt=""></figure>
                                        <span class="for"><%#Eval("PCat") %></span>
                                        <span class="featured">FEATURED</span>
                                        <ul class="option-box">
                                            <li><a href="images/resource/property-1.jpg" class="lightbox-image" data-fancybox="property"><i class="la la-camera"></i></a></li>
                                            <li><a href="#"><i class="la la-heart"></i></a></li>
                                            <li><a href="#"><i class="la la-retweet"></i></a></li>
                                        </ul>
                                        
                                    </div>
                                    <div class="lower-content">
                                        
                                        <div class="thumb"><img src="images/resource/thumb-5.jpg" alt=""></div>
                                        <h3><a href="PropDetails.aspx?proid=<%#Eval("Pid") %>"><%#Eval("pname") %></h3>
                                        <div class="lucation"><i class="la la-map-marker"></i> Orland Park, IL 35785, Chicago, United State</div>
                                        <ul class="property-info clearfix">
                                            <li><i class="flaticon-dimension"></i> <%#Eval("totalsquarefeet") %> Square Feet</li>
                                            <li><i class="flaticon-bed"></i><%#Eval("Bedroom") %></li>
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

                             </ItemTemplate>
                            </asp:Repeater>

                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT Top 3 [Pname], [Pdesc], [Ptype], [PCat], [Bedroom], [Pid], [Bathroom], [Kitchen], [TotalSquareFeet], [PerFeetPrice], [TotalPrice], [Paddress], [OwnerType], [Pimg], [Pvideo], [Cid], [sid], [Ciid], [Status] FROM [PropertyOwner]"></asp:SqlDataSource>


                            <!-- Property Block -->
                            
                        </div>
                        
                        <!-- Pagination -->
                        <%--<div class="styled-pagination">
                            <ul class="clearfix">
                                <li class="prev"><a href="#"><span>Prev</span></a></li>
                                <li class="active"><a href="#"><span>1</span></a></li>
                                <li ><a href="#"><span>2</span></a></li>
                                <li><a href="#"><span>3</span></a></li>
                                <li><a href="#"><span>4</span></a></li>
                                <li class="next"><a href="#"><span>Next</span></a></li>
                            </ul>
                        </div>--%>
                    </div>
                </div>

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
                            <!-- End Form -->
                        </div>


                         <!-- Categories -->
                        <div class="sidebar-widget categories">
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
    </section>
    --%><!--End Clients Section--> 

    <%--<!-- Main Footer -->
    <footer class="main-footer style-three">
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

       <%-- </form>--%>
</asp:Content>

