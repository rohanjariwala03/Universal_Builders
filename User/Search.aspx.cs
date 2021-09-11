using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class User_Default4 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    SqlCommand cmd=new SqlCommand();
    SqlDataReader dr;
    string query;
    string qr;
    string ci;
    string ptype;
    string pstatus;
    string bed;
    string pricefrom;
    string priceto;
    //string cityid;

    protected void Page_Load(object sender, EventArgs e)
    {
         string sta = "0";
        //try
        //{
            ci = Session["ci"].ToString();
            ptype = Session["ptype"].ToString();
            pstatus = Session["pstatus"].ToString();
            bed = Session["bed"].ToString();
            pricefrom = Session["pricefrom"].ToString();
            priceto = Session["priceto"].ToString();
            if (bed == "1")
            {
                bed = "01 Bed Room";
            }
            else if (bed == "2")
            {
                bed = "02 Bed Room";
            }
            else if (bed == "3")
            {
                bed = "03 Bed Room";
            }
            else if (bed == "4")
            {
                bed = "04 Bed Room";
            }
            else if (bed == "5")
            {
                bed = "05 Bed Room";
            }

            string l = pricefrom;
            if (l == "20 lakhs")
            {
                pricefrom = "2000000";
            }
            else if (l == "40 lakhs")
            {
                pricefrom = "4000000";
            }
            else if (l == "60 lakhs")
            {
                pricefrom = "6000000";
            }
            else if (l == "80 lakhs")
            {
                pricefrom = "8000000";
            }
            else if (l == "1 cr")
            {
                pricefrom = "10000000";
            }
            else if (l == "2 cr")
            {
                pricefrom = "20000000";
            }
            string p = priceto;
            if (priceto == "40 lakhs")
            {
                priceto = "4000000";
            }
            else if (priceto == "60 lakhs")
            {
                priceto = "6000000";
            }
            else if (priceto == "80 lakhs")
            {
                priceto = "8000000";
            }

            else if (priceto == "1 cr")
            {
                priceto = "10000000";
            }
            else if (priceto == "2 cr")
            {
                priceto = "20000000";
            }
            else if (priceto == "4 cr")
            {
                priceto = "40000000";
            }
            else if (priceto == "6 cr")
            {
                priceto = "60000000";
            }
            else if (priceto == "8 cr")
            {
                priceto = "80000000";
            }
            else if (priceto == "10 cr")
            {
                priceto = "100000000";
            }
            //l1.Text = ci;
            if (bed == "Any" && ptype == "Select Property" && pstatus == "Select Catagory" && pricefrom == "Any" && priceto == "Any")
            {
                cn.Open();
                qr = "SELECT cit.*, PropertyOwner.* FROM PropertyOwner INNER JOIN cit ON PropertyOwner.Ciid = cit.ciid where PropertyOwner.Ciid='" + ci + "' and PropertyOwner.Status='" + sta + "'";
                cmd = new SqlCommand(qr, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    Label1.Visible = false;
                    Repeater1.Visible = true;
                    SqlDataSource1.SelectCommand = qr;
                }
                else
                {
                    Label1.Visible = true;
                    Repeater1.Visible = false;
                }
                cn.Close();
            }
            if (bed == "Any" && ptype != "Select Property" && pstatus == "Select Catagory" && pricefrom != "Any" && priceto != "Any")
            {
                cn.Open();
                qr = "SELECT cit.*, PropertyOwner.* FROM PropertyOwner INNER JOIN cit ON PropertyOwner.Ciid = cit.ciid where PropertyOwner.Ciid='" + ci + "' and Ptype='" + ptype + "' and TotalPrice>='" + pricefrom + "' and TotalPrice<='" + priceto + "' and PropertyOwner.Status='" + sta + "'";
                cmd = new SqlCommand(qr, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    Label1.Visible = false;
                    Repeater1.Visible = true;
                    SqlDataSource1.SelectCommand = qr;
                }
                else
                {
                    Label1.Visible = true;
                    Repeater1.Visible = false;
                }
                cn.Close();
            }
            else if (bed == "Any" && ptype != "Select Property" && pstatus == "Select Catagory" && pricefrom == "Any" && priceto == "Any")
            {
                cn.Open();
                qr = "SELECT cit.*, PropertyOwner.* FROM PropertyOwner INNER JOIN cit ON PropertyOwner.Ciid = cit.ciid where PropertyOwner.Ciid='" + ci + "' and Ptype='" + ptype + "'and PropertyOwner.Status='" + sta + "'";
                cmd = new SqlCommand(qr, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    Label1.Visible = false;
                    Repeater1.Visible = true;
                    SqlDataSource1.SelectCommand = qr;
                }
                else
                {
                    Label1.Visible = true;
                    Repeater1.Visible = false;
                }
                cn.Close();
            }
            else if (bed == "Any" && ptype == "Select Property" && pstatus != "Select Catagory" && pricefrom == "Any" && priceto == "Any")
            {
                cn.Open();
                qr = "SELECT cit.*, PropertyOwner.* FROM PropertyOwner INNER JOIN cit ON PropertyOwner.Ciid = cit.ciid where PropertyOwner.Ciid='" + ci + "' and PCat='" + pstatus + "'and PropertyOwner.Status='" + sta + "'";
                cmd = new SqlCommand(qr, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    Label1.Visible = false;
                    Repeater1.Visible = true;
                    SqlDataSource1.SelectCommand = qr;
                }
                else
                {
                    Label1.Visible = true;
                    Repeater1.Visible = false;
                }
                cn.Close();
            }
            else if (bed == "Any" && ptype != "Select Property" && pstatus != "Select Catagory" && pricefrom == "Any" && priceto == "Any")
            {
                cn.Open();
                qr = "SELECT cit.*, PropertyOwner.* FROM PropertyOwner INNER JOIN cit ON PropertyOwner.Ciid = cit.ciid where PropertyOwner.Ciid='" + ci + "' and PCat='" + pstatus + "' and Ptype='" + ptype + "'and PropertyOwner.Status='" + sta + "'";
                cmd = new SqlCommand(qr, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    Label1.Visible = false;
                    Repeater1.Visible = true;
                    SqlDataSource1.SelectCommand = qr;
                }
                else
                {
                    Label1.Visible = true;
                    Repeater1.Visible = false;
                }
                cn.Close();
            }
            else if (bed != "Any" && ptype != "Select Property" && pstatus != "Select Catagory" && pricefrom == "Any" && priceto == "Any")
            {
                cn.Open();
                qr = "SELECT cit.*, PropertyOwner.* FROM PropertyOwner INNER JOIN cit ON PropertyOwner.Ciid = cit.ciid where PropertyOwner.Ciid='" + ci + "' and PCat='" + pstatus + "' and Ptype='" + ptype + "' and BedRoom='" + bed + "'and PropertyOwner.Status='" + sta + "'";
                cmd = new SqlCommand(qr, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    Label1.Visible = false;
                    Repeater1.Visible = true;
                    SqlDataSource1.SelectCommand = qr;
                }
                else
                {
                    Label1.Visible = true;
                    Repeater1.Visible = false;
                }
                cn.Close();
            }
            else if (bed == "Any" && ptype != "Select Property" && pstatus != "Select Catagory" && pricefrom != "Any" && priceto == "Any")
            {
                cn.Open();
                qr = "SELECT cit.*, PropertyOwner.* FROM PropertyOwner INNER JOIN cit ON PropertyOwner.Ciid = cit.ciid where PropertyOwner.Ciid='" + ci + "' and PCat='" + pstatus + "' and Ptype='" + ptype + "' and TotalPrice>='" + pricefrom + "'and PropertyOwner.Status='" + sta + "'";
                cmd = new SqlCommand(qr, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    Label1.Visible = false;
                    Repeater1.Visible = true;
                    SqlDataSource1.SelectCommand = qr;
                }
                else
                {
                    Label1.Visible = true;
                    Repeater1.Visible = false;
                }
                cn.Close();
            }
            else if (bed == "Any" && ptype != "Select Property" && pstatus != "Select Catagory" && pricefrom == "Any" && priceto != "Any")
            {
                cn.Open();
                qr = "SELECT cit.*, PropertyOwner.* FROM PropertyOwner INNER JOIN cit ON PropertyOwner.Ciid = cit.ciid where PropertyOwner.Ciid='" + ci + "' and PCat='" + pstatus + "' and Ptype='" + ptype + "' and TotalPrice<='" + priceto + "'and PropertyOwner.Status='" + sta + "'";
                cmd = new SqlCommand(qr, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    Label1.Visible = false;
                    Repeater1.Visible = true;
                    SqlDataSource1.SelectCommand = qr;
                }
                else
                {
                    Label1.Visible = true;
                    Repeater1.Visible = false;
                }
                cn.Close();
            }
            else if (bed != "Any" && ptype == "Select Property" && pstatus != "Select Catagory" && pricefrom != "Any" && priceto == "Any")
            {
                cn.Open();
                qr = "SELECT cit.*, PropertyOwner.* FROM PropertyOwner INNER JOIN cit ON PropertyOwner.Ciid = cit.ciid where PropertyOwner.Ciid='" + ci + "' and PCat='" + pstatus + "' and Bedroom='" + bed + "' and TotalPrice>='" + pricefrom + "'and PropertyOwner.Status='" + sta + "'";
                cmd = new SqlCommand(qr, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    Label1.Visible = false;
                    Repeater1.Visible = true;
                    SqlDataSource1.SelectCommand = qr;
                }
                else
                {
                    Label1.Visible = true;
                    Repeater1.Visible = false;
                }
                cn.Close();
            }
            else if (bed == "Any" && ptype == "Select Property" && pstatus != "Select Catagory" && pricefrom != "Any" && priceto != "Any")
            {
                cn.Open();
                qr = "SELECT cit.*, PropertyOwner.* FROM PropertyOwner INNER JOIN cit ON PropertyOwner.Ciid = cit.ciid where PropertyOwner.Ciid='" + ci + "' and PCat='" + pstatus + "' and TotalPrice<='" + priceto + "' and TotalPrice>='" + pricefrom + "'and PropertyOwner.Status='" + sta + "'";
                cmd = new SqlCommand(qr, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    Label1.Visible = false;
                    Repeater1.Visible = true;
                    SqlDataSource1.SelectCommand = qr;
                }
                else
                {
                    Label1.Visible = true;
                    Repeater1.Visible = false;
                }
                cn.Close();
            }
            else if (bed != "Any" && ptype == "Select Property" && pstatus == "Select Catagory" && pricefrom != "Any" && priceto != "Any")
            {
                cn.Open();
                qr = "SELECT cit.*, PropertyOwner.* FROM PropertyOwner INNER JOIN cit ON PropertyOwner.Ciid = cit.ciid where PropertyOwner.Ciid='" + ci + "' and Bedroom='" + bed + "' and TotalPrice<='" + priceto + "' and TotalPrice>='" + pricefrom + "'and PropertyOwner.Status='" + sta + "'";
                cmd = new SqlCommand(qr, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    Label1.Visible = false;
                    Repeater1.Visible = true;
                    SqlDataSource1.SelectCommand = qr;
                }
                else
                {
                    Label1.Visible = true;
                    Repeater1.Visible = false;
                }
                cn.Close();
            }
            else if (bed != "Any" && ptype != "Select Property" && pstatus != "Select Catagory" && pricefrom != "Any" && priceto == "Any")
            {
                cn.Open();
                qr = "SELECT cit.*, PropertyOwner.* FROM PropertyOwner INNER JOIN cit ON PropertyOwner.Ciid = cit.ciid where PropertyOwner.Ciid='" + ci + "' and Bedroom='" + bed + "' and PCat='" + pstatus + "' and Ptype='" + ptype + "' and TotalPrice>='" + pricefrom + "'and PropertyOwner.Status='" + sta + "'";
                cmd = new SqlCommand(qr, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    Label1.Visible = false;
                    Repeater1.Visible = true;
                    SqlDataSource1.SelectCommand = qr;
                }
                else
                {
                    Label1.Visible = true;
                    Repeater1.Visible = false;
                }
                cn.Close();
            }
            else if (bed != "Any" && ptype != "Select Property" && pstatus == "Select Catagory" && pricefrom != "Any" && priceto != "Any")
            {
                cn.Open();
                qr = "SELECT cit.*, PropertyOwner.* FROM PropertyOwner INNER JOIN cit ON PropertyOwner.Ciid = cit.ciid where PropertyOwner.Ciid='" + ci + "' and Bedroom='" + bed + "' and TotalPrice<='" + priceto + "' and Ptype='" + ptype + "' and TotalPrice>='" + pricefrom + "'and PropertyOwner.Status='" + sta + "'";
                cmd = new SqlCommand(qr, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    Label1.Visible = false;
                    Repeater1.Visible = true;
                    SqlDataSource1.SelectCommand = qr;
                }
                else
                {
                    Label1.Visible = true;
                    Repeater1.Visible = false;
                }
                cn.Close();
            }
            else if (bed == "Any" && ptype != "Select Property" && pstatus != "Select Catagory" && pricefrom != "Any" && priceto != "Any")
            {
                cn.Open();
                qr = "SELECT cit.*, PropertyOwner.* FROM PropertyOwner INNER JOIN cit ON PropertyOwner.Ciid = cit.ciid where PropertyOwner.Ciid='" + ci + "' and PCat='" + pstatus + "' and TotalPrice<='" + priceto + "' and Ptype='" + ptype + "' and TotalPrice>='" + pricefrom + "'and PropertyOwner.Status='" + sta + "'";
                cmd = new SqlCommand(qr, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    Label1.Visible = false;
                    Repeater1.Visible = true;
                    SqlDataSource1.SelectCommand = qr;
                }
                else
                {
                    Label1.Visible = true;
                    Repeater1.Visible = false;
                }
                cn.Close();
            }
            else if (bed != "Any" && ptype != "Select Property" && pstatus != "Select Catagory" && pricefrom == "Any" && priceto != "Any")
            {
                cn.Open();
                qr = "SELECT cit.*, PropertyOwner.* FROM PropertyOwner INNER JOIN cit ON PropertyOwner.Ciid = cit.ciid where PropertyOwner.Ciid='" + ci + "' and Bedroom='" + bed + "' and TotalPrice<='" + priceto + "' and Ptype='" + ptype + "' and PCat='" + pstatus + "'and PropertyOwner.Status='" + sta + "'";
                cmd = new SqlCommand(qr, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    Label1.Visible = false;
                    Repeater1.Visible = true;
                    SqlDataSource1.SelectCommand = qr;
                }
                else
                {
                    Label1.Visible = true;
                    Repeater1.Visible = false;
                }
                cn.Close();
            }
            else if (bed != "Any" && ptype != "Select Property" && pstatus != "Select Catagory" && pricefrom != "Any" && priceto != "Any")
            {
                cn.Open();
                qr = "SELECT cit.*, PropertyOwner.* FROM PropertyOwner INNER JOIN cit ON PropertyOwner.Ciid = cit.ciid where PropertyOwner.Ciid='" + ci + "' and TotalPrice>=" + pricefrom + "' and Bedroom='" + bed + "' and TotalPrice<='" + priceto + "' and Ptype='" + ptype + "' and PCat='" + pstatus + "'and PropertyOwner.Status='" + sta + "'";
                cmd = new SqlCommand(qr, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    Label1.Visible = false;
                    Repeater1.Visible = true;
                    SqlDataSource1.SelectCommand = qr;
                }
                else
                {
                    Label1.Visible = true;
                    Repeater1.Visible = false;
                }
                cn.Close();
            }
            else if (bed == "Any" && ptype == "Select Property" && pstatus != "Select Catagory" && pricefrom != "Any" && priceto != "Any")
            {
                cn.Open();
                qr = "SELECT cit.*, PropertyOwner.* FROM PropertyOwner INNER JOIN cit ON PropertyOwner.Ciid = cit.ciid where PropertyOwner.Ciid='" + ci + "' and PCat='" + pstatus + "' and TotalPrice<='" + priceto + "' and TotalPrice>='" + pricefrom + "'and PropertyOwner.Status='" + sta + "'";
                cmd = new SqlCommand(qr, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    Label1.Visible = false;
                    Repeater1.Visible = true;
                    SqlDataSource1.SelectCommand = qr;
                }
                else
                {
                    Label1.Visible = true;
                    Repeater1.Visible = false;
                }
                cn.Close();
            }
            else if (bed == "Any" && ptype != "Select Property" && pstatus == "Select Catagory" && pricefrom != "Any" && priceto == "Any")
            {
                cn.Open();
                qr = "SELECT cit.*, PropertyOwner.* FROM PropertyOwner INNER JOIN cit ON PropertyOwner.Ciid = cit.ciid where PropertyOwner.Ciid='" + ci + "' and TotalPrice>='" + pricefrom + "' and Ptype='" + ptype + "'and PropertyOwner.Status='" + sta + "'";
                cmd = new SqlCommand(qr, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    Label1.Visible = false;
                    Repeater1.Visible = true;
                    SqlDataSource1.SelectCommand = qr;
                }
                else
                {
                    Label1.Visible = true;
                    Repeater1.Visible = false;
                }
                cn.Close();
            }
            else if (bed == "Any" && ptype != "Select Property" && pstatus == "Select Catagory" && pricefrom == "Any" && priceto != "Any")
            {
                cn.Open();
                qr = "SELECT cit.*, PropertyOwner.* FROM PropertyOwner INNER JOIN cit ON PropertyOwner.Ciid = cit.ciid where PropertyOwner.Ciid='" + ci + "' and TotalPriceto<='" + priceto + "' and Ptype='" + ptype + "'and PropertyOwner.Status='" + sta + "'";
                cmd = new SqlCommand(qr, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    Label1.Visible = false;
                    Repeater1.Visible = true;
                    SqlDataSource1.SelectCommand = qr;
                }
                else
                {
                    Label1.Visible = true;
                    Repeater1.Visible = false;
                }
                cn.Close();
            }
            else if (bed != "Any" && ptype != "Select Property" && pstatus == "Select Catagory" && pricefrom == "Any" && priceto == "Any")
            {
                
                cn.Open();
                qr = "SELECT cit.*, PropertyOwner.* FROM PropertyOwner INNER JOIN cit ON PropertyOwner.Ciid = cit.ciid where PropertyOwner.Ciid='" + ci + "' and Bedroom='" + bed + "' and Ptype='" + ptype + "'and PropertyOwner.Status='" + sta + "'";
                cmd = new SqlCommand(qr, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    Label1.Visible = false;
                    Repeater1.Visible = true;
                    SqlDataSource1.SelectCommand = qr;
                }
                else
                {
                    Label1.Visible = true;
                    Repeater1.Visible = false;
                }
                cn.Close();
            }
            else if (bed == "Any" && ptype == "Select Property" && pstatus == "Select Catagory" && pricefrom != "Any" && priceto == "Any")
            {
                cn.Open();
                
                qr = "SELECT cit.*, PropertyOwner.* FROM PropertyOwner INNER JOIN cit ON PropertyOwner.Ciid = cit.ciid where PropertyOwner.Ciid='" + ci + "' and TotalPrice >='" + pricefrom + "' and PropertyOwner.Status='" + sta + "'";
                cmd = new SqlCommand(qr, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    Label1.Visible = false;
                    Repeater1.Visible = true;
                    SqlDataSource1.SelectCommand = qr;
                }
                else
                {
                    Label1.Visible = true;
                    Repeater1.Visible = false;
                }
                cn.Close();
            }
            else if (bed == "Any" && ptype == "Select Property" && pstatus == "Select Catagory" && pricefrom == "Any" && priceto != "Any")
            {
                
                cn.Open();
                qr = "SELECT cit.*, PropertyOwner.* FROM PropertyOwner INNER JOIN cit ON PropertyOwner.Ciid = cit.ciid where PropertyOwner.Ciid='" + ci + "' and TotalPrice <='" + priceto + "'and PropertyOwner.Status='" + sta + "'";
                cmd = new SqlCommand(qr, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    Label1.Visible = false;
                    Repeater1.Visible = true;
                    SqlDataSource1.SelectCommand = qr;
                }
                else
                {
                    Label1.Visible = true;
                    Repeater1.Visible = false;
                }
                cn.Close();
            }
            else if (bed == "Any" && ptype == "Select Property" && pstatus == "Select Catagory" && pricefrom != "Any" && priceto != "Any")
            {
                
                cn.Open();
                qr = "SELECT cit.*, PropertyOwner.* FROM PropertyOwner INNER JOIN cit ON PropertyOwner.Ciid = cit.ciid where PropertyOwner.Ciid='" + ci + "' and TotalPrice >='" + pricefrom + "' and TotalPrice <='" + priceto + "'and PropertyOwner.Status='" + sta + "'";
                cmd = new SqlCommand(qr, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    Label1.Visible = false;
                    Repeater1.Visible = true;
                    SqlDataSource1.SelectCommand = qr;
                }
                else
                {
                    Label1.Visible = true;
                    Repeater1.Visible = false;
                }
                cn.Close();
            }
            else
            {
                cn.Open();
                qr = "SELECT cit.*, PropertyOwner.* FROM PropertyOwner INNER JOIN cit ON PropertyOwner.Ciid = cit.ciid where PropertyOwner.Ciid='" + ci + "'";
                cmd = new SqlCommand(qr, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    Label1.Visible = false;
                    Repeater1.Visible = true;
                    SqlDataSource1.SelectCommand = qr;
                }
                else
                {
                    Label1.Visible = true;
                    Repeater1.Visible = false;
                }
                cn.Close();
            }
            
        }
        //catch { Response.Redirect("Index.aspx"); }
    }
//}