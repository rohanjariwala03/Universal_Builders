using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Admin_HideShowDealer : System.Web.UI.Page
{
    string deid;
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
        deid = Request["drid"];
        cn.Open();
        qry = "select Status from Dealer where Did='" + deid + "'";
        SqlCommand cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();

        if (dr.HasRows)
        {
            dr.Read();
            st = dr["Status"].ToString();
            cn.Close();
            if (st == b)
            {
                cn.Open();
                qry = "update Dealer set Status='" + d + "' where Did='" + deid + "'";
                SqlCommand cm = new SqlCommand(qry, cn);
                cm.ExecuteNonQuery();
                cn.Close();
            }
            else
            {
                cn.Open();
                qry = "update Dealer set Status='" + c + "' where Did='" + deid + "'";
                SqlCommand cm = new SqlCommand(qry, cn);
                cm.ExecuteNonQuery();
                cn.Close();
            }
        }
        Response.Redirect("Agent.aspx");
    }
}