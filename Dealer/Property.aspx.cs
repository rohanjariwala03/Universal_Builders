using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Dealer_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string query;

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string i;
            i = Session["did"].ToString();
            string t;
            t = "Dealer";
            cn.Open();
            query = "select * from PropertyOwner where OwnerId='" + i + "' and OwnerType='" + t + "'";
            cmd = new SqlCommand(query, cn);
            dr = cmd.ExecuteReader();
            SqlDataSource1.SelectCommand = query;
            cn.Close();
        }
        catch { Response.Redirect("~/User/Login.aspx"); }
        
    }
}