using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Net.Mail;

public partial class User_Default3 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

    SqlCommand cmd = new SqlCommand();
    SqlCommand cm = new SqlCommand();
    SqlDataReader dr;
    string qry;
    string paid;
    string uid;
    string ma;

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
        cn.Open();
        string o = "select TOP 1 * from Bidprop where uid='" + uid + "' ORDER BY bid DESC";
        SqlCommand c = new SqlCommand(o, cn);
        SqlDataReader d;
        d = c.ExecuteReader();
        if (d.HasRows)
        {
            d.Read();
            lbllast.Text = d["bidamt"].ToString();
        }
        cn.Close();
    }
    protected void btnbid_Click(object sender, EventArgs e)
    {
        string q;
        cn.Open();
        int bi;
        bi = Convert.ToInt32(lblprice.Text) + 50000;
        q = "insert into Bidprop values('" + paid + "','" + uid + "','" + bi + "','" + 0 + "')";
        SqlCommand cmd = new SqlCommand(q, cn);
        cmd.ExecuteNonQuery();
        lblprice.Text = Convert.ToString(bi);
        cn.Close();
    }


    public string DateDiffsec(DateTime dt, DateTime dt1)
    {
        TimeSpan t1 = dt.Subtract(dt1);
        int days = t1.Days;
        int hours = t1.Hours;
        int minutes = t1.Minutes;
        int seconds = t1.Seconds;
        string s = "";
        if (days < 0)
            days = days * -1;
        if (hours < 0)
            hours = hours * -1;
        if (minutes < 0)
            minutes = minutes * -1;
        if (seconds < 0)
            seconds = seconds * -1;

        if (days == 0 && hours == 0 && minutes == 0)
        {

            s = seconds.ToString();
        }
        else if (days == 0 && hours == 0)
        {
            s = seconds.ToString();
        }
        else if (days == 0)
        {
            s = seconds.ToString();
        }
        else
        {
            s = seconds.ToString();
        }
        return s;
    }
    public string DateDiffmin(DateTime dt, DateTime dt1)
    {
        TimeSpan t1 = dt.Subtract(dt1);
        int days = t1.Days;
        int hours = t1.Hours;
        int minutes = t1.Minutes;
        int seconds = t1.Seconds;
        string s = "";
        if (days < 0)
            days = days * -1;
        if (hours < 0)
            hours = hours * -1;
        if (minutes < 0)
            minutes = minutes * -1;
        if (seconds < 0)
            seconds = seconds * -1;

        if (days == 0 && hours == 0)
        {
            s = minutes.ToString();
        }
        else if (days == 0)
        {
            s = minutes.ToString();
        }
        else
        {
            s = minutes.ToString();
        }

        return s;
    }
    public string DateDiffhours(DateTime dt, DateTime dt1)
    {
        TimeSpan t1 = dt.Subtract(dt1);
        int days = t1.Days;
        int hours = t1.Hours;
        int minutes = t1.Minutes;
        int seconds = t1.Seconds;
        string s = "";
        if (days < 0)
            days = days * -1;
        if (hours < 0)
            hours = hours * -1;
        if (minutes < 0)
            minutes = minutes * -1;
        if (seconds < 0)
            seconds = seconds * -1;



        if (days == 0)
        {
            s = hours.ToString();
        }
        else
        {
            s = hours.ToString();
        }


        return s;
    }
    //public string DateDiffdays(DateTime dt, DateTime dt1)
    //{
    //    TimeSpan t1 = dt.Subtract(dt1);
    //    int days = t1.Days;
    //    int hours = t1.Hours;
    //    int minutes = t1.Minutes;
    //    int seconds = t1.Seconds;
    //    string s = "";
    //    if (days < 0)
    //        days = days * -1;
    //    if (hours < 0)
    //        hours = hours * -1;
    //    if (minutes < 0)
    //        minutes = minutes * -1;
    //    if (seconds < 0)
    //        seconds = seconds * -1;


    //    {
    //        s = days.ToString();
    //    }
    //    return s;

    //}

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        try
        {
            cn.Open();
            qry = "Select starttime from AuctionProp where status='" + 0 + "'";
            cmd = new SqlCommand(qry, cn);
            DateTime dt = Convert.ToDateTime(cmd.ExecuteScalar());
           // DateTime dt = Convert.ToDateTime(s.ToString()).Date;
            //DateTime dt = DateTime dtcmd.ExecuteScalar());
            cn.Close();

            DateTime dt1 = DateTime.Now;
            DateTime dt2 = dt;
            //lblday.Text = DateDiffdays(dt1, dt2);
            lbl_hour.Text = DateDiffhours(dt1, dt2);
            lbl_min.Text = DateDiffmin(dt1, dt2);
            lbl_sec.Text = DateDiffsec(dt1, dt2);
            if (lbl_hour.Text == "0" && lbl_min.Text == "0" && lbl_sec.Text == "0")
            {
                
                Timer1.Enabled = false;
                string u;
                cn.Open();
                string q;
                q = "select max(Uid) from Bidprop";
                SqlCommand cm = new SqlCommand(q,cn);
                u=Convert.ToString(cm.ExecuteScalar());
                string qr;
                qr = "select * from register where Uid='" + u + "'";
                SqlCommand c = new SqlCommand(qr,cn);
                SqlDataReader d;
                d = c.ExecuteReader();
                if (d.HasRows)
                {
                    d.Read();
                    ma = d["Emailid"].ToString();
                }
                cn.Close();


                MailMessage mail = new MailMessage();
                string mailid = ma;
                mail.To.Add(mailid);
                mail.From = new MailAddress("universalb23@gmail.com");
                mail.Subject = "Auction";
                //string Body = "You reg Successfully to our Real Estate Website please verify your account by clicking below link"
                //    + "<br />" +
                //  "http://localhost:42919/User/Verification.aspx?ema=" + txtemail.Text +
                //   "<br />" + "Universal Builders";
                string Body = "Congratulation you have won the auction."
                     + "<br />" +
                     "To Book that property Please click below link and pay Token amount"
                        + "<br />" +
                      "http://localhost:42919/User/AuctionBook.aspx" +
                       "<br />" + "Universal Builders";
                mail.Body = Body;
                mail.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                //smtp.Credentials = new System.Net.NetworkCredential("dell123co@gmail.com", "Dell@123");
                smtp.Credentials = new System.Net.NetworkCredential("universalb123@gmail.com", "unibuilders3552");
                smtp.Port = 587;  //465
                smtp.EnableSsl = true;
                smtp.Send(mail);


                //Response.Redirect("Booking.aspx");
                //cn.Open();
                //string q;
                //q = "update AuctionProp set Status='" + 1 + "'";
                //SqlCommand cm = new SqlCommand(q, cn);
                //cm.ExecuteNonQuery();
                //cn.Close();

               
                //lblbath.Text = "END";
            }
        }
        catch(Exception ex)
        {
        }
    }
}