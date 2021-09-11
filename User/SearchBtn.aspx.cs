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
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string query;
    string qr;
    string ci;
    string cityid;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //string qr;
            //cn.Open();
            //qr = "select * from PropertyType";
            //SqlDataAdapter adpt = new SqlDataAdapter(qr, cn);
            //DataTable dt = new DataTable();
            //adpt.Fill(dt);
            //drpt.DataSource = dt;
            //drpt.DataBind();
            //drpt.DataTextField = "PtypeName";
            //drpt.DataValueField = "PtypeName";
            //drpt.DataBind();
            //cn.Close();
            //string q;
            //cn.Open();
            //q = "select * from PropertyCat";
            //SqlDataAdapter adpts = new SqlDataAdapter(q, cn);
            //DataTable dtac = new DataTable();
            //adpts.Fill(dtac);
            //drps.DataSource = dtac;
            //drps.DataBind();
            //drps.DataTextField = "PCat";
            //drps.DataValueField = "PCat";
            //drps.DataBind();
            //cn.Close();
        }
        string st="0";
        try
       {
            ci = Session["ci"].ToString();
            cn.Open();
            query = "select ciid from cit where ciname='" + ci + "'";
            cmd = new SqlCommand(query, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                cityid = dr["ciid"].ToString();
            }
            dr.Close();
            qr = "SELECT cit.*, PropertyOwner.* FROM PropertyOwner INNER JOIN cit ON PropertyOwner.Ciid = cit.ciid where PropertyOwner.Ciid='" + cityid + "' and PropertyOwner.Status='" + st +"'";
            cmd = new SqlCommand(qr, cn);
            dr = cmd.ExecuteReader();
            SqlDataSource1.SelectCommand = qr;
            cn.Close();
        }
        catch 
        {
            Response.Redirect("Index.aspx");
       }
    }
    //protected void btnsearch_Click(object sender, EventArgs e)
    //{
    //    Session["ci"] = drct.SelectedValue;
    //    Session["ptype"] = drpt.SelectedValue;
    //    Session["pstatus"] = drps.SelectedValue;
    //    Session["bed"] = drbed.SelectedValue;
    //    Session["bat"] = drbat.SelectedValue;
    //    Response.Redirect("Search.aspx");
    //}
}