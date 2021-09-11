<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="AddDealers.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <script type="text/javascript">
         function ImagePreview(input) {
             if (input.files && input.files[0]) {
                 var reader = new FileReader();
                 reader.onload = function (e) {
                     $('#<%=Image1.ClientID%>').prop('src', e.target.result);
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
            <div class="logo-box">
                <div class="logo"><a href="/Universal%20Builders/User/Index.aspx"><img src="images/logo-small.png" alt="" title=""></a></div>
            </div>

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
    <%--<section class="hidden-bar">
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
    </section>
    --%><!--End Hidden Bar -->

    <div class="dashboard">
	    <div class="container-fluid">
	        <div class="content-area">
	            <%--<div class="dashboard-content">
	                <div class="dashboard-header clearfix">
	             --%>   
                    <%--<div class="row">
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
	                    </div>--%>
	                </div>
	                <div class="row">
	                    <div class="column col-lg-12">
	                    	<div class="properties-box">
	                    		<div class="inner-container">
	                    			<div class="property-submit-form">
			                            
			                            	<div class="title"><h3>Basic Info</h3></div>
			                                <div class="row">
			                                	<!-- Form Group -->
			                                    <div class="form-group col-lg-3 col-md-6 col-sm-12">
			                                        <label>First Name</label>
			                                        <%--<input type="text" name="text" placeholder="Property Title" required>--%>
                                                    <asp:TextBox runat="server" ID="txtfn" placeholder="First Name"></asp:TextBox>
			                                    </div>

			                                    <!-- Form Group -->
			                                    <div class="form-group col-lg-3 col-md-6 col-sm-12">
			                                        <label>Last Name</label>
			                                       
                                                    <asp:TextBox runat="server" ID="txtln" placeholder="Last  Name"></asp:TextBox>
			                                    </div>

			                                    <!-- Form Group -->
			                                    <div class="form-group col-lg-3 col-md-6 col-sm-12">
			                                        <label>Email</label>
			                                      
                                                    <asp:TextBox runat="server" ID="txtem" placeholder="Email"></asp:TextBox>
			                                    </div>

			                                    <!-- Form Group -->
			                                    <div class="form-group col-lg-3 col-md-6 col-sm-12">
			                                        <label>Password</label>
			                                        <asp:TextBox runat="server" ID="txtpwd" placeholder="Password" TextMode="Password"></asp:TextBox>
  			                                    </div>

			                                    <!-- Form Group -->
			                                    <div class="form-group col-lg-3 col-md-6 col-sm-12">
			                                        <div class="range-slider-one clearfix">
			                                            <label>Phone Number</label>
			                                         	<asp:TextBox runat="server" ID="txtphn" placeholder="Ph no"></asp:TextBox>
			                                        </div>
			                                    </div>

			                                    <!-- Form Group -->
			                                    <div class="form-group col-lg-9 col-md-12 col-sm-50">
			                                        <div class="range-slider-one clearfix">
			                                            <label>Description</label>
			                                            <asp:TextBox runat="server" ID="txtdesc" placeholder="Descrioption" textmode="MultiLine" ></asp:TextBox>
			                                        </div>
			                                    </div>

			                                    <!-- Form Group -->
			                                    <div class="form-group col-lg-3 col-md-6 col-sm-12">
			                                        <div class="range-slider-one clearfix">
			                                            
  			                                        </div>
			                                    </div>

			                                    <!-- Form Group -->
			                                    <div class="form-group col-lg-3 col-md-6 col-sm-12">
			                                        <div class="range-slider-one clearfix">
			                                            
			                                        </div>
			                                    </div>
			                                </div>

			                               <div class="title"><h3>Image</h3></div>
			                                <div class="row">
			                                	<!-- Form Group -->
			                                    <div class="form-group col-lg-3 col-md-6 col-sm-12">
			                                        <%--<label>Address</label>
			                                        <input type="text" name="text" placeholder="Property Title" required>--%>
			                                        <%--<div class="col-lg-4 col-md-12 col-sm-12">--%>
	                    						<!-- Edit profile photo -->
		                                        <div class="edit-profile-photo">
		                                            <%--<img src="images/resource/avatar.jpg" alt="profile-photo">--%>


                                                     <asp:Image ID="Image1" runat="server" height="245px" Width="500px" /><br />

                                                    <%--<asp:ImageButton ID="Image2" runat="server" class="la la-cloud-upload"/>--%>
                                                </div> 
		                                           <%--<div class="change-photo-btn">--%>
		                                               <%--<div class="photoUpload">--%>
		                                                   
                                                           <asp:FileUpload ID="FileUpload1" runat="server" text="Upload"  onchange="ImagePreview(this);" ToolTip="Choose Your Image" BackColor="#83C6FC" /> 

                                                </div>

			                                    <%--<!-- Form Group -->
			                                    <div class="form-group col-lg-3 col-md-6 col-sm-12">
			                                        <label>State</label>
			                                        <select class="custom-select-box">
		                                                <option>State</option>
		                                                <option>New York</option>
		                                                <option>Los Angeles</option>
		                                                <option>Chicago</option>
		                                                <option>Houston</option>
		                                            </select>
			                                    </div>

			                                    <!-- Form Group -->
			                                    <div class="form-group col-lg-3 col-md-6 col-sm-12">
			                                        <label>Postal Code</label>
			                                        <input type="text" name="text" placeholder="Location" required>
			                                    </div>

			                                    <!-- Form Group -->
			                                    <div class="form-group col-lg-3 col-md-6 col-sm-12">
			                                        <label>Status</label>
			                                        <select class="custom-select-box">
			                                            <option>Rent</option>
			                                            <option>Sale</option>
			                                        </select>
			                                    </div>
			                                </div>

			                                <div class="title"><h3>Property Gallery</h3></div>
			                                <div class="row">
			                                	<!-- Form Group -->
			                                    <div class="form-group col-lg-12">
			                                        <div id="myDropZone" class="dropzone dropzone-design">
				                                        <div class="dz-default dz-message"><span>Drop files here to upload</span></div>
				                                    </div>
			                                    </div>
			                                </div>

			                                <div class="title"><h3>Detailed Information</h3></div>
			                                <div class="row">
			                                	<!-- Form Group -->
			                                    <div class="form-group col-lg-12">
			                                    	<textarea name="detail" placeholder="Detailed Information"></textarea>
			                                    </div>
			                                </div>

			                                <div class="title"><h3>Features (optional)</h3></div>
			                                <div class="row">
			                                	<div class="form-group col-lg-3 col-md-6 col-sm-12 ">
					                                <div class="check-box">
					                                    <input type="checkbox" name="shipping-option" id="service-1"> 
					                                    <label for="service-1">Air Conditioning</label>
					                                </div>
					                            </div>

					                            <div class="form-group col-lg-3 col-md-6 col-sm-12 ">
					                                <div class="check-box">
					                                    <input type="checkbox" name="shipping-option" id="service-2"> 
					                                    <label for="service-2">Alarm System</label>
					                                </div>
					                            </div>

					                            <div class="form-group col-lg-3 col-md-6 col-sm-12 ">
					                                <div class="check-box">
					                                    <input type="checkbox" name="shipping-option" id="service-3"> 
					                                    <label for="service-3">Doorman</label>
					                                </div>
					                            </div>

					                            <div class="form-group col-lg-3 col-md-6 col-sm-12 ">
					                                <div class="check-box">
					                                    <input type="checkbox" name="shipping-option" id="service-4"> 
					                                    <label for="service-4">Fireplace</label>
					                                </div>
					                            </div>

					                            <div class="form-group col-lg-3 col-md-6 col-sm-12 ">
					                                <div class="check-box">
					                                    <input type="checkbox" name="shipping-option" id="service-5"> 
					                                    <label for="service-5">Garden</label>
					                                </div>
					                            </div>

					                            <div class="form-group col-lg-3 col-md-6 col-sm-12 ">
					                                <div class="check-box">
					                                    <input type="checkbox" name="shipping-option" id="service-6"> 
					                                    <label for="service-6">Heating System</label>
					                                </div>
					                            </div>

					                            <div class="form-group col-lg-3 col-md-6 col-sm-12 ">
					                                <div class="check-box">
					                                    <input type="checkbox" name="shipping-option" id="service-7"> 
					                                    <label for="service-7">High Ceiling</label>
					                                </div>
					                            </div>

					                            <div class="form-group col-lg-3 col-md-6 col-sm-12 ">
					                                <div class="check-box">
					                                    <input type="checkbox" name="shipping-option" id="service-8"> 
					                                    <label for="service-8">Car Parking</label>
					                                </div>
					                            </div>

					                            <div class="form-group col-lg-3 col-md-6 col-sm-12 ">
					                                <div class="check-box">
					                                    <input type="checkbox" name="shipping-option" id="service-9"> 
					                                    <label for="service-9">Swimming Pool</label>
					                                </div>
					                            </div>

					                            <div class="form-group col-lg-3 col-md-6 col-sm-12 ">
					                                <div class="check-box">
					                                    <input type="checkbox" name="shipping-option" id="service-10"> 
					                                    <label for="service-10">Laundry Room</label>
					                                </div>
					                            </div>

					                            <div class="form-group col-lg-3 col-md-6 col-sm-12 ">
					                                <div class="check-box">
					                                    <input type="checkbox" name="shipping-option" id="service-11"> 
					                                    <label for="service-11">Places to seat</label>
					                                </div>
					                            </div>

					                            <div class="form-group col-lg-3 col-md-6 col-sm-12 ">
					                                <div class="check-box">
					                                    <input type="checkbox" name="shipping-option" id="service-12"> 
					                                    <label for="service-12">Window Covering</label>
					                                </div>
					                            </div>
			                                </div>

			                                <div class="title"><h3>Contact Info</h3></div>
			                                <div class="row">
			                                	<!-- Form Group -->
			                                    <div class="form-group col-lg-3 col-md-6 col-sm-12">
			                                        <label>Name</label>
			                                        <input type="text" name="name" placeholder="Name" required>
			                                    </div>

			                                    <!-- Form Group -->
			                                    <div class="form-group col-lg-3 col-md-6 col-sm-12">
			                                        <label>Email</label>
			                                        <input type="email" name="email" placeholder="Email" required>
			                                    </div>

			                                    <!-- Form Group -->
			                                    <div class="form-group col-lg-3 col-md-6 col-sm-12">
			                                        <label>Phone</label>
			                                        <input type="text" name="phone" placeholder="Phone" required>
			                                    </div>--%>
                                                    </div>
                                                </div>
			                                    <!-- Form Group -->
			                                    <div class="form-group col-lg-3 col-md-6 col-sm-12">
			                                    	<%--<button type="submit" class="theme-btn btn-style-one"> Submit Property</button>--%>
                                                    <asp:Button ID="btnadd" class="theme-btn btn-style-one" Width="150" runat="server" Text="Add" OnClick="btnadd_Click" />
		                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
            </div>
        </div>
    </div>
<%--<script src="js/jquery.js"></script> 
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-ui.js"></script>
<script src="js/wow.js"></script>
<script src="js/dropzone.js"></script>
<script src="js/appear.js"></script>
<script src="js/script.js"></script>--%>

</asp:Content>

