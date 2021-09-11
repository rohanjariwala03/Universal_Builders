using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Admin_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    string qry;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        cn.Open();
        qry = "insert into Builder values('" + txtfn.Text + "','" + txtln.Text + "','" + txtphn.Text + "','" + txtem.Text + "','" + FileUpload1.FileName + "','" + txtdesc.Text + "','" + txtpwd.Text +"','" + 0 + "')";
        SqlCommand cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        string strname = FileUpload1.FileName.ToString();
        FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Admin/img/") + strname);
        cn.Close();
    }
}