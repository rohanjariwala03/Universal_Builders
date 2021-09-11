<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.master" AutoEventWireup="true" CodeFile="LoanCalculator.aspx.cs" Inherits="User_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <%--<html>
        <head>
            <title></title>--%>
            <style>
                body {
                    /*background: #DAB362;*/
                    /*background: rgba(0, 138, 255, 0.51);*/
                    background: linear-gradient(skyblue,red);
                }

                input:focus, 
                    textarea:focus {
                    outline: none;
                    }

                p {
                    max-height: 60px;
                }

                h1 {
                    color: #ccc;
                    font-size: 1.4em;
                    font-weight: 700;
                    margin: 0;
                    text-align:center;
                }

                .calc {
                    background: #fff;
                    border-radius: 6px;
                    box-shadow: 15px 15px 0px rgba(0,0,0,.1);
                    margin: 50px auto;
                    padding: 20px;
                    padding-top: 30px;
                    width: 300px;
                    .header {
                        background: url('https://s3-us-west-2.amazonaws.com/s.cdpn.io/95581/rx7-Spectrum-Photography.jpg');
                        background-position: 106% 89%;
                        background-size: 101%;
                        border-bottom: 2px solid #f26964;
                        border-top-left-radius: 6px;
                        border-top-right-radius: 6px;
                        bottom: 30px;
                        height: 102px;
                        position: relative;
                        right: 20px;
                        width: 340px;
                    }
                    input {
                        background: #f5f5f5;
                        border: 0;
                        border: 1px solid #eee;
                        border-radius: 6px;
                        max-width: 215px;
                        padding: 20px;
                        padding-left: 65px;
                        margin-bottom: 10px;
                        width: 100%;
                    }

                    .btn {
                        background: #f26964;
                        border: 0;
                        border-radius: 6px;
                        box-shadow: 0px 3px 0px #c1524e;
                        color: #fff;
                        font-size: 1.2em;
                        padding: 20px;
                        position: relative;
                        text-shadow: 1px 1px 0px rgba(0,0,0,.1);
                        width: 100%;
                        &:active {
                            box-shadow:none;
                            top:3px;
                        }
                    }
                  #output {
                      border-radius: 6px;
                      color: #919191;
                      font-size: 28px;
                      font-weight: bold;
                      height: 34px;
                      margin: 0 auto;
                      padding: 11px;
                      text-align: center;
                      vertical-align: middle;
                      visibility: visible;
                  }
                }

                .fa {
                    background-color: #f26964;
                    border-bottom-left-radius: 6px;
                    border-top-left-radius: 6px;
                    height: 18px;
                    bottom: 68px;
                    color: white;
                    padding: 20px;
                    position: relative;
                    width: 12px;
                }
                .fa-usd {
                    &:before {
                        bottom: 1px;
                        font-size: 18px;
                        left: 2px;
                        position: relative;
                    }
                }

                .interest {
                    &:before {
                        content: "%";
                        font-weight: bold;    
                    }
                }
           </style>
       <%-- </head>
        <body>
            <form id="Form1" runat="server">--%>
    <div class="calc">
  <div class="header">
    
  </div>
  <h1>Loan Calculator</h1>
        <br />

    <p>
        <%--<input type="text" id="amount" name="amount" placeholder="Loan Amount">--%>
       <%-- <label for="amount" class="fa fa-usd"></label>--%>
        <asp:Label ID="lbl1" Text="Amount" runat="server"></asp:Label>
         <asp:TextBox runat="server" ID="txtamt" placeholder="Loan Amount" BorderWidth="1px" BorderStyle="Solid"></asp:TextBox><br /><br />
       
    </p>
    <p>
        <%--<input type="text" id="months" placeholder="Months">--%>
    <%--  <label for="amount" class="fa fa-calendar"></label>--%>
          <asp:Label ID="lbl2" Text="Months" runat="server"></asp:Label>&nbsp;
         <asp:TextBox runat="server" ID="txtmnt" placeholder="Months" BorderWidth="1px" BorderStyle="Solid"></asp:TextBox><br /><br />
    </p>
    <p>
        <%--<input type="text" id="years" placeholder="Years">--%>
      <%--<label for="amount" class="fa fa-calendar"></label>--%>
         <asp:Label ID="lbl3" Text="Years" runat="server"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:TextBox runat="server" ID="txtyr" placeholder="Months" BorderWidth="1px" BorderStyle="Solid"></asp:TextBox><br /><br />
    </p>
    <p>
        <%--<input type="text" id="interest" placeholder="Interest Rate">--%>
       <%-- <label for="amount" class="fa interest"></label>--%>
           <asp:Label ID="lbl4" Text="Interest" runat="server"></asp:Label>&nbsp;
         <asp:TextBox runat="server" ID="txtint" placeholder="Interest Rate" BorderWidth="1px" BorderStyle="Solid"></asp:TextBox><br /><br />
    </p>
   <p>
        <%--<input type="text" id="down" placeholder="Down Payment">--%>
        <%--<label for="amount" class="fa fa-arrow-down"></label>--%>
          <asp:Label ID="lbl5" Text="DP" runat="server"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:TextBox runat="server" ID="txtdp" placeholder="Down Payment" BorderWidth="1px" BorderStyle="Solid"></asp:TextBox><br /><br />
    </p>
    <p>
        <%--<button class="btn" onclick="myFunction()">Calculate</button>--%>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnsub" class="btn" runat="server" Text="Calculate"/>
    </p>
    <%--<p id="output">Monthly Payment</p>--%>
        <asp:Label ID="lblamt" runat="server" Text="Monthly Payment"></asp:Label>
</div>
           <%--</form>
                 </body>
        </html>--%>
</asp:Content>

