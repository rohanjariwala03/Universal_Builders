<%@ Page Title="" Language="C#" MasterPageFile="~/Dealer/DealerMaster.master" AutoEventWireup="true" CodeFile="Appointment.aspx.cs" Inherits="Dealer_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from expert-themes.com/html/ourland/admin/messages.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 17 Jan 2019 05:27:56 GMT -->
<head>
<%--<meta charset="utf-8">
<title>Ourland - Real Estate HTML Template | Messages</title>
<!-- Stylesheets -->
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/responsive.css" rel="stylesheet">

<link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">
<link rel="icon" href="images/favicon.png" type="image/x-icon">
<!-- Responsive -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<!--[if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script><![endif]-->
<!--[if lt IE 9]><script src="js/respond.js"></script><![endif]-->--%>
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
                                            <%--<asp:LinkButton ID="btnreply" class="reply-btn" runat="server" Text="Reply Now" OnClick="btnreply_Click"/>--%>
	                                    </div>
	                                    <div class="content-box">
	
                                       <%-- <div class="name"><asp:label ID="Label1" runat="server" Text="Name:- "><%#Eval("ConatctName") %></asp:label></div>
	                                        <span class="name"><i ></i><asp:label ID="Label2"  runat="server" Text="Email:- "> <%#Eval("ContactEmail") %></asp:label></span>
                                            <span class="name"><i ></i><asp:label ID="Label3"  runat="server" Text="Subject Contact:- "> <%#Eval("ConatactSubject") %></asp:label></span>
	                                        <div class="name"><asp:label ID="Label4"   runat="server" Text="Message:- "> <%#Eval("ContactMessage") %></asp:label></div>
                                             <asp:TextBox ID="txtreply" runat="server" TextMode="MultiLine" placeholder="Reply" BorderColor="Black" BackColor="White" BorderWidth="10" Columns="50"></asp:TextBox>
                                            <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
	                                    </div>--%>

                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Height="236px" Width="965px">
                                                <AlternatingRowStyle BackColor="White" />
                                                <Columns>
                                                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                                    <asp:BoundField DataField="Apname" HeaderText="Apname" SortExpression="Apname" />
                                                    <asp:BoundField DataField="ApEmail" HeaderText="ApEmail" SortExpression="ApEmail" />
                                                    <asp:BoundField DataField="ApPhone" HeaderText="ApPhone" SortExpression="ApPhone" />
                                                    <asp:BoundField DataField="ApMessage" HeaderText="ApMessage" SortExpression="ApMessage" />
                                                    
                                                     <asp:BoundField DataField="Did" HeaderText="Did" SortExpression="Did" />
                                                     <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="Rply.aspx?rpid={0}" HeaderText="Rply" Text="Rply" />
                                                  <%--  <asp:HyperLinkField HeaderText="Rply" NavigateUrl="Rply.aspx?rpid={0}" Text="Rply" />--%>
                                        
                                   
                                                </Columns>
                                                <EditRowStyle BackColor="#2461BF" />
                                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                                <RowStyle BackColor="#EFF3FB" />
                                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                            </asp:GridView>

	                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [Id], [Apname], [ApEmail], [ApPhone], [ApMessage], [Did] FROM [AgentAppointment]"></asp:SqlDataSource>
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

