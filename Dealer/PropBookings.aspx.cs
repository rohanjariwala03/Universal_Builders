using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Dealer_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;

    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        string q;
        q = "SELECT Booking.Boid, Booking.Uid,Booking.Bamt, Booking.Pid, Booking.Bamt, PropertyOwner.*, register.Uid AS Expr1 FROM Booking INNER JOIN PropertyOwner ON Booking.Pid = PropertyOwner.Pid INNER JOIN register ON Booking.Uid = register.Uid AND PropertyOwner.OwnerId = register.Uid AND PropertyOwner.OwnerId = register.Uid WHERE (PropertyOwner.OwnerType = 'Dealer') AND (PropertyOwner.OwnerId ='" + Session["did"].ToString() + "')";
        SqlCommand cmd = new SqlCommand(q, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            Label1.Visible = false;
            Rep1.Visible = true;
            SqlDataSource1.SelectCommand="SELECT Booking.Boid, Booking.Uid,Booking.Bamt, Booking.Pid, Booking.Bamt, PropertyOwner.*, register.Uid AS Expr1 FROM Booking INNER JOIN PropertyOwner ON Booking.Pid = PropertyOwner.Pid INNER JOIN register ON Booking.Uid = register.Uid AND PropertyOwner.OwnerId = register.Uid AND PropertyOwner.OwnerId = register.Uid WHERE (PropertyOwner.OwnerType = 'Dealer') AND (PropertyOwner.OwnerId ='" + Session["did"].ToString() + "')";
        }
        else
        {
            Label1.Visible = true;
            Rep1.Visible = false;
        }
        cn.Close();
    }
}