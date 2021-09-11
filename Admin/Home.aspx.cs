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
    SqlDataReader dr;
    string qry;

   public  void counter()
    {
        DataSet dshits = new DataSet();
        dshits.ReadXml(Server.MapPath("~/counter.xml"));
        
        lithits.Text = dshits.Tables[0].Rows[0]["hit"].ToString();

        //int hit = Int32.Parse(dshits.Tables[0].Rows[0]["hit"].ToString());
        //hit +=1;
        //dshits.Tables[0].Rows[0]["hit"] = hit.ToString();
        //dshits.WriteXml(Server.MapPath("~/counter.xml"));
    }

    protected void Page_Load(object sender, EventArgs e)
    {
       // lblusr.Text = Application["NoOfVisitors"].ToString();
        if (!IsPostBack)
        {
            counter();
        }
        cn.Open();
        qry = "select count(*) from register";
        cmd = new SqlCommand(qry, cn);
        string totuser = cmd.ExecuteScalar().ToString();
        lbltuser.Text = totuser;
        cn.Close();

        cn.Open();
        qry = "select count(*) from Review";
        cmd = new SqlCommand(qry, cn);
        string totrev = cmd.ExecuteScalar().ToString();
        lblrev.Text = totrev;
        cn.Close();

        cn.Open();
        qry = "select count(*) from PropertyOwner";
        cmd = new SqlCommand(qry, cn);
        string totbuilder = cmd.ExecuteScalar().ToString();
        lblbuilder.Text = totbuilder;
        cn.Close();

        //cn.Open();
        //qry = "select count(*) from Dealer";
        //cmd = new SqlCommand(qry, cn);
        //string totdel = cmd.ExecuteScalar().ToString();
        //lblDealer.Text = totdel;
        //cn.Close();

    }


}