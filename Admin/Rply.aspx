<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Rply.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from expert-themes.com/html/ourland/admin/messages.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 17 Jan 2019 05:27:56 GMT -->
<head>
</head>

<body>

<%--<div class="page-wrapper">

    <!-- Preloader -->
    <div class="preloader"></div>

    <!-- Header Span -->
    <span class="header-span"></span>--%>

    <!-- Main Header-->
   <%-- <header class="main-header">
        <div class="main-box clearfix">
        	<!-- Logo Box -->
            <div class="logo-box">
                <div class="logo"><a href="../index-2.html"><img src="images/logo-small.png" alt="" title=""></a></div>
            </div>

            <!-- Upper Right-->
            <div class="upper-right">
                <ul class="clearfix">
                    <li class="dropdown option-box">
                        <a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"> <img src="images/resource/thumb-1.jpg" alt="avatar" class="thumb">My Account</a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="dashboard.html">Dashboard</a>
                            <a class="dropdown-item" href="messages.html">Messages</a>
                            <a class="dropdown-item" href="bookings.html">Bookings</a>
                            <a class="dropdown-item" href="my-profile.html">My profile</a>
                            <a class="dropdown-item" href="../index-2.html">Log out</a>
                        </div>
                    </li>
                    <li class="submit-property">
                    	<a href="submit-property.html" class="theme-btn btn-style-one">Submit Property <i class="pe-7s-up-arrow"></i></a>
                    </li>
                    <li class="nav-toggler">
                    	<button class="toggler-btn nav-btn"><span class="bar bar-one"></span><span class="bar bar-two"></span><span class="bar bar-three"></span></button>
                    </li>
                </ul>
            </div>
        </div>
        <!--End Header Lower-->
    </header>--%>
    <!--End Main Header -->
    
    <!-- Hidden Bar -->
   <%-- <section class="hidden-bar">
        <div class="dashboard-inner">
        	<div class="cross-icon"><span class="pe-7s-close-circle"></span></div>
        	<ul class="navigation">
	            <li><a href="dashboard.html"><i class="pe-7s-culture"></i> Dashboard</a></li>
	            <li class="active"><a href="messages.html"><i class="pe-7s-mail"></i> Messages <span class="tag">6</span></a></li>
	            <li><a href="bookings.html"><i class="pe-7s-date"></i>Bookings</a></li>
	            <li><a href="my-properties.html"><i class="pe-7s-diamond"></i>My Properties</a></li>
	            <li><a href="my-invoices.html"><i class="pe-7s-note2"></i>My Invoices</a></li>
	            <li><a href="favorited-properties.html"><i class="pe-7s-like2"></i>Favorited Properties</a></li>
	            <li><a href="submit-property.html"><i class="pe-7s-up-arrow"></i>Submit Property</a></li>
	            <li><a href="my-profile.html"><i class="pe-7s-user"></i>My Profile</a></li>
	            <li><a href="../index-2.html"><i class="pe-7s-back-2"></i>Logout</a></li>
	        </ul>
	    </div>
    </section>
   --%> <!--End Hidden Bar -->

