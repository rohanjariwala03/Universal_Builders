using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net.Mail;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    string id;
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            id = Request.QueryString.Get("rpid");
            cn.Open();
            qry = "select * from ContactUs where ContactId='" + id + "'";
            SqlCommand cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                lblname.Text = dr["ConatctName"].ToString();
                lblemail.Text = dr["ContactEmail"].ToString();
                ViewState["email"] = dr["ContactEmail"].ToString();
                lblsubject.Text = dr["ConatactSubject"].ToString();
                lblmessage.Text = dr["ContactMessage"].ToString(); ;
            }

            cn.Close();
        }
    }
    protected void btnreply_Click(object sender, EventArgs e)
    {
        MailMessage mail = new MailMessage();
        string mailid = ViewState["email"].ToString();
        mail.To.Add(mailid);
        mail.From = new MailAddress("universalb123@gmail.com");
        mail.Subject = "Reply";
        string Body = txtreply.Text;
        mail.Body = Body;
        mail.IsBodyHtml = true;
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Credentials = new System.Net.NetworkCredential("universalb123@gmail.com", "unibuilders3552");
        smtp.Port = 587;  //465
        smtp.EnableSsl = true;
        smtp.Send(mail);
        //Label5.Text=mailid;
       Response.Redirect("ContactUsDetails.aspx");
        //Label1.Text = "email-id and check it..";
    }
}