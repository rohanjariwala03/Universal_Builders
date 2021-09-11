<%@ Page Title="" Language="C#" MasterPageFile="~/User/AddPropertyMaster.master" AutoEventWireup="true" CodeFile="AddPropertyOwner.aspx.cs" Inherits="User_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Contentplaceholder1" Runat="Server">
    -<%-- <form id="form2" runat="server">--%>
            <asp:ScriptManager ID="ScriptManager2" runat="server"></asp:ScriptManager>
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
    <%--<span class="header-span"></span>--%>

    <!-- Main Header-->
    <%--<header class="main-header">
        <div class="main-box clearfix">
        	<!-- Logo Box -->
            <div class="logo-box">
                <div class="logo"><a href="../index-2.html"><img src="imgs/logo-small.png" alt="" title=""></a></div>
            </div>

            <!-- Upper Right-->
            <div class="upper-right">
                <ul class="clearfix">
              
                </ul>
            </div>
        </div>
        <!--End Header Lower-->
    </header>
    --%><!--End Main Header -->
    

    <div class="dashboard">
	    <div class="container-fluid">
	        <div class="content-area">
                
	            <div class="dashboard-content">
	                <div class="dashboard-header clearfix">
	                   <%-- <div class="row">
	                        <div class="col-md-6 col-sm-12"><h4>Submit Property</h4></div>
	                        <div class="col-md-6 col-sm-12">
	                            <div class="breadcrumb-nav">
	                                <ul>
	                                    <li><a href="/User/Login.aspx">Home</a></li>
	                                    <li><a href="dashboard.html">Dashboard</a></li>
	                                    <li class="active">Submit Property</li>
	                                </ul>
	                            </div>
	                        </div>
	                    </div>--%>
                      <%--  <asp:RadioButton ID="RadioButton1" runat="server" /> &nbsp; &nbsp; &nbsp; &nbsp; <asp:RadioButton ID="RadioButton2" runat="server" /> &nbsp; &nbsp; &nbsp; &nbsp; <asp:RadioButton ID="RadioButton3" runat="server" /> --%>
                      
	                </div>

                     <div>
           <%-- <div style="padding: 5%">
                <asp:RadioButtonList runat="server" ID="rbtnsearchby" RepeatDirection="Horizontal" RepeatLayout="Table" Font-Size="Medium" AutoPostBack="false">
                    <asp:ListItem Text="Owner" Value="searchbyddl"></asp:ListItem>
                    <asp:ListItem Text="Search By Gannon Email ID" Value="searchbyguemail"></asp:ListItem>
                    <asp:ListItem Text="Search By Last Name" Value="searchbylastname"></asp:ListItem>
                </asp:RadioButtonList>--%>
            <%--    <div id="searchvyddlform" runat="server" style="display: none; width: 200px; height: 200px; border: 1px solid red;" class="box">
                    //DIV1
                </div>
                <div id="searchbyguemailform" runat="server" style="display: none; width: 200px; height: 200px; border: 1px solid red;" class="box">
                    //DIV2
                </div>
                <div id="searchbylastnameform" runat="server" style="display: none; width: 200px; height: 200px; border: 1px solid red;" class="box">
                    //DIV3
                </div>--%>
            </div>
        </div>

            <%--<div id="searchvyddlform" runat="server">--%>
                
	                <div class="row">
	                    <div class="column col-lg-12">
	                    	<div class="properties-box">
	                    		<div class="inner-container">
	                    			<div class="property-submit-form">
			                            <%--<form method="post" action="https://expert-themes.com/html/ourland/admin/index.html">--%>
                                       <%--<div class="title"><h3>I am a</h3></div>
			                                <div class="row">

                                                    <div class="cc-selector-2">
                                                        <asp:RadioButton ID="owner" runat="server" GroupName="select" />
                                                        <label class="drinkcard-cc owner" for="owner"></label>
                                                         <asp:RadioButton ID="dealer" runat="server" GroupName="select" />
                                                        <label class="drinkcard-cc dealer"for="dealer" ></label>
                                                        <asp:RadioButton ID="builder" runat="server" GroupName="select" />
                                                        <label class="drinkcard-cc builder"for="builder"></label>
                                                    </div>

                                                </div>--%>

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
                                                    <asp:UpdatePanel ID="UpdatePanel9" runat="server">
                                                    <ContentTemplate>
                                                    <asp:DropDownList ID="drptype" placeholder="Select Property Type" AutoPostBack="true"  runat="server"  OnSelectedIndexChanged="drptype_SelectedIndexChanged">
                                                    </asp:DropDownList>
                                                        </ContentTemplate>
                                                        </asp:UpdatePanel>
                                                    
			                                    </div>

			                                    <!-- Form Group -->
			                                  

			                                    <!-- Form Group -->
			                                    <div class="form-group col-lg-3 col-md-6 col-sm-12">
			                                        <label>Property Catagory</label>
			                                        <%--<select class="custom-select-box">
			                                            <option>Rent</option>
			                                            <option>Sale</option>
			                                        </select>--%>
                                                    <asp:DropDownList ID="drsr" runat="server" class="custom-select-box" DataSourceID="SqlDataSource4" DataTextField="PCat" DataValueField="PCatId">
                                                    </asp:DropDownList>
			                                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [PropertyCat]"></asp:SqlDataSource>
			                                    </div>

			                                    <!-- Form Group -->
			                                         <%--<div class="form-group col-lg-3 col-md-6 col-sm-12">
			                                        <label>Country</label>
			                                        <select class="custom-select-box">
			                                            <option>Country</option>
			                                            <option>California</option>
			                                            <option>Florida</option>
			                                            <option>Georgia</option>
			                                            <option>New York</option>
			                                            <option>Texas</option>
			                                        </select>
                                                    <asp:DropDownList ID="dsrcnt" runat="server" class="custom-select-box" DataSourceID="SqlDataSource1" DataTextField="coname" DataValueField="coid" AutoPostBack="True"  >
                                                    </asp:DropDownList>
			                                            
			                                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [country]"></asp:SqlDataSource>
			                                            
			                                    </div>--%>

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
                                                  
                                                        
                                                       
                                                        <div class="form-group col-lg-3 col-md-6 col-sm-12">
			                                        <div class="range-slider-one clearfix">
                                                        
                                                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                                    <ContentTemplate>
                                                        <asp:Panel ID="Panel4" runat="server" Visible="False">
                                                        <label>House Number</label>
                                                        <asp:TextBox ID="txthouseno" runat="server" placeholder="House No"></asp:TextBox>
                                                         </asp:Panel>
                                                        </ContentTemplate>
                                                     </asp:UpdatePanel>
                                                        </div>
                                                            </div>
                                               </div>         
                                                   <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                    <ContentTemplate>    
                                                    <asp:Panel ID="Panel5" runat="server" Visible="false">        
                                                <div class="title"><h3>Apartment Details</h3></div>
                                                        </asp:Panel>
                                                        <div class="row">
                                                        <%--<div class="row">--%>
                                                        <div class="form-group col-lg-3 col-md-6 col-sm-12">
			                                        <div class="range-slider-one clearfix">
                                                        <%--<asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                    <ContentTemplate>--%>
                                                        <asp:Panel ID="Panel1" runat="server" Visible="False">
                                                        <label>Total Flores</label>
                                                        
                                                        <asp:TextBox ID="txtflore" runat="server" placeholder="Total Flores"></asp:TextBox>
                                                            </asp:Panel>
                                                      <%--  </ContentTemplate>
                                                     </asp:UpdatePanel>--%>
                                                        </div>
                                                            </div>
                                                        <div class="form-group col-lg-3 col-md-6 col-sm-12">
			                                        <div class="range-slider-one clearfix">
                                                        <%--<asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                                    <ContentTemplate>--%>
                                                        <asp:Panel ID="Panel3" runat="server" Visible="False">
                                                        <label>Flore Number</label>
                                                        <asp:TextBox ID="txtfloreno" runat="server" placeholder="Flore No"></asp:TextBox>
                                                        </asp:Panel>
                                                            <%--</ContentTemplate>
                                                     </asp:UpdatePanel>--%>
                                                        </div>
                                                            </div>
                                                            
                                                            
                                               
                                                       
                                                        <div class="form-group col-lg-3 col-md-6 col-sm-12">
			                                        <div class="range-slider-one clearfix">
                                                        <%-- <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                                    <ContentTemplate>--%>
                                                         <asp:Panel ID="Panel2" runat="server" Visible="False">
                                                        <label>House Number</label>
                                                        <asp:TextBox ID="TextBox3" runat="server" placeholder="House No"></asp:TextBox>
                                                        </asp:Panel>
                                                              <%--</ContentTemplate>
                                                     </asp:UpdatePanel>--%>
                                                        </div>
                                                            </div>
                                                        </div>   
                                                  </ContentTemplate>
                                                     </asp:UpdatePanel>          
			                                

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
                                                    <asp:UpdatePanel ID="UpdatePanel7" runat="server">
                                                    <ContentTemplate>
                                                    <asp:DropDownList ID="drst" runat="server" DataSourceID="SqlDataSource2" DataTextField="sname" DataValueField="sid" AutoPostBack="True">
                                                       
                                                         </asp:DropDownList>
			                                       </ContentTemplate>
                                                        </asp:UpdatePanel>
			                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [state] ">
                                                        <%--<SelectParameters>WHERE ([coid] = @coid)
                                                            <asp:ControlParameter ControlID="Dsrcnt" Name="coid" PropertyName="SelectedValue" Type="Int32" />
                                                        </SelectParameters>--%>
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
                                                    <asp:UpdatePanel ID="UpdatePanel8" runat="server">
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
                                                        <asp:TextBox ID="txtfeet" runat="server" placeholder="SqFt" OnTextChanged="txtfeet_TextChanged"></asp:TextBox>
			                                        </div>
			                                    </div>
                                             
                                                 <div class="form-group col-lg-3 col-md-6 col-sm-12">
			                                        <div class="range-slider-one clearfix">
			                                            <label>Per Feet Price</label>
			                                         	<%--<input type="text" name="text" placeholder="SqFt" required>--%>
                                                        <asp:UpdatePanel ID="UpdatePanel6" runat="server">
                                                    <ContentTemplate>
                                                        <asp:TextBox ID="txtfeetprice" runat="server" placeholder="SqFt Price" OnTextChanged="txtfeetprice_TextChanged" AutoPostBack="True"></asp:TextBox>
			                                       </ContentTemplate>
                                                        </asp:UpdatePanel>
                                                         </div>
			                                    </div>
                                                        
                                             
                                                 <div class="form-group col-lg-3 col-md-6 col-sm-12">
			                                        <div class="range-slider-one clearfix">
			                                            <label>Total Price</label>
			                                         	<%--<input type="text" name="text" placeholder="SqFt" required>--%>
                                                        <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                                                    <ContentTemplate>
                                                        <asp:TextBox ID="txttotprice" runat="server" placeholder="Total Price" ReadOnly="True" OnTextChanged="txttotprice_TextChanged"></asp:TextBox>
			                                        </ContentTemplate>
                                                 </asp:UpdatePanel>
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
                                                    <asp:Image ID="img1" runat="server" class="dropzone dropzone-design" height="200px" Width="400px"/>
                                                    <asp:FileUpload ID="fl1" runat="server" onchange="ImagePreview(this);"  />
                                                    <asp:Label ID="lblimg" runat="server" Text="Image should be .jpg or .png" Visible="false" ForeColor="Red" Font-Size="Large"></asp:Label>
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


			                                <%--<div class="title"><h3>Property Image</h3></div>
			                                <div class="row">
			                                	<!-- Form Group -->
			                                    <div class="form-group col-lg-12">
			                                        <div id="myDropZone" class="dropzone dropzone-design">
				                                        <div  class="dz-default dz-message"><span>Drop Images here to upload</span></div>
   				                                    </div>--%>
                                                    <%--<asp:Image ID="im1" runat="server" class="dropzone dropzone-design" Height="150px" Width="5000px"/>--%>

                                                   <%-- <asp:Image ID="img1" runat="server" Height="100px"  Width="100px" />
                            <asp:FileUpload ID="FileUpload1" runat="server" onchange="ImagePreview(this);" /><asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox><br /><br />--%>


                                                <%-- </div>--%>
			                                    <%--</div>--%>
			                               <%-- </div>--%>

			                                <div class="title"><h3>Detailed Information</h3></div>
			                                <div class="row">
			                                	<!-- Form Group -->
			                                    <div class="form-group col-lg-12">
			                                    	<%--<textarea name="detail" placeholder="Detailed Information"></textarea>--%>
                                                    <asp:TextBox runat="server" ID="txtdi" placeholder="Detailed Information" TextMode="MultiLine"  ></asp:TextBox>
			                                    </div>
			                                </div>
                                         <div class="title"><h3>Amenities (optional)</h3></div>
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
                                                        <asp:CheckBox id="ch2" Text ="Gym" runat="server" />
					                                    <%--<label for="service-2">Alarm System</label>--%>
					                                </div>
					                            </div>

					                            <div class="form-group col-lg-3 col-md-6 col-sm-12 ">
					                                <div class="check-box">
					                                    <%--<input type="checkbox" name="shipping-option" id="service-3">--%>
                                                        <asp:CheckBox id="ch3" Text ="Club House" runat="server" /> 
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
					                                    <asp:CheckBox id="ch6" Text ="Jogging Track" runat="server" />
                                                    </div>
					                            </div>

					                            <div class="form-group col-lg-3 col-md-6 col-sm-12 ">
					                                <div class="check-box">
					                                    <%--<input type="checkbox" name="shipping-option" id="service-7"> 
					                                    <label for="service-7">High Ceiling</label>--%>
                                                        <asp:CheckBox id="ch7" Text ="24*7 Security" runat="server" />
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
                                                        <asp:CheckBox id="ch11" Text ="Intercom Facility" runat="server" />
					                                </div>
					                            </div>

					                            <div class="form-group col-lg-3 col-md-6 col-sm-12 ">
					                                <div class="check-box">
					                                    <%--<input type="checkbox" name="shipping-option" id="service-12"> 
					                                    <label for="service-12">Window Covering</label>--%>
                                                        <asp:CheckBox id="ch12" Text ="Library" runat="server" />
					                                </div>
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
			                                     <div class="form-group col-lg-3 col-md-6 col-sm-12">
			                                    	
                                                        <asp:Button ID="btnsub" runat="server" Text="Submit Property" class="theme-btn btn-style-one" BackColor="#0066FF" OnClick="btnsub1_Click" />
			                                    </div>
                                                <asp:Label ID="lblrmail" runat="server" Text="Please Fillup all details" Visible="false" ForeColor="Red" Font-Size="Large"></asp:Label>
			                                <%--</div>--%>
			                       
			                        </div>
	                    		</div>
	                    	</div>
	                    </div>
	                </div>
	            </div>
                      </div>

        
        
	            <p class="copyright-text">© 2019 <a href="Index.aspx">UNIVERSAL BUILDERS</a> All right reserved.</p>
	        </div>
              
	    </div>

        </form>  
           
</asp:Content>

