using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Data;
using System.Text.RegularExpressions;
using System.Configuration;
using System.Security.Cryptography;
using System.Text;
using System.IO;

public partial class User_Default3 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string qry;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public static string Encrypt_QueryString(string str)
    {
        string EncrptKey = "2013;[pnuLIT)WebCodeExpert";
        byte[] byKey = { };
        byte[] IV = { 18, 52, 86, 120, 144, 171, 205, 239 };
        byKey = System.Text.Encoding.UTF8.GetBytes(EncrptKey.Substring(0, 8));
        DESCryptoServiceProvider des = new DESCryptoServiceProvider();
        byte[] inputByteArray = Encoding.UTF8.GetBytes(str);
        MemoryStream ms = new MemoryStream();
        CryptoStream cs = new CryptoStream(ms, des.CreateEncryptor(byKey, IV), CryptoStreamMode.Write);
        cs.Write(inputByteArray, 0, inputByteArray.Length);
        cs.FlushFinalBlock();
        return Convert.ToBase64String(ms.ToArray());
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string val = Encrypt_QueryString(txtuname.Text.Trim());

        //encripto = this.Encrypt(txtuname.Text.Trim());
        //Label3.Text = encripto;

        string email = txtuname.Text;
        Regex regex = new Regex(@"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$");
        Match match = regex.Match(email);
        if (email == "")
        {
            lblema.Visible = true;
            lblformemail.Visible = false;
        }
        else if (match.Success)
        {
            cn.Open();
            qry = "select Emailid from register";
            SqlCommand cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    string emai = dr["Emailid"].ToString();
                    if (emai == txtuname.Text)
                    {
                        HyperLink1.Visible = false;
                        MailMessage mail = new MailMessage();
                        string mailid = txtuname.Text;
                        mail.To.Add(mailid);
                        mail.From = new MailAddress("universalb123@gmail.com");
                        mail.Subject = "Forget Password";
                        //string Body = "Click below link for change password" + "<br />" +
                        //     "http://localhost:42919/User/Confirm.aspx?ema=" + txtuname.Text +
                        //     "<br />" + "Universal Builders";
                        string Body = "Click below link for change password" + "<br />" +
                             "http://localhost:42919/User/Confirm.aspx?ema=" + val +
                             "<br />" + "Universal Builders";
                        mail.Body = Body;
                        mail.IsBodyHtml = true;
                        SmtpClient smtp = new SmtpClient();
                        smtp.Host = "smtp.gmail.com";
                        smtp.Credentials = new System.Net.NetworkCredential("universalb123@gmail.com", "unibuilders3552");
                        smtp.Port = 587;  //465
                        smtp.EnableSsl = true;
                        smtp.Send(mail);
                        //break;
                        Response.Redirect("Login.aspx");
                    }
                    else
                    {
                        Label4.Text = "Please Register Your Mail Id";
                        HyperLink1.Visible = true;
                    }

                }
            }
            cn.Close();
        }
        else
        {
            lblformemail.Visible = true;
            lblema.Visible = false;
        }
    }
}