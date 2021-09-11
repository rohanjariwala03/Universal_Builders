using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class User_Default3 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string query;
    string qr;
    string ci;
    string ptype;
    string pstatus;
    string bed;
    string pricefrom;
    string priceto;
    string cityid;

    protected void Page_Load(object sender, EventArgs e)
    {
        string st = "0";
        ci = Request.QueryString.Get("ciid");
        cn.Open();
        qr = "SELECT cit.*, PropertyOwner.* FROM PropertyOwner INNER JOIN cit ON PropertyOwner.Ciid = cit.ciid where PropertyOwner.Ciid='" + ci + "' and PropertyOwner.Status='" + st + "'";
        cmd = new SqlCommand(qr, cn);
        dr = cmd.ExecuteReader();
        SqlDataSource1.SelectCommand = qr;
        cn.Close();
    }
}