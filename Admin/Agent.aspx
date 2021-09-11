<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Builder.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<div class="page-wrapper">

    <!-- Preloader -->

    <!-- Main Header-->
    
    <!--End Main Header -->
    
    <!-- Hidden Bar -->
    
    <!--End Hidden Bar -->

    <div class="dashboard">
	    <div class="container-fluid">
	        <div class="content-area">
	            <div class="dashboard-content">
	                <%--<div class="dashboard-header clearfix">
	                    <div class="row">
	                        <div class="col-md-6 col-sm-12"><h4>Agents</h4></div>
	                        <div class="col-md-6 col-sm-12">
	                            <div class="breadcrumb-nav">
	                                <ul>
	                                    <li><a href="../index-2.html">Index</a></li>
	                                    <li><a href="dashboard.html">Dashboard</a></li>
	                                    <li class="active">Booking</li>
	                                </ul>
	                            </div>
	                        </div>
	                    </div>
	                </div>--%>
	                <div class="row">
	                    <div class="column col-lg-12">
	                    	<div class="messages-box">
	                    		<div class="title"><h3>Agent List</h3></div>
	                    		<div class="inner-box">
	                                <!--comment-->

                                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1"> 
                                        <ItemTemplate>

	                                <article class="message-box">
	                                    <div class="thumb-box">
	                                        <figure class="thumb"><img src='img/<%# Eval("DIma") %>' alt=""></figure>
	                                    </div>
	                                    <div class="content-box">
	                                        <div class="name"><%#Eval("Dfname") %></div>
	                                        <ul class="booking-info">
	                                        	<li><strong>Email Id </strong><%#Eval("Demail") %></li>
	                                        	<li><strong>Phone No </strong><%#Eval("Dphone") %></li>
                                                <li><strong>Details </strong><%#Eval("Ddesc") %></li>
                                                <li><strong>Status </strong><%#Eval("Status") %></li>
	                                        	<%--<li><strong>End date </strong> 18 November 2018</li>--%>
	                                        	<%--<li><strong>Mail </strong><a href="mailto:info@expert-themes.com">info@expert-themes.com</a></li>
	                                        	<li><strong>Phone </strong><a href="tel:+79617036705">+79617036705</a></li>--%>
	                                        </ul>
	                                        <div class="btn-box">
	                                        	<a href='HideShowDealer.aspx?drid=<%#Eval("Did") %>'>Hide/Show<i class="pe-7s-check"></i></a>
	                                        	<%--<a href="#">Reject <i class="pe-7s-close-circle"></i></a>--%>
	                                        </div>
	                                    </div>
	                                </article>

                                         </ItemTemplate>
                                   </asp:Repeater>

	                    		    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Did], [Dfname], [Demail], [Dpasswd], [Dphone], [Ddesc], [Dima], [Status] FROM [Dealer]"></asp:SqlDataSource>

	                    		</div>
	                    	</div>
	                    </div>
	                </div>
	            </div>
	            <%--<p class="copyright-text">© 2018 <a href="#">Expert Themes</a> All right reserved.</p>--%>
	        </div>
	    </div>
	</div>

</div>

</asp:Content>

