using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using paytm;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;

public partial class User_Callback : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    string ot;
    string oi;
    string ema;

    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        qry = "insert into Booking values('" + Session["uid"].ToString() + "','" + Session["pid"].ToString() + "','" + Session["amt"].ToString() + "')";
        SqlCommand cmd = new SqlCommand(qry,cn);
        cmd.ExecuteNonQuery();

        cn.Close();
        cn.Open();
        string q;
        q = "update Propertyowner set Status='" + 1 + "' where Pid='" + Session["pid"].ToString() + "'";
        SqlCommand c = new SqlCommand(q,cn);
        c.ExecuteNonQuery();
        cn.Close();


        MailMessage mail = new MailMessage();
        string mailid = Session["email"].ToString();
        mail.To.Add(mailid);
        mail.From = new MailAddress("universalb23@gmail.com");
        mail.Subject = "Booking";
        //string Body = "You reg Successfully to our Real Estate Website please verify your account by clicking below link"
        //    + "<br />" +
        //  "http://localhost:42919/User/Verification.aspx?ema=" + txtemail.Text +
        //   "<br />" + "Universal Builders";
        string Body = "Thnak You for Booking" + "<br />" + "You have Booked a property with paying an booking amount of " + Session["amt"].ToString() 
                + "<br />" +
                "Universal Builders";
        mail.Body = Body;
        mail.IsBodyHtml = true;
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        //smtp.Credentials = new System.Net.NetworkCredential("dell123co@gmail.com", "Dell@123");
        smtp.Credentials = new System.Net.NetworkCredential("universalb123@gmail.com", "unibuilders3552");
        smtp.Port = 587;  //465
        smtp.EnableSsl = true;
        smtp.Send(mail);

        string un;

        cn.Open();
        string s;
        s = "select * from PropertyOwner where Pid='" + Session["pid"].ToString() + "'";
        SqlCommand cm = new SqlCommand(s,cn);
        SqlDataReader d = cm.ExecuteReader();
        if (d.HasRows)
        {
            d.Read();
            //un = d[""].ToString();
            ot = d["OwnerType"].ToString();
            oi = d["OwnerId"].ToString();
            d.Close();
            if (ot == "Owner")
            {
                s = "select * from register where Uid='" + oi + "'";
                SqlCommand cmo = new SqlCommand(s,cn);
                SqlDataReader dri = cmo.ExecuteReader();
                if (dri.HasRows)
                {
                    dri.Read();
                    ema = dri["Emailid"].ToString();
                    dri.Close();
                }
            }
            else if (ot == "Dealer")
            {
                s = "select * from Dealer where Did='" + oi + "'";
                SqlCommand cmo = new SqlCommand(s, cn);
                SqlDataReader dri = cmo.ExecuteReader();
                if (dri.HasRows)
                {
                    dri.Read();
                    ema = dri["Demail"].ToString();
                    dri.Close();
                }
            }
            else
            {
                s = "select * from Builder where Bid='" + oi + "'";
                SqlCommand cmo = new SqlCommand(s, cn);
                SqlDataReader dri = cmo.ExecuteReader();
                if (dri.HasRows)
                {
                    dri.Read();
                    ema = dri["Bemail"].ToString();
                    dri.Close();
                }
            }

            MailMessage mai = new MailMessage();
            string maili = ema;
            mai.To.Add(maili);
            mai.From = new MailAddress("universalb23@gmail.com");
            mai.Subject = "Booked";
            //string Body = "You reg Successfully to our Real Estate Website please verify your account by clicking below link"
            //    + "<br />" +
            //  "http://localhost:42919/User/Verification.aspx?ema=" + txtemail.Text +
            //   "<br />" + "Universal Builders";
            string Bod = "Your Property has been Booked by the user " + Session["nam"].ToString() + " By Paying Token Amount of RS " + Session["amt"].ToString() 
                    + "<br />" +
                    "Universal Builders";
            mai.Body = Bod;
            mai.IsBodyHtml = true;
            SmtpClient smt = new SmtpClient();
            smt.Host = "smtp.gmail.com";
            //smtp.Credentials = new System.Net.NetworkCredential("dell123co@gmail.com", "Dell@123");
            smt.Credentials = new System.Net.NetworkCredential("universalb123@gmail.com", "unibuilders3552");
            smt.Port = 587;  //465
            smt.EnableSsl = true;
            smt.Send(mai);
        }
        
        
        cn.Close();


        Response.Redirect("../User/PropertyAll.aspx");
        //Session["payment"] = 1;
        //Label1.Text = Request.Form["TXNID"];
    }
}