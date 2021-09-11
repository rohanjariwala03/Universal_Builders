using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Admin_DeletePro : System.Web.UI.Page
{
    string a;
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;

    protected void Page_Load(object sender, EventArgs e)
    {
        a = Request["proid"];
        cn.Open();
        qry = "delete from PropertyOwner where pid='" + a +"'";
        SqlCommand cmd = new SqlCommand(qry,cn);
        cmd.ExecuteNonQuery();
        Response.Redirect("OwnerProperty.aspx");
        cn.Close();
    }
}