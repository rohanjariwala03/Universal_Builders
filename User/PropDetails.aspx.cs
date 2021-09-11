using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class User_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string prid;
    string qry;
    string qr;
    DataSet ds;
    string id;
    SqlDataAdapter dap;
    DataRow datar;
    int loan;
    string mob;
    string ema;
    int i;
    string uid;

    protected void Page_Load(object sender, EventArgs e)
    {
        prid = Request.QueryString.Get("proid");
        
        lblrep.Text = prid;
        cn.Open();
        qry = "select * from PropertyOwner where Pid='" + prid + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
          
            lblname.Text= dr["Pname"].ToString();
            lblsq.Text = dr["TotalSquarefeet"].ToString();
            lblroom.Text = dr["Bedroom"].ToString();
            lblkitchen.Text = dr["Kitchen"].ToString();
            lblbathroom.Text = dr["Bathroom"].ToString();
            lbldesc.Text = dr["Pdesc"].ToString();
            lblprice.Text = dr["TotalPrice"].ToString();
            lblcat.Text = dr["PCat"].ToString();
            lblpri.Text = dr["TotalPrice"].ToString();
            if (lblcat.Text == "Rent")
            {
                lblkj.Visible = false;
                btnbkl.Visible = false;
            }

            lbltype.Text = dr["Ptype"].ToString();
            lblsqft.Text = dr["TotalSquarefeet"].ToString();
            lblcountry.Text = dr["Cid"].ToString();
            lblcity.Text = dr["Ciid"].ToString();
            lblbed.Text = dr["Bedroom"].ToString();
            lblbath.Text = dr["Bathroom"].ToString();
            lblkit.Text = dr["Kitchen"].ToString();
            Label1.Text = dr["Paddress"].ToString();
        }
        cn.Close();
        cn.Open();
        qr = "select * from gallry where Pid='" + prid + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            
        }
        cn.Close();


        qry = "select * from gallry where pid='" + prid +"'";
        dap = new SqlDataAdapter(qry, cn);
        //dr = cmd.ExecuteReader();
        ds = new DataSet();
        dap.Fill(ds);
        DataTable dt = new DataTable();
        dt = ds.Tables[0];
        int i = 0;
        if (dt != null && dt.Rows.Count > 0)
        {
            datar = dt.Rows[0];
            if (datar != null)
            {
                Image1.ImageUrl = "../Admin/img/PropGal/" + datar["gimg"].ToString();
            }
            datar = dt.Rows[1];
            if (datar != null)
            {
                Image2.ImageUrl = "../Admin/img/PropGal/" + datar["gimg"].ToString();
            }
            datar = dt.Rows[2];
            if (datar != null)
            {
                Image3.ImageUrl = "../Admin/img/PropGal/" + datar["gimg"].ToString();
            }
            datar = dt.Rows[3];
            if (datar != null)
            {
                Image4.ImageUrl = "../Admin/img/PropGal/" + datar["gimg"].ToString();
            }

        }
        txtamt.Text = lblprice.Text;
    }
    protected void txtsb_Click(object sender, EventArgs e)
    {
        try
        {
            string u = Session["uid"].ToString();
            cn.Open();
            string q;
            q = "insert into Review values('" + u + "','" + txtmsg.Text + "')";
            SqlCommand cmd = new SqlCommand(q,cn);
            cmd.ExecuteNonQuery();
            cn.Close();
        }
        catch { Response.Redirect("Login.aspx"); }
    }
    protected void btnbkl_Click(object sender, EventArgs e)
    {
        Session["amt"] = lbltoken.Text;
        Session["pid"] = prid;
        try { uid = Session["uid"].ToString(); }
        catch { Response.Redirect("Login.aspx"); }

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
        i = random.Next(0, 999999999);
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