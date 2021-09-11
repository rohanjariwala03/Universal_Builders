using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;
using System.Configuration;

public partial class Admin_HideShow : System.Web.UI.Page
{
    string prid;
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlCommand cm = new SqlCommand();
    string qry; 
    SqlDataReader dr;
    string st;

    protected void Page_Load(object sender, EventArgs e)
    {
        string b;
        b = "1";
        string c;
        c= "1";
        String d;
        d= "0";
        prid = Request["proid"];
        cn.Open();
        qry = "select Status from PropertyOwner where pid='" + prid + "'";
        SqlCommand cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        
        if(dr.HasRows)
        {
            dr.Read();
            st= dr["Status"].ToString();
            cn.Close();
            if (st == b)
            {
                cn.Open();
                qry = "update PropertyOwner set Status='" + d + "' where Pid='" + prid + "'";
                SqlCommand cm = new SqlCommand(qry, cn);
                cm.ExecuteNonQuery();

                //MailMessage mail = new MailMessage();
                //string mailid = ViewState["email"].ToString();
                //mail.To.Add(mailid);
                //mail.From = new MailAddress("universalb123@gmail.com");
                //mail.Subject = "Approved";
                //string Body = "Your Property has been approved by the Universal Builder-Real Estate";
                //mail.Body = Body;
                //mail.IsBodyHtml = true;
                //SmtpClient smtp = new SmtpClient();
                //smtp.Host = "smtp.gmail.com";
                //smtp.Credentials = new System.Net.NetworkCredential("universalb123@gmail.com", "universalbuilders3552");
                //smtp.Port = 587;  //465
                //smtp.EnableSsl = true;
                //smtp.Send(mail);


                cn.Close();
            }
            else 
            {
                cn.Open();
                qry = "update PropertyOwner set Status='" + c + "' where Pid='" + prid + "'";
                SqlCommand cm = new SqlCommand(qry, cn);
                cm.ExecuteNonQuery();

                //string mailid = ViewState["email"].ToString();
                //mail.To.Add(mailid);
                //mail.From = new MailAddress("universalb123@gmail.com");
                //mail.Subject = "Approved";
                //string Body = "Your Property has been approved by the Universal Builder-Real Estate";
                //mail.Body = Body;
                //mail.IsBodyHtml = true;
                //SmtpClient smtp = new SmtpClient();
                //smtp.Host = "smtp.gmail.com";
                //smtp.Credentials = new System.Net.NetworkCredential("universalb123@gmail.com", "universalbuilders3552");
                //smtp.Port = 587;  //465
                //smtp.EnableSsl = true;
                //smtp.Send(mail);

                cn.Close();
            }
        }
        Response.Redirect("OwnerProperty.aspx");
        
    }
}