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
    string p;
    protected void Page_Load(object sender, EventArgs e)
    {
        p = Request.QueryString.Get("proid");
        cn.Open();
        qry = "delete from PropertyOwner where Pid='" + p + "'";
        SqlCommand cmd = new SqlCommand(qry,cn);
        cmd.ExecuteNonQuery();
        cn.Close();
    }
}