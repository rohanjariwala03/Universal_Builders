using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using paytm;

public partial class User_Default2 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

    SqlCommand cmd = new SqlCommand();
    SqlCommand cm = new SqlCommand();
    SqlDataReader dr;
    string qry;
    string paid;
    string uid;
    string mob;
    string ema;
    int i;

    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {
            uid = Session["uid"].ToString();
        }
        catch { Response.Redirect("Login.aspx"); }
        cn.Open();
        //qry = "select * from Bidprop where status='" + 0 + "'";
        qry = "SELECT TOP 1 AuctionProp.pnam, AuctionProp.pdesc, AuctionProp.ptype, AuctionProp.paid, AuctionProp.Bedroom, AuctionProp.Bathroom, AuctionProp.Kitchen, AuctionProp.TotalSquareFeet, AuctionProp.StartBid, AuctionProp.Paddress, AuctionProp.Pimg, AuctionProp.coid, AuctionProp.sid, AuctionProp.Ciid, AuctionProp.Status, Bidprop.paid AS Expr1, Bidprop.Uid, Bidprop.bidamt, Bidprop.bid, Bidprop.status AS Expr2 FROM AuctionProp INNER JOIN Bidprop ON AuctionProp.paid = Bidprop.paid where Bidprop.status='" + 0 + "' ORDER BY bid DESC";
        SqlCommand cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            lbladd.Text = dr["Paddress"].ToString();
            lblbath.Text = dr["Bathroom"].ToString();
            lblbed.Text = dr["Bedroom"].ToString();
            lbldesc.Text = dr["pdesc"].ToString();
            lblkit.Text = dr["Kitchen"].ToString();
            lblnam.Text = dr["pnam"].ToString();
            lblprice.Text = dr["bidamt"].ToString();
            lblsqft.Text = dr["TotalSquareFeet"].ToString();
            Image1.ImageUrl = "~/Admin/img/" + dr["Pimg"].ToString();
            paid = dr["paid"].ToString();
        }
        cn.Close();
        
    }

    protected void btnpay_Click(object sender, EventArgs e)
    {
        cn.Open();
        qry = "select * from register where Uid='" + uid + "'";
        SqlCommand cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            //id = dr["Uid"].ToString();
            mob = dr["Phoneno"].ToString();
            ema = dr["Emailid"].ToString();
        }
        cn.Close();

        Dictionary<String, String> paytmParams = new Dictionary<String, String>();
        String merchantMid = "oKTGFA99554613086023";
        // Key in your staging and production MID available in your dashboard
        String merchantKey = "N4G%MYeUiTkCyJ59";
        // Key in your staging and production merchant key available in your dashboard

        Random random = new Random();
        i = random.Next(0,999999999);
        string o = "order";
        String orderId = o + i;

        String channelId = "WEB";
        //string custId = "25";
        //String mobileNo = "1234567890";
        //string email = "abc@gmail.com";
        String custId = uid;
        String mobileNo = mob;
        String email = ema;
        String txnAmount = lbltoken.Text;
        //Session["pid"] = "25";
        //Session["amt"] = txnAmount;



        String website = "WEBSTAGING";
        // This is the staging value. Production value is available in your dashboard
        String industryTypeId = "Retail";
        // This is the staging value. Production value is available in your dashboard
        String callbackUrl = "http://localhost:42919/User/Callback.aspx";
        paytmParams.Add("MID", merchantMid);
        paytmParams.Add("CHANNEL_ID", channelId);
        paytmParams.Add("WEBSITE", website);
        paytmParams.Add("CALLBACK_URL", callbackUrl);
        paytmParams.Add("CUST_ID", custId);
        paytmParams.Add("MOBILE_NO", mobileNo);
        paytmParams.Add("EMAIL", email);
        paytmParams.Add("ORDER_ID", orderId);
        paytmParams.Add("INDUSTRY_TYPE_ID", industryTypeId);
        paytmParams.Add("TXN_AMOUNT", txnAmount);
        // for staging 
        string transactionURL = "https://securegw-stage.paytm.in/theia/processTransaction";
        // for production 
        // string transactionURL = "https://securegw.paytm.in/theia/processTransaction"; 
        try
        {
            string paytmChecksum = paytm.CheckSum.generateCheckSum(merchantKey, paytmParams);

            string outputHTML = "<html>";
            outputHTML += "<head>";
            outputHTML += "<title>Merchant Check Out Page</title>";
            outputHTML += "</head>";
            outputHTML += "<body>";
            outputHTML += "<center><h1>Please do not refresh this page...</h1></center>";
            outputHTML += "<form method='post' action='" + transactionURL + "' name='f1'>";
            outputHTML += "<table border='1'>";
            outputHTML += "<tbody>";
            foreach (string key in paytmParams.Keys)
            {
                outputHTML += "<input type='hidden' name='" + key + "' value='" + paytmParams[key] + "'>";
            }
            outputHTML += "<input type='hidden' name='CHECKSUMHASH' value='" + paytmChecksum + "'>";
            outputHTML += "</tbody>";
            outputHTML += "</table>";
            outputHTML += "<script type='text/javascript'>";
            outputHTML += "document.f1.submit();";
            outputHTML += "</script>";
            outputHTML += "</form>";
            outputHTML += "</body>";
            outputHTML += "</html>";
            Response.Write(outputHTML);
            //ViewBag.output = outputHTML;

        }
        catch (Exception ex)
        {
            Response.Redirect("PaymentCancel.aspx");
            //Response.Redirect("callbackUrl.aspx");
            //  ex.Message = "Exception message: " + ex.Message.ToString();

        }
    }
}