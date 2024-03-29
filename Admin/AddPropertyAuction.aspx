﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AddPropertyAuction.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
  <%--<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from expert-themes.com/html/ourland/admin/submit-property.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 17 Jan 2019 05:23:06 GMT -->
<head>
<meta charset="utf-8">
<title>Ourland - Real Estate HTML Template | Submit Property</title>
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
<!--[if lt IE 9]><script src="js/respond.js"></script><![endif]-->
</head>

<body>--%>

    <script src="http://code.jquery.com/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        function ImagePreview(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#<%=img1.ClientID%>').prop('src', e.target.result);
                };
                reader.readAsDataURL(input.files[0]);
                }
            }

    </script>


<div class="page-wrapper">

    <!-- Preloader -->
    <div class="preloader"></div>

    <!-- Header Span -->
    <span class="header-span"></span>

    <!-- Main Header-->
    <header class="main-header">
        <div class="main-box clearfix">
        	<!-- Logo Box -->
            

            <!-- Upper Right-->
            <%--<div class="upper-right">
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
            </div>--%>
        </div>
        <!--End Header Lower-->
    </header>
    <!--End Main Header -->
    
    <!-- Hidden Bar -->
   <%-- <section class="hidden-bar">
        <div class="dashboard-inner">
        	<div class="cross-icon"><span class="pe-7s-close-circle"></span></div>
        	<ul class="navigation">
	            <li><a href="dashboard.html"><i class="pe-7s-culture"></i> Dashboard</a></li>
	            <li><a href="messages.html"><i class="pe-7s-mail"></i> Messages <span class="tag">6</span></a></li>
	            <li><a href="bookings.html"><i class="pe-7s-date"></i>Bookings</a></li>
	            <li><a href="my-properties.html"><i class="pe-7s-diamond"></i>My Properties</a></li>
	            <li><a href="my-invoices.html"><i class="pe-7s-note2"></i>My Invoices</a></li>
	            <li><a href="favorited-properties.html"><i class="pe-7s-like2"></i>Favorited Properties</a></li>
	            <li class="active"><a href="submit-property.html"><i class="pe-7s-up-arrow"></i>Submit Property</a></li>
	            <li><a href="my-profile.html"><i class="pe-7s-user"></i>My Profile</a></li>
	            <li><a href="../index-2.html"><i class="pe-7s-back-2"></i>Logout</a></li>
	        </ul>
	    </div>
    </section>--%>
    <!--End Hidden Bar -->

    <div class="dashboard">
	    <div class="container-fluid">
	        <div class="content-area">
	            <div class="dashboard-content">
	                <%--<div class="dashboard-header clearfix">
	                    <div class="row">
	                        <div class="col-md-6 col-sm-12"><h4>Submit Property</h4></div>
	                        <div class="col-md-6 col-sm-12">
	                            <div class="breadcrumb-nav">
	                                <ul>
	                                    <li><a href="../index-2.html">Index</a></li>
	                                    <li><a href="dashboard.html">Dashboard</a></li>
	                                    <li class="active">Submit Property</li>
	                                </ul>
	                            </div>
	                        </div>
	                    </div>
	                </div>--%>
	                <div class="row">
	                    <div class="column col-lg-12">
	                    	<div class="properties-box">
	                    		<div class="inner-container">
	                    			<div class="property-submit-form">
			                           
			                            	<div class="title"><h3>Basic Info</h3></div>
			                                <div class="row">
			                                	<!-- Form Group -->
			                                    <div class="form-group col-lg-3 col-md-6 col-sm-12">
			                                        <label>Property Title</label>
			                                        <%--<input type="text" name="text" placeholder="Property Title" required>--%>
                                                    <asp:TextBox ID="txtpname" runat="server" placeholder="Property Title"></asp:TextBox>
			                                    </div>

			                                    <!-- Form Group -->
			                                      <div class="form-group col-lg-3 col-md-6 col-sm-12">
			                                        <label>Property Type</label>
			                                        <%--<select class="custom-select-box">
		                                                <option>Property Type</option>
		                                                <option>Residential</option>
		                                                <option>Commercial</option>
		                                                <option>Industrial</option>
		                                                <option>Apartments</option>
		                                            </select>--%>
                                                    <asp:DropDownList ID="drptype" placeholder="Select Property Type" runat="server" class="custom-select-box" DataSourceID="SqlDataSource4" DataTextField="PtypeName" DataValueField="PtypeName">
                                                        <%--<asp:ListItem>Property Type</asp:ListItem>
                                                        <asp:ListItem>Apartment</asp:ListItem>
                                                        <asp:ListItem>Row House</asp:ListItem>
                                                        <asp:ListItem>Bunglow</asp:ListItem>--%>
                                                    </asp:DropDownList>
                                                       <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [PropertyType]"></asp:SqlDataSource>
			                                    </div>

			                                    <!-- Form Group -->
			                                  

			                                    <!-- Form Group -->
			                                   <%-- <div class="form-group col-lg-3 col-md-6 col-sm-12">
			                                        <label>Property Catagory</label>
			                                        <%--<select class="custom-select-box">
			                                            <option>Rent</option>
			                                            <option>Sale</option>
			                                        </select>--%>
                                                    <%--<asp:DropDownList ID="drsr" runat="server" class="custom-select-box" DataSourceID="SqlDataSource4" DataTextField="PCat" DataValueField="PCat">
                                                    </asp:DropDownList>
			                                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [PropertyCat]"></asp:SqlDataSource>
			                                    </div>--%>

			                                    <!-- Form Group -->
			                                         <div class="form-group col-lg-3 col-md-6 col-sm-12">
			                                        <label>Country</label>
			                                        <%--<select class="custom-select-box">
			                                            <option>Country</option>
			                                            <option>California</option>
			                                            <option>Florida</option>
			                                            <option>Georgia</option>
			                                            <option>New York</option>
			                                            <option>Texas</option>
			                                        </select>--%>
                                                    <asp:DropDownList ID="dsrcnt" runat="server" class="custom-select-box" DataSourceID="SqlDataSource1" DataTextField="coname" DataValueField="coid" AutoPostBack="True"  >
                                                    </asp:DropDownList>
			                                            
			                                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [country]"></asp:SqlDataSource>
			                                            
			                                    </div>

			                                    <!-- Form Group -->
			                                   

			                                    <!-- Form Group -->
			                                    <div class="form-group col-lg-3 col-md-6 col-sm-12">
			                                        <div class="range-slider-one clearfix">
			                                            <label>Bed Room</label>
			                                         	<%--<select class="custom-select-box">
				                                            <option>Bed Room</option>
				                                            <option>01 Bed Room</option>
				                                            <option>02 Bed Room</option>
				                                            <option>03 Bed Room</option>
				                                            <option>04 Bed Room</option>
				                                            <option>05 Bed Room</option>
				                                        </select>

		--%>	                                      
                                                        <asp:DropDownList ID="drbed" runat="server" class="custom-select-box">
                                                            <asp:ListItem>Bed Room</asp:ListItem>
                                                            <asp:ListItem>01 Bed Room</asp:ListItem>
                                                            <asp:ListItem>02 Bed Room</asp:ListItem>
                                                            <asp:ListItem>03 Bed Room</asp:ListItem>
                                                            <asp:ListItem>04 Bed Room</asp:ListItem>
                                                            <asp:ListItem>05 Bed Room</asp:ListItem>
                                                        </asp:DropDownList>
			                                        </div>
			                                    </div>

			                                    <!-- Form Group -->
			                                    <div class="form-group col-lg-3 col-md-6 col-sm-12">
			                                        <div class="range-slider-one clearfix">
			                                            <label>Bathroom</label>
			                                         	<%--<select class="custom-select-box">
				                                            <option>Bathroom</option>
				                                            <option>01 Bathroom</option>
				                                            <option>02 Bathroom</option>
				                                            <option>03 Bathroom</option>
				                                            <option>04 Bathroom</option>
				                                            <option>05 Bathroom</option>
				                                        </select>--%>
                                                          <asp:DropDownList ID="drbat" runat="server" class="custom-select-box">
                                                              <asp:ListItem>Bathroom</asp:ListItem>
                                                              <asp:ListItem>01 Bathroom</asp:ListItem>
                                                              <asp:ListItem>02 Bathroom</asp:ListItem>
                                                              <asp:ListItem>03 Bathroom</asp:ListItem>
                                                              <asp:ListItem>04 Bathroom</asp:ListItem>
                                                              <asp:ListItem>05 Bathroom</asp:ListItem>

                                                          </asp:DropDownList>
			                                        </div>
			                                    </div>
                                                 <div class="form-group col-lg-3 col-md-6 col-sm-12">
			                                        <div class="range-slider-one clearfix">
			                                            <label>Kitchen</label>
			                                         	<%--<select class="custom-select-box">
				                                            <option>Kitchen</option>
				                                            <option>01 Kitchen</option>
				                                            <option>02 Kitchen</option>
				                                            <option>03 Kitchen</option>
				                                            <option>04 Kitchen</option>
				                                            <option>05 Kitchen</option>
				                                        </select>--%>
                                                        <asp:DropDownList ID="drkit" runat="server" class="custom-select-box">
                                                            <asp:ListItem>Kitchen</asp:ListItem>
                                                            <asp:ListItem>01 Kitchen</asp:ListItem>
                                                            <asp:ListItem>02 Kitchen</asp:ListItem>
                                                            <asp:ListItem>03 Kitchen</asp:ListItem>
                                                       </asp:DropDownList>
			                                        </div>
			                                    </div>
			                                </div>

			                                <div class="title"><h3>Address</h3></div>
			                                <div class="row">
			                                	<!-- Form Group -->
			                                    <div class="form-group col-lg-3 col-md-6 col-sm-12">
			                                        <label>Address</label>
			                                        <%--<input type="text" name="text" placeholder="Property Title" required>--%>
                                                    <asp:TextBox ID="txtadd" runat="server" placeholder="Property Title"></asp:TextBox>
			                                    </div>

			                                    <!-- Form Group -->
			                                    <div class="form-group col-lg-3 col-md-6 col-sm-12">
			                                        <label>State</label>
			                                        <%--<select class="custom-select-box">
		                                                <option>State</option>
		                                                <option>New York</option>
		                                                <option>Los Angeles</option>
		                                                <option>Chicago</option>
		                                                <option>Houston</option>
		                                            </select>--%>
                                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                        <ContentTemplate>
                                                    <asp:DropDownList ID="drst" runat="server"  DataSourceID="SqlDataSource2" DataTextField="sname" DataValueField="sid" AutoPostBack="True">
                                                       
                                                         </asp:DropDownList>
                                                            </ContentTemplate>
			                                       </asp:UpdatePanel>
			                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [state] WHERE ([coid] = @coid)">
                                                        <SelectParameters>
                                                            <asp:ControlParameter ControlID="Dsrcnt" Name="coid" PropertyName="SelectedValue" Type="Int32" />
                                                        </SelectParameters>
			                                        </asp:SqlDataSource>
			                                       
			                                    </div>

                                                <div class="form-group col-lg-3 col-md-6 col-sm-12">
			                                        <label>City</label>
			                                        <%--<select class="custom-select-box">
		                                                <option>State</option>
		                                                <option>New York</option>
		                                                <option>Los Angeles</option>
		                                                <option>Chicago</option>
		                                                <option>Houston</option>
		                                            </select>--%>
                                                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                                        <ContentTemplate>
                                                    <asp:DropDownList ID="drct" runat="server" class="custom-select-box" DataSourceID="SqlDataSource3" DataTextField="ciname" DataValueField="ciid">
                                                         </asp:DropDownList>
                                                            </ContentTemplate>
                                                        </asp:UpdatePanel>
			                                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [cit] WHERE ([sid] = @sid)">
                                                        <SelectParameters>
                                                            <asp:ControlParameter ControlID="drst" Name="sid" PropertyName="SelectedValue" Type="Int32" />
                                                        </SelectParameters>
			                                        </asp:SqlDataSource>
			                                    </div>

			                                    <!-- Form Group -->
			                                    <div class="form-group col-lg-3 col-md-6 col-sm-12">
			                                        <label>Postal Code</label>
			                                        <%--<input type="text" name="text" placeholder="Location" required>--%>
                                                    <asp:TextBox runat="server" ID="txtpin" placeholder="Location"></asp:TextBox>
			                                    </div>

			                                </div>


                                        <div class="title"><h3>Square Feet</h3></div>
                                        <div class="row">
                                         <div class="form-group col-lg-3 col-md-6 col-sm-12">
			                                        <div class="range-slider-one clearfix">
			                                            <label>Total Square Feet</label>
			                                         	<%--<input type="text" name="text" placeholder="SqFt" required>--%>
                                                        <asp:TextBox ID="txtfeet" runat="server" placeholder="SqFt" ></asp:TextBox>
			                                        </div>
			                                    </div>

                                                

                                                <div class="form-group col-lg-3 col-md-6 col-sm-12">
			                                        <div class="range-slider-one clearfix">
			                                            <label>Bid Amount</label>
			                                         	<%--<input type="text" name="text" placeholder="SqFt" required>--%>
                                                        <asp:TextBox ID="txtbid" runat="server" placeholder="Start Bid Amount" ></asp:TextBox>
			                                        </div>
			                                    </div>
                                             
                                        </div>

			                                <div class="title"><h3>Property Image</h3></div>
			                                <div class="row">
			                                	<!-- Form Group -->
			                                    <div class="form-group col-lg-12">
			                                        <%--<div id="myDropZone" class="dropzone dropzone-design">
				                                        <div  class="dz-default dz-message"><span>Drop Images here to upload</span></div>
   				                                    </div>--%>
                                                    <asp:Image ID="img1" runat="server" class="dropzone dropzone-design" Width="400px" height="200px"/>
                                                    <asp:FileUpload ID="fl1" runat="server" />
                                                    <%--<asp:Image ID="im1" runat="server" class="dropzone dropzone-design" Height="150px" Width="5000px"/>--%>

                                                   <%-- <asp:Image ID="img1" runat="server" Height="100px"  Width="100px" />
                            <asp:FileUpload ID="FileUpload1" runat="server" onchange="ImagePreview(this);" /><asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox><br /><br />--%>


                                                 </div>
			                                    <%--</div>--%>
			                                </div>

                                        <div class="title"><h3>Property Gallary</h3></div>
			                                <div class="row">
			                                	<!-- Form Group -->
			                                    <div class="form-group col-lg-12">
			                                        <%--<div id="myDropZone" class="dropzone dropzone-design">
				                                        <div  class="dz-default dz-message"><span>Drop Images here to upload</span></div>
   				                                    </div>--%>
                                                    
                                                    <asp:FileUpload ID="FileUploadImg1" runat="server" AllowMultiple="True" />
                                                    <%--<asp:Image ID="im1" runat="server" class="dropzone dropzone-design" Height="150px" Width="5000px"/>--%>

                                                   <%-- <asp:Image ID="img1" runat="server" Height="100px"  Width="100px" />
                            <asp:FileUpload ID="FileUpload1" runat="server" onchange="ImagePreview(this);" /><asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox><br /><br />--%>


                                                 </div>
			                                    <%--</div>--%>
			                                </div>

                                        <div class="title"><h3>Features (optional)</h3></div>
			                                <div class="row">
			                                	<div class="form-group col-lg-3 col-md-6 col-sm-12 ">
					                                <div class="check-box">
					                                    <%--<input type="checkbox" name="shipping-option" id="service-1">--%>
                                                        <asp:CheckBox id="ch1" Text ="Air Conditioning" runat="server" />
                                                      <%--  <label for="service1"></label>--%>
                                                        <%--<asp:Label runat="server" for="service1" Text="Air Conditioning"></asp:Label> --%>
					                                </div>
                                                    
					                                   
					                            </div>

					                            <div class="form-group col-lg-3 col-md-6 col-sm-12 ">
					                                <div class="check-box">
					                                    <%--<input type="checkbox" name="shipping-option" id="service-2"> --%>
                                                        <asp:CheckBox id="ch2" Text ="Alarm System" runat="server" />
					                                    <%--<label for="service-2">Alarm System</label>--%>
					                                </div>
					                            </div>

					                            <div class="form-group col-lg-3 col-md-6 col-sm-12 ">
					                                <div class="check-box">
					                                    <%--<input type="checkbox" name="shipping-option" id="service-3">--%>
                                                        <asp:CheckBox id="ch3" Text ="Door Man" runat="server" /> 
					                                    <%--<label for="service-3">Doorman</label>--%>
					                                </div>
					                            </div>

					                            <div class="form-group col-lg-3 col-md-6 col-sm-12 ">
					                                <div class="check-box">
					                            <%--        <input type="checkbox" name="shipping-option" id="service-4"> --%>
                                                        <asp:CheckBox id="ch4" Text ="Fire Place" runat="server" />
					                                    <%--<label for="service-4">Fireplace</label>--%>
					                                </div>
					                            </div>

					                            <div class="form-group col-lg-3 col-md-6 col-sm-12 ">
					                                <div class="check-box">
					                                    <%--<input type="checkbox" name="shipping-option" id="service-5"> --%>
                                                        <asp:CheckBox id="ch5" Text ="Garden" runat="server" />
					                                    <%--<label for="service-5">Garden</label>--%>
					                                </div>
					                            </div>

					                            <div class="form-group col-lg-3 col-md-6 col-sm-12 ">
					                                <div class="check-box">
					                                    <%--<input type="checkbox" name="shipping-option" id="service-6"> 
					                                    <label for="service-6">Heating System</label>--%>
					                                    <asp:CheckBox id="ch6" Text ="Heating System" runat="server" />
                                                    </div>
					                            </div>

					                            <div class="form-group col-lg-3 col-md-6 col-sm-12 ">
					                                <div class="check-box">
					                                    <%--<input type="checkbox" name="shipping-option" id="service-7"> 
					                                    <label for="service-7">High Ceiling</label>--%>
                                                        <asp:CheckBox id="ch7" Text ="High Ceilling" runat="server" />
					                                </div>
					                            </div>

					                            <div class="form-group col-lg-3 col-md-6 col-sm-12 ">
					                                <div class="check-box">
					                                    <%--<input type="checkbox" name="shipping-option" id="service-8"> 
					                                    <label for="service-8">Car Parking</label>--%>
                                                        <asp:CheckBox id="ch8" Text ="Car Parking" runat="server" />
					                                </div>
					                            </div>

					                            <div class="form-group col-lg-3 col-md-6 col-sm-12 ">
					                                <div class="check-box">
					                                    <%--<input type="checkbox" name="shipping-option" id="service-9"> 
					                                    <label for="service-9">Swimming Pool</label>--%>
                                                        <asp:CheckBox id="ch9" Text ="Swimming Pool" runat="server" />
					                                </div>
					                            </div>

					                            <div class="form-group col-lg-3 col-md-6 col-sm-12 ">
					                                <div class="check-box">
					                                    <%--<input type="checkbox" name="shipping-option" id="service-10"> 
					                                    <label for="service-10">Laundry Room</label>--%>
                                                        <asp:CheckBox id="ch10" Text ="Laundry Room" runat="server" />
					                                </div>
					                            </div>

					                            <div class="form-group col-lg-3 col-md-6 col-sm-12 ">
					                                <div class="check-box">
					                                    <%--<input type="checkbox" name="shipping-option" id="service-11"> 
					                                    <label for="service-11">Places to seat</label>--%>
                                                        <asp:CheckBox id="ch11" Text ="Place To Seat" runat="server" />
					                                </div>
					                            </div>

					                            <div class="form-group col-lg-3 col-md-6 col-sm-12 ">
					                                <div class="check-box">
					                                    <%--<input type="checkbox" name="shipping-option" id="service-12"> 
					                                    <label for="service-12">Window Covering</label>--%>
                                                        <asp:CheckBox id="ch12" Text ="Window Covering" runat="server" />
					                                </div>
					                            </div>
			                                </div>
			                                <div class="title"><h3>Detailed Information</h3></div>
			                                <div class="row">
			                                	<!-- Form Group -->
			                                    <div class="form-group col-lg-12">
			                                    	<%--<textarea name="detail" placeholder="Detailed Information"></textarea>--%>
                                                    <asp:TextBox runat="server" ID="txtdi" placeholder="Detailed Information" TextMode="MultiLine"  ></asp:TextBox>
			                                    </div>
			                                </div>

			                                <%--<div class="title"><h3>Contact Info</h3></div>
			                                <div class="row">
			                                	<!-- Form Group -->
			                                    <div class="form-group col-lg-3 col-md-6 col-sm-12">
			                                        <label>Name</label>
			                                        
                                                    <asp:TextBox ID="txtname" runat="server" placeholder="Name"  ></asp:TextBox>
			                                    </div>

			                                    <!-- Form Group -->
			                                    <div class="form-group col-lg-3 col-md-6 col-sm-12">
			                                        <label>Email</label>
			                                       
                                                    <asp:TextBox ID="txtem" runat="server" placeholder="Email"  ></asp:TextBox>
			                                    </div>

			                                    <!-- Form Group -->
			                                    <div class="form-group col-lg-3 col-md-6 col-sm-12">
			                                        <label>Phone</label>
			                                        
                                                    <asp:TextBox ID="txtphn" runat="server" placeholder="Phone"  ></asp:TextBox>
			                                    </div>--%>

			                                    <!-- Form Group -->
                                        <center>
			                                     <div class="form-group col-lg-3 col-md-6 col-sm-12">
			                                    	<%--<button type="submit" class="theme-btn btn-style-one"> Submit Property</button>--%>
                                                        <asp:Button ID="btnsub" runat="server" Text="Submit Property" class="theme-btn btn-style-one" BackColor="#0066FF" onclick="btnsub_Click"/>
			                                    </div>
                                            </center>
                                        <center>
			                                     <div class="form-group col-lg-3 col-md-6 col-sm-12">
			                                    	<%--<button type="submit" class="theme-btn btn-style-one"> Submit Property</button>--%>
                                                        <asp:Label ID="Label1" runat="server" Text="Please Fill up all details" Visible="false" ForeColor="Red" Font-Bold="False" Font-Size="Large" EnableViewState="True"></asp:Label>
			                                    </div>
                                            </center>
			                                <%--</div>--%>
			                       
			                        </div>
	                    		</div>
	                    	</div>
	                    </div>
	                </div>
	            </div>
                      </div>

	                    </div>
	                </div>
	            </div>
	          
	  
  <%--  
<script src="js/jquery.js"></script> 
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-ui.js"></script>
<script src="js/wow.js"></script>
<script src="js/dropzone.js"></script>
<script src="js/appear.js"></script>
<script src="js/script.js"></script>
</body>

<!-- Mirrored from expert-themes.com/html/ourland/admin/submit-property.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 17 Jan 2019 05:23:47 GMT -->
</html>--%>



</asp:Content>