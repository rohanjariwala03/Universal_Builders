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

    }
    protected void btnsend_Click(object sender, EventArgs e)
    {
        cn.Open();
        qry = "insert into ContactUs values('" + txtname.Text + "','" + txtemail.Text + "','" + txtsubject.Text + "','" + txtmsg.Text + "')";
        SqlCommand cmd = new SqlCommand(qry,cn);
        cmd.ExecuteNonQuery();
        Label1.Text = "Thank You for Contact";
        cn.Close();
    }
}