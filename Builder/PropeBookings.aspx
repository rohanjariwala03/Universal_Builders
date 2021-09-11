<%@ Page Title="" Language="C#" MasterPageFile="~/Builder/BuilderMaster.master" AutoEventWireup="true" CodeFile="PropeBookings.aspx.cs" Inherits="Builder_Default" %>

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
	                    		<div class="title"><h3>Properties List</h3></div>
	                    		<div class="inner-container">

       </HeaderTemplate>
         <ItemTemplate>
       
	                                <!-- Property Block -->
			                        <div class="property-block">
			                        	<div class="inner-box clearfix">
	                                        <div class="image-box">
	                                            <figure class="image"><img src='../Admin/img/<%#Eval("pimg") %>' alt=""></figure>
	                                        </div>
	                                        <div class="content-box">
	                                            <h3><%#Eval("pname") %></h3>
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
		                                        <div class="expire-date"><i style="font-size:24px" class="fa">&#xf156;</i><%#Eval("TotalPrice") %></div>
		                                        <ul class="action-list">
		                                        	<%--<li><a href="#"><i class="la la-eye-slash"></i><a href='EditProperty.aspx?proid=<%#Eval("pid") %>'>Edit</a>--%>
		                                        	<%--<li><a href="#"><i class="la la-eye-slash"></i><a href='HideShowProp.aspx?proid=<%#Eval("pid") %>'>Hide/Show</a> Hide</a></li>--%>
		                                        	<li><%--<a href="#">--%><i class="la la-trash-o"><a href='BDelProp.aspx?proid=<%#Eval("pid") %>'>Delete</a></i> <%--Delete</a>--%></li>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"  ConnectionString="<%$ ConnectionStrings:ConnectionString %>" >
                            <SelectParameters>
                                <asp:SessionParameter SessionField="bid" Name="Id" Type="Int32"></asp:SessionParameter>
                            </SelectParameters>
                        </asp:SqlDataSource>
    

</asp:Content>

