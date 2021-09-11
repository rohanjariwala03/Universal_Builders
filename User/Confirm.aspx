<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.master" AutoEventWireup="true" CodeFile="Confirm.aspx.cs" Inherits="User_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="page-wrapper">
    <!-- Preloader -->
    <div class="preloader"></div>

    
    <!--Page Title-->
       <section class="page-title" style="background-image:url(images/background/16.jpg);">
           <div class="auto-container">
               <div class="inner-container clearfix">
                   <h1>Forget Password</h1>
                   <ul class="bread-crumb clearfix">
                       <li><a href="index-2.html">Home</a></li>
                       <li>Forget Password</li>
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
                    <h2>Forget Password</h2>
                    
                    <!-- Login Form -->
                    <div class="login-form">
                        <!--Login Form-->
                        <%--<form method="post" action="https://expert-themes.com/html/ourland/contact.html">--%>
                       
                            <div class="form-group">
                                <%--<label>Username or Email Address</label>--%>
                                <asp:Label ID="Label2" runat="server" Text="New Password"></asp:Label>
                                <%--<input type="text" name="username" placeholder="Name or Email " required>--%>
                                <asp:TextBox ID="txtpasswd" runat="server" placeholder="New Password" TextMode="Password"></asp:TextBox>
                                <asp:Label ID="lblpwd" runat="server" Text="Please Enter Your Password" ForeColor="Red" Visible="false"></asp:Label><asp:Label ID="lblpwdlength" runat="server" Text="Password Must be between 4 to 8 character and include at least one digit" ForeColor="Red" Visible="false"></asp:Label>
                            </div>
                        <div class="form-group">
                                <%--<label>Username or Email Address</label>--%>
                                <asp:Label ID="Label1" runat="server" Text="Confirm Password"></asp:Label>
                                <%--<input type="text" name="username" placeholder="Name or Email " required>--%>
                                <asp:TextBox ID="txtconfirm" runat="server" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                             <asp:Label ID="lblcpwd" runat="server" Text="Please Enter Confirm Password" ForeColor="Red" Visible="false"></asp:Label><asp:Label ID="lblcheckpwd" runat="server" Text="New Password and Confirm Password should be same" ForeColor="Red" Visible="false"></asp:Label>
                            </div>
                            <div class="clearfix">
                                <div class="pull-left">
                                    <div class="form-group check-box">
                                        <asp:Label ID="Label4" runat="server" Text="" Font-Bold="False" Font-Size="Large" ForeColor="Red"></asp:Label>
                                    </div>
                                </div>
                                <div class="pull-right">
                                    <div class="form-group no-margin">
                                        <%--<button class="theme-btn btn-style-one" type="submit" name="submit-form">LOGIN</button>--%>
                                        <asp:Button ID="btnUpdate" runat="server" Text="Change Password" class="theme-btn btn-style-one" OnClick="Button1_Click" />
                                    </div>
                                </div>
                            </div>
                        <%--</form>--%>
                            
                    </div>
                    <!--End Login Form -->
                </div>
                </div>
            </div>
        </section>
        </div>
</asp:Content>

