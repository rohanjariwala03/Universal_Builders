<%@ Page Title="" Language="C#" MasterPageFile="~/User/MyProf.master" AutoEventWireup="true" CodeFile="UMyProfile.aspx.cs" Inherits="User_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<%--    <script type="text/javascript">
        function ImagePreview(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#<%=img1.ClientID%>').prop('src', e.target.result);
                };
                reader.readAsDataURL(input.files[0]);
                }
            }

    </script>--%>

<div class="page-wrapper">

    <!-- Preloader -->
    <div class="preloader"></div>

    <!-- Header Span -->
    <span class="header-span"></span>

    <!-- Main Header-->
<%--    <header class="main-header">
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
	            <li><a href="submit-property.html"><i class="pe-7s-up-arrow"></i>Submit Property</a></li>
	            <li class="active"><a href="my-profile.html"><i class="pe-7s-user"></i>My Profile</a></li>
	            <li><a href="../index-2.html"><i class="pe-7s-back-2"></i>Logout</a></li>
	        </ul>
	    </div>
    </section>--%>
    <!--End Hidden Bar -->

    <div class="dashboard">
	    <div class="container-fluid">
	        <div class="content-area">
	            <%--<div class="dashboard-content">
	                <div class="dashboard-header clearfix">
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
	                </div>
	            --%>    <div class="row">
	                    <div class="column col-lg-12">
	                    	<div class="properties-box">
	                    		<div class="inner-container">
	                    			<div class="title"><h3>Profile Details</h3>
                                        <div style=" text-align:right;">
                                        <asp:Button ID="btnLogOut" runat="server" Text="LogOut" align="right" class="theme-btn btn-style-one" OnClick="btnLogOut_Click"/>
                                        </div>
	                    			</div>
                                    
	                    			<div class="profile-form">
                    					<div class="row">
	                    					<div class="col-lg-4 col-md-12 col-sm-12">
	                    						<!-- Edit profile photo -->
		                                        <div class="edit-profile-photo">
		                                            <%--<img src="images/resource/avatar.jpg" alt="profile-photo">--%>


                                                     <asp:Image ID="img1" runat="server" height="245px" Width="500px"/><br />

                                                    <%--<asp:ImageButton ID="Image2" runat="server" class="la la-cloud-upload"/>--%>
                                                 
		                                           <%--<div class="change-photo-btn">--%>
		                                               <%--<div class="photoUpload">--%>
		                                                   
                                                           <asp:FileUpload ID="FileUpload1" runat="server" text="Upload"   ToolTip="Choose Your Image" BackColor="White" /> 
                                                           <%-- %><span><i class="la la-cloud-upload"></i>
                                                                <%--<asp:Button id="btnpic" runat="server" class="la la-cloud-upload" />
                                                                <%--<asp:FileUpload ID="fp1" runat="server" Visible="False" />
                                                                
		                                                    </span>
                                                                   
                                                             
		                                                    <input type="file" class="upload" >
                                                           <%-- <asp:Button ID="Button1" runat="server" Text="gftc" class="upload" onclick="btn_Click"/>--%>
		                                               <%-- </div>--%>
                                                       <br />
                                                       
		                                           <%-- </div>--%>
		                                        </div>
	                    					</div>

	                    					<div class="col-lg-8 col-md-12 col-sm-12">
				            
					                                <div class="row">
					                                	<!-- Form Group -->
					                                    <div class="form-group col-lg-6 col-md-6 col-sm-12">
					                                        <label>Your Name</label>
					                                        <%--<input type="text" name="name" placeholder="John Doe" required>--%>
                                                             <asp:TextBox ID="txtfn" runat="server" placeholder="Your Name"></asp:TextBox>
					                                    </div>

					                                    <!-- Form Group -->
					                                    <%--<div class="form-group col-lg-6 col-md-6 col-sm-12">
					                                        <label>Your Title</label>
					                                        <input type="text" name="title" placeholder="Your Title" required>
					                                    </div>--%>

					                                    <!-- Form Group -->
					                                    <div class="form-group col-lg-6 col-md-6 col-sm-12">
					                                        <label>Phone </label>
					                                        <%--<input type="text" name="phone" placeholder="Phone" required>--%>
                                                             <asp:TextBox ID="txtphn" runat="server" placeholder="Phone"></asp:TextBox>            
					                                    </div>

					                                    <!-- Form Group -->
					                                    <div class="form-group col-lg-6 col-md-6 col-sm-12">
					                                        <label>Your Email</label>
					                                        <%--<input type="email" name="email" placeholder="Your Email" required>--%>
                                                             <asp:TextBox ID="txtem" runat="server" placeholder="Your Email"></asp:TextBox>
					                                    </div>

					                                    <!-- Form Group -->
					                                    <div class="form-group col-lg-12 col-md-12 col-sm-12">
					                                        <label>About You</label>
					                                        <%--<textarea name="about-you" placeholder="Personal Info"></textarea>--%>
                                                            <asp:TextBox ID="txtau" runat="server" TextMode="MultiLine"></asp:TextBox>
					                                    </div>

					                                    <!-- Form Group -->
					                                    <div class="form-group text-right col-lg-12 col-md-12 col-sm-12">
					                                    	<%--<button type="submit" class="theme-btn btn-style-one">Update Profile</button>--%>
                                                            <asp:Button ID="btnup" BackColor="#3366FF" runat="server" class="theme-btn btn-style-one" Text="Update Profile" OnClick="btnup_Click" />
                                                            <asp:Label ID="lblfill" runat="server" Text="Please Fill up all details" ForeColor="Red" Visible="false"></asp:Label>
					                                    </div>
					                                </div>
                    			
	                    					</div>
	                    				</div>
			                        </div>
	                    		</div>
	                    	</div>
	                    </div>

	                    <div class="column col-lg-6 col-md-12">
	                    	<div class="properties-box">
	                    		<div class="inner-container">
	                    			<div class="title"><h3>Change Password</h3></div>
	                    			<div class="profile-form">
		                    
			                                <div class="row">
			                                	<!-- Form Group -->
			                                    

			                                    <!-- Form Group -->
			                                    <div class="form-group col-lg-12">
			                                        <label>New Password</label>
			                                        <%--<input type="text" name="title" placeholder="New Password" required>--%>
                                                    <asp:TextBox ID="txtnp" placeholder="New Password" runat="server" TextMode="Password"></asp:TextBox>
                                                    <asp:Label ID="lblpwd" runat="server" Text="Please Enter New Password" ForeColor="Red" Visible="false"></asp:Label><asp:Label ID="lblpwdlength" runat="server" Text="Password Must be between 4 to 8 character and include at least one digit" ForeColor="Red" Visible="false"></asp:Label>
			                                    </div>

			                                    <!-- Form Group -->
			                                    <div class="form-group col-lg-12">
			                                        <label>Confirm New Password</label>
			                                        <%--<input type="text" name="phone" placeholder="Confirm New Password" required>--%>
                                                     <asp:TextBox ID="txtcnp" placeholder="Confirm New Password" runat="server" TextMode="Password"></asp:TextBox>
                                                    <asp:Label ID="lblcpwd" runat="server" Text="Please Enter Confirm Password" ForeColor="Red" Visible="false"></asp:Label><asp:Label ID="lblcheckpwd" runat="server" Text="New Password and Confirm Password should be same" ForeColor="Red" Visible="false"></asp:Label>
			                                    </div>

			                                    <!-- Form Group -->
			                                    <div class="form-group col-lg-12">
			                                    	<%--<button type="submit" class="theme-btn btn-style-one">Update Password</button>--%>
                                                    <asp:Button ID="btnupd" runat="server" class="theme-btn btn-style-one" Text="Update Password" BackColor="#3366FF" OnClick="btnupd_Click" />
                                                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
			                                    </div>
			                                </div>
                                        
			                        </div>
	                    		</div>
	                    	</div>
	                    </div>

	                    <%--<div class="column col-lg-6 col-md-12">
	                    	<div class="properties-box">
	                    		<div class="inner-container">
	                    			<div class="title"><h3>Socials Links</h3></div>
	                    			<div class="profile-form">
		                    
			                                <div class="row">
			                                	<!-- Form Group -->
			                                    <div class="form-group col-lg-12">
			                                        <label><i class="la la-facebook"></i>Facebook</label>
			                                        <input type="text" name="name" placeholder="Facebook" required>
			                                    </div>

			                                    <!-- Form Group -->
			                                    <div class="form-group col-lg-12">
			                                        <label><i class="la la-twitter"></i>Twitter</label>
			                                        <input type="text" name="name" placeholder="Twitter" required>
			                                    </div>

			                                    <!-- Form Group -->
			                                    <div class="form-group col-lg-12">
			                                        <label><i class="la la-instagram"></i>Instagram</label>
			                                        <input type="text" name="name" placeholder="Instagram" required>
			                                    </div>

			                                    <!-- Form Group -->
			                                    <div class="form-group col-lg-12">
			                                    	<button type="submit" class="theme-btn btn-style-one">Save Changes</button>
			                                    </div>
			                                </div>
			                        </div>
	                    --%>		

	                </div>
	                    	</div>
	                    </div>
	                </div>
	            </div>
	            
	  <%--      </div>
	    </div>
	</div>

</div>--%>
   
</asp:Content>

