<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="User_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
    <script src="http://code.jquery.com/jquery-1.8.2.js"></script>
    <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
    <%--<script>
        $(function () {
            
                $('#Button1').click(function () {
                    $('#popup').dialog({
                        title: "login",
                        width: 500,
                        height: 500,
                        model: true,
                        button: {
                            close: function () {
                                $(this).dialog('close');
                            }
                        }
                    })
                })
            });

    </script>--%>



                                    <br />
                                        <br />
    
    <div>
        <div id="popup" title="Login" style="display:none">
            Login


            <div class="login-form">
                        <!--Login Form-->
                        <%--<form method="post" action="https://expert-themes.com/html/ourland/contact.html">--%>
                       
                            <div class="form-group">
                                <%--<label>Username or Email Address</label>--%>
                                <asp:Label ID="Label1" runat="server" Text="Username or Email Address"></asp:Label>
                                <%--<input type="text" name="username" placeholder="Name or Email " required>--%>
                                <asp:TextBox ID="txtuname" runat="server" placeholder="Name or Email "></asp:TextBox>
                            </div>
                            
                            <div class="form-group">
                                <%--<label>Enter Your Password</label>--%>
                                <asp:Label ID="Label2" runat="server" Text="Enter Your Password"></asp:Label>
                                <%--<input type="email" name="email" placeholder="Password" required>--%>
                                <asp:TextBox ID="txtpwd" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
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
                                        
                                        <asp:Button ID="btnlogin" runat="server" Text="LOGIN" class="theme-btn btn-style-one"  />
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:HyperLink ID="HyperLink1" runat="server"><a href="#" class="psw">Lost your password?</a></asp:HyperLink>
                                                            </div>
                        <%--</form>--%>
                            
                    </div>
        </div>
        <center>
        <input id="Button1" type="button" value="button" class="theme-btn btn-style-one" />
            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            </center>
    </div>
 

    <br />
    <br />


</asp:Content>

