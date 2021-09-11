using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Builder_Default : System.Web.UI.Page
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
                txtfn.Text = Session["bfname"].ToString();
                txtem.Text = Session["bemail"].ToString();
                //txtnpwd.Text = Session["pwd"].ToString();
                txtphn.Text = Session["bphone"].ToString();
                img1.ImageUrl = "~/Admin/img/" + Session["bimg"].ToString();
                txtau.Text = Session["bdesc"].ToString();
                ViewState["p"] = Session["bpasswd"].ToString();
                //txtau.Text = Session["uid"].ToString();
            }
        }
        catch { Response.Redirect("~/User/Login.aspx"); }
    }
    protected void btnup_Click(object sender, EventArgs e)
    {
        if (txtau.Text == "" || txtem.Text == "" || txtfn.Text == "" || txtphn.Text == "")
        {
            lblfill.Visible = true;
        }
        else
        {
            lblfill.Visible = true;
            string a = Session["bid"].ToString();
            cn.Open();
            qry = "update Builder set Bfname='" + txtfn.Text + "',Bemail='" + txtem.Text + "',Bphone='" + txtphn.Text + "',Bdesc='" + txtau.Text + "'where Bid=" + a + "";
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
                q = "update Builder set Bpasswd='" + txtnp.Text + "' where Bid=" + Session["bid"].ToString() + "";
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