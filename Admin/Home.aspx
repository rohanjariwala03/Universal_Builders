<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="dashboard">
	    <div class="container-fluid">
	        <div class="content-area">
	            <div class="dashboard-content">
	                <div class="row">
	                    <div class="col-lg-3 col-md-6 col-sm-6">
	                        <div class="ui-item bg-success">
	                            <div class="left">
	                                <h4>
                                        <asp:Label ID="lbltuser" runat="server" Text="Label"></asp:Label></h4>
	                                <p>Users</p>
	                            </div>
	                            <div class="right">
	                                <i class="la la-map-marker"></i>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="col-lg-3 col-md-6 col-sm-6">
	                        <div class="ui-item bg-warning">
	                            <div class="left">
	                                <h4><%--<asp:Label ID="lblusr" runat="server" Text="Label"></asp:Label>--%>
                                        <asp:Literal ID="lithits" runat="server"></asp:Literal> 
	                                </h4>
	                                <p>Website Visitors</p>
	                            </div>
	                            <div class="right">
	                                <i class="la la-eye"></i>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="col-lg-3 col-md-6 col-sm-6">
	                        <div class="ui-item bg-active">
	                            <div class="left">
	                                <h4>
                            <asp:Label ID="lblrev" runat="server" Text="Label"></asp:Label></h4>
	                                <p>Reviews</p>
	                            </div>
	                            <div class="right">
	                                <i class="la la-comments-o"></i>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="col-lg-3 col-md-6 col-sm-6">
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/Builder.aspx">
	                        <div class="ui-item bg-dark">
	                            <div class="left">
	                                <h4> <asp:Label ID="lblbuilder" runat="server" Text="Label"></asp:Label></h4>
	                                <p>Properties</p>
	                            </div>
	                            <div class="right">
	                                <i class="la la-heart-o"></i>
	                            </div>
	                        </div>
                                </asp:HyperLink>
	                    </div>
	                </div>



                   <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
	                <div class="row">
	                    <div class="column col-lg-6 col-md-12">

                                    <div class="tabs-content" >
                                    	<!-- Tab Active tab-->
                						<div class="tab active-tab" id="pending">
                                            <div class="comments-area">
				                                <!--comment-->
				                                <%--<article class="message-box">
				                                    <div class="thumb-box">
				                                        <figure class="thumb"><img src='<%#Eval("pimg") %>' alt="">
                                                            <%--<asp:Image ID="Image1" runat="server"  ImageUrl='~/Images/<%#Eval("Ima") %>' />--%>
				                                        <%--</figure>
				                                        <a href="#" class="reply-btn">Reply Now</a>
				                                    </div>
				                                    <div class="content-box">
				                                        <div class="name">--%><%--<%#Eval("Nam") %>--%><%--</div>
				                                        <span class="date"><i class="la la-calendar"></i> 8:42 PM 1/28/2017</span>
				                                        <div class="text"><%#Eval("Desc") %></div>
				                                    </div>
				                                </article>--%>

                                                <article class="message-box">
				                                    <div class="thumb-box">
				                                        <figure class="thumb"><img src='../Images/<%#Eval("Ima") %>' alt=""></figure>
				                                       <%-- <a href="#" class="reply-btn">Reply Now</a>--%>
				                                    </div>
				                                    <div class="content-box">
				                                        <div class="name"><%#Eval("Nam") %></div>
				                                        <%--<span class="date"><i class="la la-calendar"></i> 8:42 PM 1/28/2017</span>--%>
				                                        <div class="text"><%#Eval("Desc") %></div>
				                                    </div>
				                                </article>

				                                
					                        </div>
                                        </div>
                                </div>
	                    	</div>
	                    </div>
                  </ItemTemplate>
                  </asp:Repeater>
      	
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT register.Nam, register.Ima, Review.[Desc] FROM Review INNER JOIN register ON Review.Uid = register.Uid"></asp:SqlDataSource>
      	
                    </div>
                </div>
            </div>
     </div>
 
</asp:Content>

