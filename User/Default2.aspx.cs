using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string s = Session["uid"].ToString();
        }
        catch
        {
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "key", "<script> $(function () {  $('#popup').dialog({ width: 500,height: 500,model: true, button: {close: function () {$(this).dialog('close'); } } }) }); </script>", false);
            //Response.Write();
            //Response.Redirect("Login.aspx");
        }
        
    }
}