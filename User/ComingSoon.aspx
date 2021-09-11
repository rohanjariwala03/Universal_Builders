<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.master" AutoEventWireup="true" CodeFile="ComingSoon.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    


<div class="page-wrapper">
    <!-- Preloader -->
    <div class="preloader"></div>
    
       <section class="comming-soon" style="background-image:url(images/background/4.jpg)">
        <div class="auto-container">
            <div class="content">
                <%--<div class="content-inner">--%>
                   <%-- <div class="logo"><a href="index-2.html"><img src="images/logo-2.png" alt="" /></a></div>--%>
                    <h2>Comming Soon</h2>
                    <div class="time-counter"><div class="time-countdown clearfix" data-countdown="2019/1/19"></div></div>
                    <div class="text">Our Website is under construction. stay tuned for something amazing!. <br> Subscribe to be notified,</div>
                    
                    </div>
            </div>
      <%--  </div>--%>
    </section>

</div>
<!--End pagewrapper-->

<script src="js/jquery.js"></script> 
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-ui.js"></script>
<script src="js/jquery.countdown.js"></script>
<script src="js/appear.js"></script>
<script src="js/script.js"></script>

</asp:Content>

