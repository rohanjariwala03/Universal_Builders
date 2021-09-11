<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.master" AutoEventWireup="true" CodeFile="AuctionBook.aspx.cs" Inherits="User_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
    <meta http-equiv="refresh" content="500"> 
<div class="page-wrapper">
    <!-- Preloader -->
    <div class="preloader"></div>
    
    <!--Page Title-->
    <section class="page-title" style="background-image:url(images/background/16.jpg);">
        <div class="auto-container">
            <div class="inner-container clearfix">
                <h1>Booking</h1>
                <ul class="bread-crumb clearfix">
                    <li><a href="Index.aspx">Home</a></li>
                    <li>Booking</li>
                </ul>
            </div>
        </div>
    </section>
    <!--End Page Title-->

    <section class="property-modern-view">
        <div class="auto-container">

            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                    
            

            <!-- Property Block -->
           
            <div class="property-block-four">
                
                <div class="row">
                    
                    <div class="image-column col-lg-6 col-md-12 col-sm-12">
                        <div class="inner-column">
                            <figure class="image"><a href="images/resource/property-9.jpg" class="lightbox-image" data-fancybox="properties"><asp:Image ID="Image1" runat="server" /></a></figure>
                            <ul class="property-info clearfix">
                                <li><i class="flaticon-dimension"></i><asp:Label ID="lblsqft" runat="server" Text=""></asp:Label>Sq-Ft</li>
                                <li><i class="flaticon-bed"></i><asp:Label ID="lblbed" runat="server" Text=""></asp:Label></li>
                                <li><i class="flaticon-car"></i><asp:Label ID="lblkit" runat="server" Text=""></asp:Label></li>
                                <li><i class="flaticon-bathtub"></i><asp:Label ID="lblbath" runat="server" Text=""></asp:Label></li>
                            </ul>
                        </div>
                    </div>

                    <div class="content-column col-lg-6 col-md-12 col-sm-12">
                        <div class="inner-column">
                            <span class="status">For Auction</span>
                            <br />
                            
                            <h3><a href="property-detail.html"><asp:Label ID="lblnam" runat="server" Text=""></asp:Label></a></h3>
                            <%--<div class="thumb"><img src="images/resource/thumb-11.jpg" alt=""></div>--%>
                            <div class="pull-right">
                                    <div class="form-group no-margin">
                                        
                                        <asp:Button ID="btndetails" runat="server" Text="View Details" class="theme-btn btn-style-one"  />
                                        
                                    </div>
                                </div>  
                            <%--<div class="price"><asp:Label ID="Label1" runat="server" Text="Bidding"></asp:Label></div>--%>
                            <div class="price"><i class="la la-money"></i><asp:Label ID="lblprice" runat="server" Text=""></asp:Label></div>                            
                            <div class="location"><i class="la la-map-marker"></i><asp:Label ID="lbladd" runat="server" Text=""></asp:Label></div>
                            <div class="text"><asp:Label ID="lbldesc" runat="server" Text=""></asp:Label></div>

                            <div class="price">Token Amount:<i class="la la-money"></i><asp:Label ID="lbltoken" runat="server" Text="9000"></asp:Label></div>
                            <div class="price"><asp:Button ID="btnpay" runat="server" Text="Pay Now" class="theme-btn btn-style-one"  OnClick="btnpay_Click" /></div>
                        </div>
                    </div>
                    
                </div>
                    
            </div>
            
        </div>
            
    </section>

    
    
    <!--End Propery Modern View -->

    
</div>
<!--End pagewrapper-->


<!-- Mirrored from expert-themes.com/html/ourland/property-modern-view.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 17 Jan 2019 05:26:11 GMT -->



</asp:Content>