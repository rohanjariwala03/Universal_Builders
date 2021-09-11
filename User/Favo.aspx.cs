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
    string prid;
    string usrid;
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string qry;
    string u;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            prid = Request.QueryString.Get("prid");
            usrid = Request.QueryString.Get("usrid");
            cn.Open();
            string q;
            q = "select * from Fav where Uid='" + usrid + "'";
            SqlCommand c = new SqlCommand(q,cn);
            SqlDataReader d;
            d = c.ExecuteReader();
            if (d.HasRows)
            {
                string p;
                while (d.Read())
                {
                    p = d["Pid"].ToString();
                    if (p == prid)
                    {
                        Response.Redirect("Fav.aspx");
                    }
                }
            }
            d.Close();
            qry = "insert into Fav values('" + prid + "','" + usrid + "')";
            SqlCommand cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("Fav.aspx");
        }
    }
}