﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AuctionProperty.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   <html>
<head>
<title>Font Awesome Icons</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<%--<i style="font-size:24px" class="fa">&#xf156;</i>--%>

</body>
</html> 

    <asp:Repeater ID="Rep1" runat="server" DataSourceID="SqlDataSource1">
       <HeaderTemplate>
           <div class="dashboard">
	    <div class="container-fluid">
	        <div class="content-area">
	            <%--<div class="dashboard-content">--%>
	                <%--<div class="dashboard-header clearfix">
	                    <div class="row">
	                        <div class="col-md-6 col-sm-12"><h4>My Properties</h4></div>
	                        <div class="col-md-6 col-sm-12">
	                            <div class="breadcrumb-nav">
	                                <ul>
	                                    <li><a href="../index-2.html">Index</a></li>
	                                    <li><a href="dashboard.html">Dashboard</a></li>
	                                    <li class="active">Properties</li>
	                                </ul>
	                            </div>
	                        </div>
	                    </div>
	                </div>--%>
	                <div class="row">
	                    <div class="column col-lg-12">
	                    	<div class="properties-box">
	                    		<div class="title"><h3>Auction Properties List</h3></div>
	                    		<div class="inner-container">

       </HeaderTemplate>
         <ItemTemplate>
       
	                                <!-- Property Block -->
			                        <div class="property-block">
			                        	<div class="inner-box clearfix">
	                                        <div class="image-box">
	                                            <figure class="image"><img src='img/<%#Eval("pimg") %>' alt=""></figure>
	                                        </div>
	                                        <div class="content-box">
	                                            <h3><%#Eval("pnam") %></h3>
	                                            <div class="location"><i class="la la-map-marker"></i><%#Eval("Paddress") %></div>
	                                            <ul class="property-info clearfix">
	                                                <li><i class="flaticon-dimension"></i><%#Eval("totalsquarefeet") %> Square Feet</li>
	                                                <li><i class="flaticon-bed"></i> <%#Eval("bedroom") %></li>
	                                                <li><i class="flaticon-car"></i> <%#Eval("Kitchen") %> </li>
	                                                <li><i class="flaticon-bathtub"></i> <%#Eval("bathroom") %> </li>
	                                            </ul>
	                                            <div class="price">Status:<%--<li><i class="flaticon-bathtub"></i>--%> <%#Eval("Status") %> <%--</li>--%></div>
	                                        </div>
		                                    <div class="option-box">
		                                        <div class="expire-date"><i style="font-size:24px" class="fa">&#xf156;</i><%#Eval("StartBid") %></div>
		                                        <ul class="action-list">
		                                        	<%--<li><i class="la la-edit"><asp:LinkButton ID="lbedit" runat="server" >Edit</asp:LinkButton></i> </a></li>--%>
		                                        	<li><%--<a href="#">--%><i class="la la-eye-slash"></i><a href='HideShowProp.aspx?proid=<%#Eval("paid") %>'>Hide/Show</a> <%--Hide</a>--%></li>
		                                        	<li><%--<a href="#">--%><i class="la la-trash-o"><a href='DeletePro.aspx?proid=<%#Eval("paid") %>'>Delete</a></i> <%--Delete</a>--%></li>
		                                        </ul>
		                                    </div>
			                        	</div>
                                    </div>                    		
            

        </ItemTemplate>
        <FooterTemplate>

                            </div>
	                    </div>
	                   </div>
	                </div>
	            </div>
	            
	        </div>
	    </div>
	</div>
        </FooterTemplate>
    </asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [paid],[Paddress], [Pimg], [pnam], [TotalSquareFeet], [Bedroom], [Bathroom], [Status], [Kitchen], [StartBid] FROM [AuctionProp]"></asp:SqlDataSource>
    
</asp:Content>