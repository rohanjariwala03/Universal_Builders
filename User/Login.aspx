<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="User_Default" %>

<%@ Register Src="~/MyCaptcha.ascx" TagPrefix="uc1" TagName="MyCaptcha" %>


<asp:Content ID="Content1" runat="server"  ContentPlaceHolderID="ContentPlaceHolder1">
    
    
    <script src="http://code.jquery.com/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        function ImagePreview(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#<%=img1.ClientID%>').prop('src', e.target.result)
                        .width(100)
                        .height(100);
                };
                reader.readAsDataURL(input.files[0]);
                }
            }
    </script>




<div class="page-wrapper">
    <!-- Preloader -->
    <div class="preloader"></div>

    
    <!--Page Title-->
       <section class="page-title" style="background-image:url(images/background/16.jpg);">
           <div class="auto-container">
               <div class="inner-container clearfix">
                   <h1>Login / Register</h1>
                   <ul class="bread-crumb clearfix">
                       <li><a href="index-2.html">Home</a></li>
                       <li>Login</li>
                   </ul>
               </div>
           </div>
       </section>
       <!--End Page Title-->

    
    <!--Login Section-->
    <%-- <form id="Form1" runat="server">--%>
    <section class="login-section">
        <div class="auto-container">
            <div class="row clearfix">
                <div class="column col-md-6 col-sm-12 col-xs-12">
                    <h2>Login</h2>
                    
                    <!-- Login Form -->
                    <div class="login-form">
                        <!--Login Form-->
                        <%--<form method="post" action="https://expert-themes.com/html/ourland/contact.html">--%>

                            <div class="form-group">
                                <%--<label>Username or Email Address</label>--%>
                                <asp:Label ID="Label1" runat="server" Text="Email Address"></asp:Label>
                                <%--<input type="text" name="username" placeholder="Name or Email " required>--%>
                                <asp:TextBox ID="txtuname" runat="server" placeholder="Name or Email"></asp:TextBox>
                                <asp:Label ID="lblrmail" runat="server" Text="Please Enter Your EmailId" Visible="false" ForeColor="Red"></asp:Label><asp:Label ID="lblfname" Visible="false" runat="server" Text="EmailId should be in proper format"  ForeColor="Red"></asp:Label>
                            </div>
                            
                            <div class="form-group">
                                <%--<label>Enter Your Password</label>--%>
                                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                                <%--<input type="email" name="email" placeholder="Password" required>--%>
                                <asp:TextBox ID="txtpwd" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                <asp:Label ID="lblrpwd" runat="server" Text="Please Enter Your Password" Visible="false" ForeColor="Red"></asp:Label>
                            </div>
                            <div class="form-group">
                                   <uc1:MyCaptcha runat="server" ID="MyCaptcha" />
                            </div>     

                             <div>
                                 <%--<asp:Label ID="recapt" runat="server" Text="Retype Captcha"></asp:Label>
                                 <asp:TextBox ID="Captch" runat="server" placeholder="Captcha" TextMode="SingleLine"></asp:TextBox>--%>

                                

                             </div>

                            <div class="clearfix">
                                <div class="pull-left">
                                    <div class="form-group check-box">
                                        <asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Size="Large" ForeColor="Red"></asp:Label>
                                   <%--     <input type="checkbox" name="shipping-option" id="account-option-1">&nbsp; <label for="account-option-1">Remember me</label>--%>
                                    </div>
                                </div>
                                <div class="pull-right">
                                    <div class="form-group no-margin">
                                        <%--<button class="theme-btn btn-style-one" type="submit" name="submit-form">LOGIN</button>--%>
                                        <asp:Button ID="btnlogin" runat="server" Text="LOGIN" class="theme-btn btn-style-one" OnClick="btn_login_Click" />
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:HyperLink ID="HyperLink1" runat="server"><a href="forgetPass.aspx" class="psw" style="color: #0000FF">Lost your password?</a></asp:HyperLink>
                                                            </div>
                        <%--</form>--%>
                            
                    </div>
                    <!--End Login Form -->
                </div>
                
                <div class="column col-md-6 col-sm-12 col-xs-12">
                    <h2>Register</h2>
                    
                    <!-- Register Form -->
                    <div class="login-form register-form">
                        <!--Login Form-->
                        <%--<form method="post" action="https://expert-themes.com/html/ourland/contact.html">--%>
                        
                            <div class="form-group">
                                <label>Name</label>
                                <%--<input type="text" name="username" placeholder="Your Email" required>--%>
                                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                                <asp:Label ID="lblname" runat="server" Text="Please Enter Your Name" ForeColor="Red" Visible="false"></asp:Label>
                                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Name" ControlToValidate="txtname"></asp:RequiredFieldValidator>--%>
                            </div>
                        <div class="form-group">
                                <label>Email ID</label>
                                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                             <asp:Label ID="lblema" runat="server" Text="Please Enter Your EmailId" ForeColor="Red" Visible="false"></asp:Label> <asp:Label ID="lblformemail" runat="server" Text="EmailId Should be in valid form" ForeColor="Red" Visible="false"></asp:Label>
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Name" ControlToValidate="txtemail"></asp:RequiredFieldValidator>--%>
                            </div>
                        <div class="form-group">
                                <label>Password</label>
                                <asp:TextBox ID="txtnpwd" runat="server" TextMode="Password"></asp:TextBox>
                             <asp:Label ID="lblpwd" runat="server" Text="Please Enter Your Password" ForeColor="Red" Visible="false"></asp:Label><asp:Label ID="lblpwdlength" runat="server" Text="Password length 8 character and must contain letter and number" ForeColor="Red" Visible="false"></asp:Label>
                            </div>
                        <div class="form-group">    
                            <label>Confirm Password</label>
                                <asp:TextBox ID="txtcpwd" runat="server" TextMode="Password"></asp:TextBox>
                             <asp:Label ID="lblcpwd" runat="server" Text="Please Enter Confirm Password" ForeColor="Red" Visible="false"></asp:Label><asp:Label ID="lblcheckpwd" runat="server" Text="New Password and Confirm Password should be same" ForeColor="Red" Visible="false"></asp:Label>
                            </div>
                        <div class="form-group">    
                            <label>Gender</label>&nbsp; &nbsp; &nbsp;<br />
                                <asp:RadioButton ID="male" runat="server" GroupName="gen" text="Male" Checked="True" />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                <asp:RadioButton ID="female" runat="server" GroupName="gen" Text="Female" /><br />
                            </div>
                        <div class="form-group">    
                            <label>Phone Number</label>
                                <asp:TextBox ID="txtphno" runat="server"></asp:TextBox>
                             <asp:Label ID="lblpno" runat="server" Text="Please Enter Your Phone No" ForeColor="Red" Visible="false"></asp:Label><asp:Label ID="lbldigit" runat="server" Text="Phone No should be of 10 digits" ForeColor="Red" Visible="false"></asp:Label>
                            </div>
                        <div class="form-group">    
                            <label>Image</label>
                                <asp:Image ID="img1" runat="server" Height="100px"  Width="100px" />
                            <asp:FileUpload ID="FileUpload1" runat="server" onchange="ImagePreview(this);" /><asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox><br /><br />
                            <asp:Label ID="lblphoto" runat="server" Text="Please Select Photo" ForeColor="Red" Visible="false"></asp:Label><asp:Label ID="lblph" runat="server" Text="Please select .jpg or .png files" ForeColor="Red" Visible="false"></asp:Label>
                          <%--&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;  <asp:Button ID="btnins" runat="server" Text="Insert" height="25px" Width="70px" OnClick="btnins_Click" CausesValidation="False" EnableViewState="False" UseSubmitBehavior="False"/>--%>

                            </div>
                            
                            <div class="form-group text-right">
                                <%--<button class="theme-btn btn-style-one" type="submit" name="submit-form">Register</button>--%>
                                <asp:Button ID="btnreg" runat="server" Text="Register" class="theme-btn btn-style-one" OnClick="btn_reg_Click" />
                            </div>
                            
                      <%--  </form>     --%> 
                    </div>
                    <!--End Register Form -->
                </div>
            </div>
        </div>
    </section>  
         <%--</form>--%>
    <!--End Login Section-->

    

</div>
<!--End pagewrapper-->
<!-- Color Palate / Color Switcher -->
    
</asp:Content>

