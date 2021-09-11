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
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        qry = "select count(*) from Dealer";
        cmd = new SqlCommand(qry, cn);
        string totbuilder = cmd.ExecuteScalar().ToString();
        Session["totdeal"]=totbuilder;
        //lblagent.Text = totbuilder;
        cn.Close();


        cn.Open();
        qry = "select count(*) from PropertyOwner";
        cmd = new SqlCommand(qry, cn);
        string totProp = cmd.ExecuteScalar().ToString();
        Session["totProp"] = totProp;
        //lblagent.Text = totbuilder;
        cn.Close();
    }
}