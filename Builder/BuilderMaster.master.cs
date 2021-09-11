using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Builder_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            Image1.ImageUrl = "~/Admin/img/" + Session["bimg"].ToString();
            lbluser.Text = Session["bfname"].ToString();
        }
        catch
        {
            Response.Redirect("~/User/ErrorPage.aspx");
        }
    }
}
