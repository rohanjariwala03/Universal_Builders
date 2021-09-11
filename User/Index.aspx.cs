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
    SqlDataReader dr;
    string qry;
    string qr;
    string st = "0";
    protected void Page_Load(object sender, EventArgs e)
    {
        string a = "1";
        cn.Open();
        string query = "select count(*) from PropertyOwner where ciid='" + a +"' and Status='" + st + "'";
        cmd = new SqlCommand(query, cn);
        int tot = Convert.ToInt32(cmd.ExecuteScalar());
        Label1.Text = Convert.ToString(tot);
        cn.Close();

        string b = "2";
        cn.Open();
        query = "select count(*) from PropertyOwner where ciid='" + b + "'and Status='" + st + "'";
        cmd = new SqlCommand(query, cn);
        tot = Convert.ToInt32(cmd.ExecuteScalar());
        Label2.Text = Convert.ToString(tot);
        cn.Close();

        string c = "3";
        cn.Open();
        query = "select count(*) from PropertyOwner where ciid='" + c + "'and Status='" + st + "'";
        cmd = new SqlCommand(query, cn);
        tot = Convert.ToInt32(cmd.ExecuteScalar());
        Label3.Text = Convert.ToString(tot);
        cn.Close();

        string d = "7";
        cn.Open();
        query = "select count(*) from PropertyOwner where ciid='" + d + "'and Status='" + st + "'";
        cmd = new SqlCommand(query, cn);
        tot = Convert.ToInt32(cmd.ExecuteScalar());
        Label4.Text = Convert.ToString(tot);
        cn.Close();

        string f = "8";
        cn.Open();
        query = "select count(*) from PropertyOwner where ciid='" + f + "'and Status='" + st + "'";
        cmd = new SqlCommand(query, cn);
        tot = Convert.ToInt32(cmd.ExecuteScalar());
        Label5.Text = Convert.ToString(tot);
        cn.Close();
        if (!IsPostBack)
        {
            //cn.Open();
            //qr = "select * from cit";
            //SqlDataAdapter adpa = new SqlDataAdapter(qr, cn);
            //DataTable dtab = new DataTable();
            //adpa.Fill(dtab);
            //drct.DataSource = dtab;
            //drct.DataBind();
            //drct.DataTextField = "ciname";
            //drct.DataValueField = "ciname";
            //drct.DataBind();
            //cn.Close();

            //cn.Open();
            //qr = "select * from state";
            //SqlDataAdapter adp = new SqlDataAdapter(qr, cn);
            //DataTable dta = new DataTable();
            //adp.Fill(dta);
            //drst.DataSource = dta;
            //drst.DataBind();
            //drst.DataTextField = "sname";
            //drst.DataValueField = "sname";
            //drst.DataBind();
            //cn.Close();

            cn.Open();
            qry = "select * from PropertyType";
            SqlDataAdapter adpt = new SqlDataAdapter(qry, cn);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            drpt.DataSource = dt;
            drpt.DataBind();
            drpt.DataTextField = "PtypeName";
            drpt.DataValueField = "PtypeName";
            drpt.DataBind();
            cn.Close();

            cn.Open();
            qry = "select * from PropertyCat";
            SqlDataAdapter adpts = new SqlDataAdapter(qry, cn);
            DataTable dtac = new DataTable();
            adpts.Fill(dtac);
            drps.DataSource = dtac;
            drps.DataBind();
            drps.DataTextField = "PCat";
            drps.DataValueField = "PCat";
            drps.DataBind();
            cn.Close();
        }
    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        Session["ci"] = drct.SelectedValue;
        Session["ptype"] = drpt.SelectedValue;
        Session["pstatus"] = drps.SelectedValue;
        Session["bed"] = drloc1.SelectedValue;
        Session["pricefrom"] = drprcfrm.SelectedValue;
        Session["priceto"] = drprcto.SelectedValue;
        Response.Redirect("Search.aspx");
        //cn.Open();
        //qry = "select * from PropertyOwner where PropertyCat='" + drps.SelectedValue + "'";
        //cmd = new SqlCommand(qry, cn);
        //dr = cmd.ExecuteReader();
        //if (dr.HasRows)
        //{
            
        //}
        //cn.Close();
    }
    protected void btnag1_Click(object sender, EventArgs e)
    {
        Response.Redirect("PropDetails.aspx?proid=8");
    }
    protected void btnag2_Click(object sender, EventArgs e)
    {
        Response.Redirect("PropDetails.aspx?proid=9");
    }
    protected void drprcfrm_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (drprcfrm.SelectedValue == "20 lakhs")
        {
            drprcto.Items.Clear();
            drprcto.Items.Add("Any");
            drprcto.Items.Add("40 lakhs");
            drprcto.Items.Add("60 lakhs");
            drprcto.Items.Add("80 lakhs");
            drprcto.Items.Add("1 cr");
            drprcto.Items.Add("2 cr");
        }
        else if (drprcfrm.SelectedValue == "40 lakhs")
        {
            drprcto.Items.Clear();
            drprcto.Items.Add("Any");
            drprcto.Items.Add("60 lakhs");
            drprcto.Items.Add("80 lakhs");
            drprcto.Items.Add("1 cr");
            drprcto.Items.Add("2 cr");
            drprcto.Items.Add("4 cr");
        }
        else if (drprcfrm.SelectedValue == "60 lakhs")
        {
            drprcto.Items.Clear();
            drprcto.Items.Add("Any");
            drprcto.Items.Add("80 lakhs");
            drprcto.Items.Add("1 cr");
            drprcto.Items.Add("2 cr");
            drprcto.Items.Add("4 cr");
            drprcto.Items.Add("6 cr");
        }
        else if (drprcfrm.SelectedValue == "80 lakhs")
        {
            drprcto.Items.Clear();
            drprcto.Items.Add("Any");
            drprcto.Items.Add("1 cr");
            drprcto.Items.Add("2 cr");
            drprcto.Items.Add("4 cr");
            drprcto.Items.Add("6 cr");
            drprcto.Items.Add("8 cr");
        }
        else if (drprcfrm.SelectedValue == "1 cr")
        {
            drprcto.Items.Clear();
            drprcto.Items.Add("Any");
            drprcto.Items.Add("2 cr");
            drprcto.Items.Add("4 cr");
            drprcto.Items.Add("6 cr");
            drprcto.Items.Add("8 cr");
            drprcto.Items.Add("10 cr");
        }
        else if (drprcfrm.SelectedValue == "2 cr")
        {
            drprcto.Items.Clear();
            drprcto.Items.Add("Any");
            drprcto.Items.Add("4 cr");
            drprcto.Items.Add("6 cr");
            drprcto.Items.Add("8 cr");
            drprcto.Items.Add("10 cr");
            drprcto.Items.Add("12 cr");
        }
    }
}