<%--    <div class="dashboard">
	    <div class="container-fluid">
	        <div class="content-area">
	            <div class="dashboard-content">--%>
	                <div class="dashboard-header clearfix">
	                    <div class="row">
	                        <div class="col-md-6 col-sm-12"><h4>Messages</h4></div>
	                        <%--<div class="col-md-6 col-sm-12">
	                            <div class="breadcrumb-nav">
	                                <ul>
	                                    <li><a href="../index-2.html">Index</a></li>
	                                    <li><a href="dashboard.html">Dashboard</a></li>
	                                    <li class="active">Messages</li>
	                                </ul>
	                            </div>
	                        </div>--%>
	                    </div>
	                </div>
	                
                   <%-- <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                        <HeaderTemplate>--%>

	                <div class="row">
	                    <div class="column col-lg-12">
	                    	<div class="messages-box">
	                    		<div class="title"><h3>Messages List</h3></div>
	                    		<div class="inner-box">


                                    <%--</HeaderTemplate>
                                    <ItemTemplate>
	                                --%><!--comment-->


	                                <article class="message-box">
	                                    <div class="thumb-box">
	                                        <%--<figure class="thumb"><img src="images/resource/review-thumb-1.jpg" alt=""></figure>--%>
	                                        <%--<a href="#" class="reply-btn">Reply Now</a>--%>
                                            <asp:LinkButton ID="btnreply" class="reply-btn" runat="server" Text="Reply Now" OnClick="btnreply_Click"/>
	                                    </div>
	                                    <div class="content-box">
	
                                        <div class="name">
                                            Name:-<asp:label ID="lblname" runat="server" Text=""></asp:label></div>
	                                        Email:-<span class="name"><i ></i><asp:label ID="lblemail"  runat="server" ></asp:label>
                                                <%--<asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>--%>
	                                               </span>
                                            Subject:-<span class="name"><i ></i><asp:label ID="lblsubject"  runat="server" Text=""></asp:label></span>
	                                        Message:-<div class="name"><asp:label ID="lblmessage"   runat="server" Text=" "></asp:label></div>
                                             <asp:TextBox ID="txtreply" runat="server" TextMode="MultiLine" placeholder="Reply" BorderColor="Black" BackColor="White" BorderWidth="10" Columns="50"></asp:TextBox>
                                            <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
	                                    </div>
	                                </article>
                                        <%--<asp:Panel ID="Panel1" runat="server" Visible="False">--%>
                                            
                                        <%--</asp:Panel>--%>

	                               <%-- <!--comment-->
	                                <article class="message-box">
	                                    <div class="thumb-box">
	                                        <figure class="thumb"><img src="images/resource/review-thumb-2.jpg" alt=""></figure>
	                                        <a href="#" class="reply-btn">Reply Now</a>
	                                    </div>
	                                    <div class="content-box">
	                                        <div class="name">Mibano Rests</div>
	                                        <span class="date"><i class="la la-calendar"></i> 8:42 PM 1/28/2017</span>
	                                        <div class="text">Accusantium aut, consequatur, culpa dolorum est facilis illo magnam numquam officia omnis qui recusandae sit, tempora ullam unde velit!</div>
	                                    </div>
	                                </article>

	                                <!--comment-->
	                                <article class="message-box">
	                                    <div class="thumb-box">
	                                        <figure class="thumb"><img src="images/resource/review-thumb-3.jpg" alt=""></figure>
	                                        <a href="#" class="reply-btn">Reply Now</a>
	                                    </div>
	                                    <div class="content-box">
	                                        <div class="name">Cojari Barna</div>
	                                        <span class="date"><i class="la la-calendar"></i> 8:42 PM 1/28/2017</span>
	                                        <div class="text">Accusantium aut, consequatur, culpa dolorum est facilis illo magnam numquam officia omnis qui recusandae sit, tempora ullam unde velit!</div>
	                                    </div>
	                                </article>

	                                <!--comment-->
	                                <article class="message-box">
	                                    <div class="thumb-box">
	                                        <figure class="thumb"><img src="images/resource/review-thumb-1.jpg" alt=""></figure>
	                                        <a href="#" class="reply-btn">Reply Now</a>
	                                    </div>
	                                    <div class="content-box">
	                                        <div class="name">Monija Moro</div>
	                                        <span class="date"><i class="la la-calendar"></i> 8:42 PM 1/28/2017</span>
	                                        <div class="text">Accusantium aut, consequatur, culpa dolorum est facilis illo magnam numquam officia omnis qui recusandae sit, tempora ullam unde velit!</div>
	                                    </div>
	                                </article>

	                                <!--comment-->
	                                <article class="message-box">
	                                    <div class="thumb-box">
	                                        <figure class="thumb"><img src="images/resource/review-thumb-2.jpg" alt=""></figure>
	                                        <a href="#" class="reply-btn">Reply Now</a>
	                                    </div>
	                                    <div class="content-box">
	                                        <div class="name">Mibano Rests</div>
	                                        <span class="date"><i class="la la-calendar"></i> 8:42 PM 1/28/2017</span>
	                                        <div class="text">Accusantium aut, consequatur, culpa dolorum est facilis illo magnam numquam officia omnis qui recusandae sit, tempora ullam unde velit!</div>
	                                    </div>
	                                </article>

	                                <!--comment-->
	                                <article class="message-box">
	                                    <div class="thumb-box">
	                                        <figure class="thumb"><img src="images/resource/review-thumb-3.jpg" alt=""></figure>
	                                        <a href="#" class="reply-btn">Reply Now</a>
	                                    </div>
	                                    <div class="content-box">
	                                        <div class="name">Cojari Barna</div>
	                                        <span class="date"><i class="la la-calendar"></i> 8:42 PM 1/28/2017</span>
	                                        <div class="text">Accusantium aut, consequatur, culpa dolorum est facilis illo magnam numquam officia omnis qui recusandae sit, tempora ullam unde velit!</div>
	                                    </div>
	                                </article>--%>


                                       <%-- </ItemTemplate>
                        <FooterTemplate>--%>
	                    		</div>
	                    	</div>
	                    </div>
	                </div>
   <%-- </FooterTemplate>
                        </asp:Repeater>
	                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ContactId], [ConatctName], [ContactEmail], [ConatactSubject], [ContactMessage] FROM [ContactUs]"></asp:SqlDataSource>
	--%>            <%--</div>--%>

                
	           <%-- <div class="copyright-text">© 2018 <a href="#">Expert Themes</a> All right reserved.</div>--%>
	  <%--      </div>
	    </div>
	</div>

</div>--%>
 <%--   
<script src="js/jquery.js"></script> 
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-ui.js"></script>
<script src="js/wow.js"></script>
<script src="js/dropzone.js"></script>
<script src="js/appear.js"></script>
<script src="js/script.js"></script>--%>
</body>

<!-- Mirrored from expert-themes.com/html/ourland/admin/messages.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 17 Jan 2019 05:27:56 GMT -->
</html>
</asp:Content>

