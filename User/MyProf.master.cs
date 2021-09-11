using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["uid"] == null)
        {
            btnlogin.Visible = true;
            btnlogout.Visible = false;
        }
        else
        {
            btnlogin.Visible = false;
            btnlogout.Visible = true;
        }
    }
    //protected void btnSearch_Click(object sender, EventArgs e)
    //{
    //    Session["ci"] = txtsearch.Text;
    //    Response.Redirect("SearchBtn.aspx");
    //}
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Session.Abandon();
        btnlogout.Visible = false;
        btnlogin.Visible = true;
        
        Response.Redirect("~/User/Login.aspx");
    }
}
