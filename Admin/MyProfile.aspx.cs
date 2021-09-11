using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Configuration;
using System.Text;
using System.Security.Cryptography;
using System.IO;

public partial class Admin_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string qry;
    Int32 u;
    string p;
    string encripto;
    string en;
    string enc;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            u = Convert.ToInt32(Session["uid"].ToString());
            txtfn.Text = Session["nam"].ToString();
            txtem.Text = Session["email"].ToString();
            //txtnpwd.Text = Session["pwd"].ToString();
            txtphn.Text = Session["pno"].ToString();
            img1.ImageUrl = "~/Images/" + Session["img"].ToString();
            txtau.Text = Session["abt"].ToString();
            ViewState["p"] = Session["pwd"].ToString();
            //txtau.Text = Session["uid"].ToString();
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


    protected void btnup_Click(object sender, EventArgs e)
    {
        if (txtau.Text == "" || txtem.Text == "" || txtfn.Text == "" || txtphn.Text == "")
        {
            lblfill.Visible = true;
        }
        else
        {
            lblfill.Visible = false;
            string a = Session["uid"].ToString();
            u = Convert.ToInt32(a);
            cn.Open();
            qry = "update register set Nam='" + txtfn.Text + "',Emailid='" + txtem.Text + "',Phoneno='" + txtphn.Text + "',Description='" + txtau.Text + "'where Uid=" + u + "";
            SqlCommand cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
        }
        //string path = Path.GetFileName(FileUpload1.FileName);
        //path = path.Replace(" ", "");
        //String filename1 = path;
        //FileUpload1.SaveAs(Server.MapPath("~/Images/") + path);
    }

    protected void btnupd_Click(object sender, EventArgs e)
    {
        encripto = Encrypt_QueryString(txtnp.Text.Trim());
        en = Encrypt_QueryString(txtcnp.Text.Trim());
        cn.Open();
        string q;
        Label1.Text = "";
        if (txtnp.Text == "" & txtcnp.Text == "")
        {
            lblpwd.Visible = true;
            lblcpwd.Visible = true;
            lblcheckpwd.Visible = false;
            lblpwdlength.Visible = false;
        }
        else if (txtnp.Text == "")
        {
            lblpwd.Visible = false;
            lblcpwd.Visible = true;
            lblcheckpwd.Visible = false;
            lblpwdlength.Visible = false;
        }
        else if (txtcnp.Text == "")
        {
            lblpwd.Visible = true;
            lblcpwd.Visible = false;
            lblcheckpwd.Visible = false;
            lblpwdlength.Visible = false;
        }
        else if (txtnp.Text == txtcnp.Text)
        {
            q = "update register set Passwd='" + encripto + "',ConfirmPasswd='" + en + "' where Uid=" + Session["uid"].ToString() + "";
            SqlCommand cmd = new SqlCommand(q, cn);
            cmd.ExecuteNonQuery();

        }
        cn.Close();
    }
    
}