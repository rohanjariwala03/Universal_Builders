using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class User_Default : System.Web.UI.Page
{
    string prid;
    string usrid;
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string qry;
    string u;

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            u = Session["Uid"].ToString();
            cn.Open();
            //qry = ;
            //SqlCommand cmd = new SqlCommand(qry,cn);
            SqlDataSource1.SelectCommand = "SELECT PropertyOwner.Pname, PropertyOwner.Pdesc, PropertyOwner.Ptype, PropertyOwner.PCat, PropertyOwner.Bedroom, PropertyOwner.Bathroom, PropertyOwner.Kitchen, PropertyOwner.TotalSquareFeet, PropertyOwner.PerFeetPrice, PropertyOwner.TotalPrice, PropertyOwner.Paddress, PropertyOwner.Pimg, PropertyOwner.Status, Fav.Pid, Fav.Uid FROM PropertyOwner INNER JOIN Fav ON PropertyOwner.Pid = Fav.Pid where Fav.Uid='" + u + "'";
            cn.Close();
        }
        catch 
        {
            Response.Redirect("Login.aspx");
        }
    }
}