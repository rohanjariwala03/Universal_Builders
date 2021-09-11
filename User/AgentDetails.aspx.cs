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
    string drid;
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string qry;
    DataSet ds;

    protected void Page_Load(object sender, EventArgs e)
    {
        //drid = Request["drid"];
        drid = Request.QueryString.Get("drid");
        cn.Open();
        //Label5.Text = id;
        qry = "select * from Dealer where Did=" + drid ;
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            Image1.ImageUrl = "~/Admin/img/" + dr["Dima"].ToString();
            lblfname.Text = dr["Dfname"].ToString();
            lbllname.Text = dr["Dlname"].ToString();
            lbldesc.Text = dr["Ddesc"].ToString();
            lblphno.Text = dr["Dphone"].ToString();
            lblemail.Text = dr["Demail"].ToString();
            //lblname.Text = dr["car_name"].ToString();
            //lblcompany.Text = dr["car_company_name"].ToString();
            //lbltype.Text = dr["car_type"].ToString();
            //imgcar.ImageUrl="~/car_images/" + dr["car_image"].ToString();
            //imgcar2.ImageUrl = "~/car_images/" + dr["car_image"].ToString();
            //lblmodel.Text = dr["car_model"].ToString();
            //lbltran.Text = dr["transmission_type"].ToString();
            //lblfuel.Text = dr["car_fuel_type"].ToString();
        }
        cn.Close();
    }
    protected void btnsr_Click(object sender, EventArgs e)
    {
        cn.Open();
        qry = "insert into AgentAppointment values('" + txtnm.Text + "','" + txtem.Text + "','" + txtphn.Text + "','" + txtmsg.Text + "','" + drid + "')";
        SqlCommand cmd = new SqlCommand(qry,cn);
        cmd.ExecuteNonQuery();
        cn.Close();
    }
}