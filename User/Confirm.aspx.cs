using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text.RegularExpressions;
using System.Configuration;
using System.Text;
using System.Security.Cryptography;
using System.IO;

public partial class User_Default3 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    string a;
    string encripto;

    protected void Page_Load(object sender, EventArgs e)
    {
        a =Decrypt_QueryString( Request.QueryString.Get("ema"));
      
        if (a == null)
        {
            Response.Redirect("~/User/ErrorPage.aspx");
        }
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

    public static string Decrypt_QueryString(string str)
    {
        str = str.Replace(" ", "+");
        string DecryptKey = "2013;[pnuLIT)WebCodeExpert";
        byte[] byKey = { };
        byte[] IV = { 18, 52, 86, 120, 144, 171, 205, 239 };
        byte[] inputByteArray = new byte[str.Length];

        byKey = System.Text.Encoding.UTF8.GetBytes(DecryptKey.Substring(0, 8));
        DESCryptoServiceProvider des = new DESCryptoServiceProvider();
        inputByteArray = Convert.FromBase64String(str);
        MemoryStream ms = new MemoryStream();
        CryptoStream cs = new CryptoStream(ms, des.CreateDecryptor(byKey, IV), CryptoStreamMode.Write);
        cs.Write(inputByteArray, 0, inputByteArray.Length);
        cs.FlushFinalBlock();
        System.Text.Encoding encoding = System.Text.Encoding.UTF8;
        return encoding.GetString(ms.ToArray());
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string pwd = txtpasswd.Text;
        Regex reg = new Regex(@"^(?=.*\d).{4,8}$");
        Match mat = reg.Match(pwd);
        if (txtpasswd.Text == "" & txtconfirm.Text == "")
        {
            lblpwd.Visible = true;
            lblcpwd.Visible = true;
            lblcheckpwd.Visible = false;
            lblpwdlength.Visible = false;
        }
        else if (txtpasswd.Text == "")
        {
            lblpwd.Visible = false;
            lblcpwd.Visible = true;
            lblcheckpwd.Visible = false;
            lblpwdlength.Visible = false;
        }
        else if (txtconfirm.Text == "")
        {
            lblpwd.Visible = true;
            lblcpwd.Visible = false;
            lblcheckpwd.Visible = false;
            lblpwdlength.Visible = false;
        }
        else if(mat.Success)
        {
            if (txtpasswd.Text == txtconfirm.Text)
            {
                string en;

                encripto = Encrypt_QueryString(txtpasswd.Text.Trim());

                en = Encrypt_QueryString(txtconfirm.Text.Trim());
                    cn.Open();
                    qry = "update register set Passwd='" + encripto + "', ConfirmPasswd='" + en + "' where Emailid='" + a + "'";
                    SqlCommand cmd = new SqlCommand(qry, cn);
                    cmd.ExecuteNonQuery();
                    cn.Close();
                    Response.Redirect("Login.aspx");

            }
            else
            {
                lblcheckpwd.Visible = true;
                lblpwd.Visible = false;
                lblcpwd.Visible = false;
                lblpwdlength.Visible = false;
            }
        }
        else 
        {
            lblcheckpwd.Visible = false;
            lblpwd.Visible = false;
            lblcpwd.Visible = false;
            lblpwdlength.Visible = true;
        }
    }
}