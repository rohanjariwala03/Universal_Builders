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

public partial class Dealer_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string qry;
    string u;
    string p;

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                // u = Session["did"].ToString();
                txtfn.Text = Session["dfname"].ToString();
                txtem.Text = Session["demail"].ToString();
                //txtnpwd.Text = Session["pwd"].ToString();
                txtphn.Text = Session["dphone"].ToString();
                img1.ImageUrl = "~/Admin/img/" + Session["dimg"].ToString();
                txtau.Text = Session["ddesc"].ToString();
                ViewState["p"] = Session["dpasswd"].ToString();
                //txtau.Text = Session["uid"].ToString();
            }
        }
        catch { Response.Redirect("~/User/Login.aspx"); }
    }
    protected void btnup_Click(object sender, EventArgs e)
    {
        if(txtfn.Text=="" || txtem.Text=="" || txtphn.Text=="" || txtau.Text=="")
        {
            lblfill.Visible = true;
        }
        else
        {
            lblfill.Visible = false;
            string a = Session["did"].ToString();
            cn.Open();
            qry = "update Dealer set Dfname='" + txtfn.Text + "',Demail='" + txtem.Text + "',Dphone='" + txtphn.Text + "',Ddesc='" + txtau.Text + "'where Did=" + a + "";
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
            if (txtcp.Text == ViewState["p"].ToString())
            {
                q = "update Dealer set Dpasswd='" + txtnp.Text + "' where Did=" + Session["did"].ToString() + "";
                SqlCommand cmd = new SqlCommand(q, cn);
                cmd.ExecuteNonQuery();
                Label1.Text = "Updated";
            }
            else
            {
                Label1.Text = "Incorrect current passwd";
            }
        }
        cn.Close();
    }

    
}