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
    string q;
    SqlCommand cm = new SqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        cn.Open();
        qry = "insert into Dealer values('" + txtfn.Text + "','" + txtln.Text + "','" + txtem.Text + "','" + txtpwd.Text + "','" + txtphn.Text + "','" + txtdesc.Text + "','" + FileUpload1.FileName + "','" + 0 + "')";
        SqlCommand cmd = new SqlCommand(qry,cn);
        cmd.ExecuteNonQuery();
        //q = "insert into register (Nam,Emailid,Passwd,Phoneno,Description,Ima,Status) values('" + txtfn.Text + "','" + txtem.Text + "','" + txtpwd.Text + "','" + txtphn.Text + "','" + txtdesc.Text + "','" + FileUpload1.FileName + "','" + 2 + "')";
        //SqlCommand cm = new SqlCommand(q,cn);
        //cm.ExecuteNonQuery();
        string strname = FileUpload1.FileName.ToString();
        FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Admin/img/") + strname);
        cn.Close();
    }
}