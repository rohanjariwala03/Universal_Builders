using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Admin_HideShowBuilder : System.Web.UI.Page
{
    string buid;
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlCommand cm = new SqlCommand();
    string qry;
    SqlDataReader dr;
    string st;

    protected void Page_Load(object sender, EventArgs e)
    {
         string b;
        b = "1";
        string c;
        c = "1";
        String d;
        d = "0";
        buid = Request["brid"];
        cn.Open();
        qry = "select Bstatus from Builder where Bid='" + buid + "'";
        SqlCommand cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();

        if (dr.HasRows)
        {
            dr.Read();
            st = dr["Bstatus"].ToString();
            cn.Close();
            if (st == b)
            {
                cn.Open();
                qry = "update Builder set Bstatus='" + d + "' where Bid='" + buid + "'";
                SqlCommand cm = new SqlCommand(qry, cn);
                cm.ExecuteNonQuery();
                cn.Close();
            }
            else
            {
                cn.Open();
                qry = "update Builder set Bstatus='" + c + "' where Bid='" + buid + "'";
                SqlCommand cm = new SqlCommand(qry, cn);
                cm.ExecuteNonQuery();
                cn.Close();
            }
        }
        Response.Redirect("Builder.aspx");
    }
}