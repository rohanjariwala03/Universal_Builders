<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="add_city.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        &nbsp;
   <div class="row">
       <div class="col-lg-12">
           <div class="card">


               <div class="card-body">
                   <h4 class="card-title">Add State </h4>

                   <div class="form-group has-warning has-feedback m-b-40">
                       <label for="input6">Country</label>
                       <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                           <ContentTemplate>
                               <asp:DropDownList ID="ddlcountry" runat="server" class="form-control" AutoPostBack="True" DataSourceID="SqlDataSource_country" DataTextField="coname" DataValueField="coid"></asp:DropDownList>
                               <asp:SqlDataSource ID="SqlDataSource_country" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [country]"></asp:SqlDataSource>
                           </ContentTemplate>
                       </asp:UpdatePanel>
                   </div>

                   <div class="form-group has-warning has-feedback m-b-40">
                       <label for="input7">State</label>
                       <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                           <ContentTemplate>
                               <asp:DropDownList ID="ddlstate" runat="server" class="form-control" AutoPostBack="True" DataSourceID="SqlDataSource_state" DataTextField="sname" DataValueField="sid"></asp:DropDownList>
                               <asp:SqlDataSource ID="SqlDataSource_state" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [state] WHERE ([coid] = @coid)">
                                   <SelectParameters>
                                       <asp:ControlParameter ControlID="ddlcountry" PropertyName="SelectedValue" Name="coid" Type="Int32"></asp:ControlParameter>

                                   </SelectParameters>
                               </asp:SqlDataSource>
                           </ContentTemplate>
                       </asp:UpdatePanel>
                   </div>


                   <div class="form-group has-warning m-b-40">
                       <label for="input8">City Name</label>
                       <asp:RequiredFieldValidator ControlToValidate="txtct" ErrorMessage="Enter City Name" ForeColor="red" ID="RequiredFieldValidator6" runat="server" Display="None" ValidationGroup="driver" Font-Size="X-Large"></asp:RequiredFieldValidator>
                       <asp:TextBox runat="server" type="text" class="form-control" ID="txtct"></asp:TextBox>

                   </div>


                   <div class="form-group" style="text-align: center">
                       <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ValidationGroup="driver" ShowSummary="False" DisplayMode="BulletList" Font-Bold="True" Font-Size="Large" HeaderText="All fields are mendatory" BorderStyle="Ridge" BackColor="#0000CC" />
                       <asp:Button runat="server" ID="btnsub" Text="SUBMIT" ValidationGroup="driver" class="btn-rounded btn-success" OnClick="btnsub_Click" />
                   </div>


                   <br />
                  
                   <center>
                   <div>
                   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ciid" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." CellPadding="4" ForeColor="#333333" GridLines="None">
                       <AlternatingRowStyle BackColor="White" />
                       <Columns>
                           <asp:BoundField DataField="ciid" HeaderText="city id" ReadOnly="True" SortExpression="ciid" InsertVisible="False" />
                           <asp:BoundField DataField="ciname" HeaderText="ciname" SortExpression="ciname" />
                           <asp:BoundField DataField="sname" HeaderText="state name" SortExpression="sname" />
                           <asp:BoundField DataField="coname" HeaderText="c name" SortExpression="coname" />
                           <asp:CommandField ShowDeleteButton="True" />
                       </Columns>
                       <EditRowStyle BackColor="#2461BF" />
                       <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                       <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                       <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                       <RowStyle BackColor="#EFF3FB" />
                       <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                       <SortedAscendingCellStyle BackColor="#F5F7FB" />
                       <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                       <SortedDescendingCellStyle BackColor="#E9EBEF" />
                       <SortedDescendingHeaderStyle BackColor="#4870BE" />
                   </asp:GridView>
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [cit] WHERE [ciid] = @ciid" SelectCommand="SELECT cit.ciid, cit.ciname, state.sname, country.coname FROM state INNER JOIN country ON state.coid = country.coid INNER JOIN cit ON state.sid = cit.sid">
                    <DeleteParameters>
                           <asp:Parameter Name="ciid" Type="Int32" />
                       </DeleteParameters>   
                   </asp:SqlDataSource>
                    </div>
                       </center>

               </div>
           </div>
       </div>
   </div>
    </form>

</asp:Content>

