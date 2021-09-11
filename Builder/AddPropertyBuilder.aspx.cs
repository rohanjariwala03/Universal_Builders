using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;

public partial class Builder_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string qry;
    Int32 a;
    Int32 b;
    Int32 c;
    string ownType;
    string dealid;
    string qr;
    string path;

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string str = Session["bid"].ToString();
        }
        catch { Response.Redirect("~/User/Login.aspx"); }
        if (!IsPostBack)
        {
            cn.Open();
            qry = "select * from PropertyType";
            SqlDataAdapter adpt = new SqlDataAdapter(qry, cn);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            drptype.DataSource = dt;
            drptype.DataBind();
            drptype.DataTextField = "PtypeName";
            drptype.DataValueField = "Ptid";
            drptype.DataBind();
            cn.Close();
        }
    }
    protected void drptype_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(drptype.SelectedValue=="3")
        {
            Panel4.Visible = true;
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel5.Visible = false;
        }
        else if (drptype.SelectedValue == "4")
        {
            Panel4.Visible = true;
            Panel1.Visible = true;
            Panel2.Visible = true;
            Panel5.Visible = true;
        }
        else 
        {
            Panel4.Visible = false;
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel5.Visible = false;
        }
    }
    protected void btnsub_Click(object sender, EventArgs e)
    {
        cn.Open();
            if (drptype.SelectedValue == "3")
            {
                dealid = Session["bid"].ToString();
                ownType = "Builder";
                qry = "insert into PropertyOwner(Pname,Pdesc,Ptype,PCat,Bedroom,Bathroom,Kitchen,HouseNo,TotalSquareFeet,PerFeetPrice,TotalPrice,Paddress,OwnerType,OwnerId,Pimg,Cid,sid,Ciid,status) values('" + txtpname.Text + "','" + txtdi.Text + "','" + drptype.SelectedItem.Text + "','" + drsr.SelectedItem.Text + "','" + drbed.SelectedItem.Text + "','" + drbat.SelectedItem.Text + "','" + drkit.SelectedItem.Text + "','" + txthouseno.Text + "','" + txtfeet.Text + "','" + txtfeetprice.Text + "','" + txttotprice.Text + "','" + txtadd.Text + "','" + ownType + "','" + dealid + "','" + fl1.FileName + "','" + "1" + "','" + drst.SelectedItem.Value + "','" + drct.SelectedItem.Value + "','" + 0 + "')";
                SqlCommand cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();
                string path = Path.GetFileName(fl1.FileName);
                path = path.Replace(" ", "");
                String filename1 = path;
                fl1.SaveAs(Server.MapPath("~/Admin/img/") + path);
            }
            else if (drptype.SelectedValue == "4")
            {
                dealid = Session["bid"].ToString();
                ownType = "Builder";
                qry = "insert into PropertyOwner(Pname,Pdesc,Ptype,PCat,Bedroom,Bathroom,Kitchen,HouseNo,TotalFlore,TotalSquareFeet,PerFeetPrice,TotalPrice,Paddress,OwnerType,OwnerId,Pimg,Cid,sid,Ciid,status) values('" + txtpname.Text + "','" + txtdi.Text + "','" + drptype.SelectedItem.Text + "','" + drsr.SelectedItem.Text + "','" + drbed.SelectedItem.Text + "','" + drbat.SelectedItem.Text + "','" + drkit.SelectedItem.Text + "','" + txthouseno.Text + "','" + txtflore.Text + "','" + txtfeet.Text + "','" + txtfeetprice.Text + "','" + txttotprice.Text + "','" + txtadd.Text + "','" + ownType + "','" + dealid + "','" + fl1.FileName + "','" + "1" + "','" + drst.SelectedItem.Value + "','" + drct.SelectedItem.Value + "','" + 0 + "')";
                SqlCommand cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();
                string path = Path.GetFileName(fl1.FileName);
                path = path.Replace(" ", "");
                String filename1 = path;
                fl1.SaveAs(Server.MapPath("~/Admin/img/") + path);
            }
            else
            {
                dealid = Session["bid"].ToString();
                ownType = "Builder";
                qry = "insert into PropertyOwner(Pname,Pdesc,Ptype,PCat,Bedroom,Bathroom,Kitchen,TotalSquareFeet,PerFeetPrice,TotalPrice,Paddress,OwnerType,OwnerId,Pimg,Cid,sid,Ciid,status) values('" + txtpname.Text + "','" + txtdi.Text + "','" + drptype.SelectedItem.Text + "','" + drsr.SelectedItem.Text + "','" + drbed.SelectedItem.Text + "','" + drbat.SelectedItem.Text + "','" + drkit.SelectedItem.Text + "','" + txtfeet.Text + "','" + txtfeetprice.Text + "','" + txttotprice.Text + "','" + txtadd.Text + "','" + ownType + "','" + dealid + "','" + fl1.FileName + "','" + "1" + "','" + drst.SelectedItem.Value + "','" + drct.SelectedItem.Value + "','" + 0 + "')";
                SqlCommand cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();
                string path = Path.GetFileName(fl1.FileName);
                path = path.Replace(" ", "");
                String filename1 = path;
                fl1.SaveAs(Server.MapPath("~/Admin/img/") + path);
            }




            string q;
            q = "select Max(pid) from PropertyOwner";
            SqlCommand c = new SqlCommand(q, cn);
            int max = Convert.ToInt32(c.ExecuteScalar());
            //max += 1;

            if (FileUploadImg1.HasFile == false)
            {
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "key", "<script>alert('No File Uploaded.')</script>", false);
            }
            else
            {
                foreach (var file in FileUploadImg1.PostedFiles)
                {
                    string filename = Path.GetFileName(file.FileName);
                    qr = "insert into gallry values('" + max + "','" + filename + "')";
                    cmd = new SqlCommand(qr, cn);
                    cmd.ExecuteNonQuery();
                    path = Path.GetFileName(FileUploadImg1.FileName);
                    path = path.Replace(" ", "");
                    String filename2 = path;
                    FileUploadImg1.SaveAs(Server.MapPath("~/Admin/img/PropGal/") + path);
                    //path = path.Replace(" ", "");
                    //String filename2 = path;
                    //fl1.SaveAs(Server.MapPath("~/Admin/img/") + path);
                    //int width = 370;
                    //int height = 330;
                    //Stream stream = file.InputStream;
                    //Bitmap image = new Bitmap(stream);
                    //Bitmap target = new Bitmap(width, height);
                    //Graphics graphic = Graphics.FromImage(target);
                    //graphic.DrawImage(image, 0, 0, width, height);
                    //target.Save(Server.MapPath("~/car_images/") + filename);
                    //file.SaveAs(Server.MapPath("../car_images/" + filename));
                    //SqlCommand cmd = new SqlCommand("Insert into
                    //EventPageView(Event_name, Event_Text, Image_Path)
                    //values(@EventName, @EventText, @ImagePath)", conn);
                    //cmd.Parameters.AddWithValue("@ImagePath", filename);
                    //cmd.Parameters.AddWithValue("@EventName", txtEventName.Text);
                    //cmd.Parameters.AddWithValue("@EventText", txtEnterDesc.Text);
                    //conn.Open();
                    //cmd.ExecuteNonQuery();
                    //conn.Close();
                    //BindDataList();
                }
            }
            cn.Close();
            string query;
            if (ch1.Checked)
            {
                cn.Open();
                query = "insert into Amenities values('" + max + "','" + ch1.Text + "')";
                SqlCommand cm = new SqlCommand(query, cn);
                cm.ExecuteNonQuery();
                cn.Close();
            }
            if (ch2.Checked)
            {
                cn.Open();
                query = "insert into Amenities values('" + max + "','" + ch2.Text + "')";
                SqlCommand cm = new SqlCommand(query, cn);
                cm.ExecuteNonQuery();
                cn.Close();
            }
            if (ch3.Checked)
            {
                cn.Open();
                query = "insert into Amenities values('" + max + "','" + ch3.Text + "')";
                SqlCommand cm = new SqlCommand(query, cn);
                cm.ExecuteNonQuery();
                cn.Close();
            }
            if (ch4.Checked)
            {
                cn.Open();
                query = "insert into Amenities values('" + max + "','" + ch4.Text + "')";
                SqlCommand cm = new SqlCommand(query, cn);
                cm.ExecuteNonQuery();
                cn.Close();
            }
            if (ch5.Checked)
            {
                cn.Open();
                query = "insert into Amenities values('" + max + "','" + ch5.Text + "')";
                SqlCommand cm = new SqlCommand(query, cn);
                cm.ExecuteNonQuery();
                cn.Close();
            }
            if (ch6.Checked)
            {
                cn.Open();
                query = "insert into Amenities values('" + max + "','" + ch6.Text + "')";
                SqlCommand cm = new SqlCommand(query, cn);
                cm.ExecuteNonQuery();
                cn.Close();
            }
            if (ch7.Checked)
            {
                cn.Open();
                query = "insert into Amenities values('" + max + "','" + ch7.Text + "')";
                SqlCommand cm = new SqlCommand(query, cn);
                cm.ExecuteNonQuery();
                cn.Close();
            }
            if (ch8.Checked)
            {
                cn.Open();
                query = "insert into Amenities values('" + max + "','" + ch8.Text + "')";
                SqlCommand cm = new SqlCommand(query, cn);
                cm.ExecuteNonQuery();
                cn.Close();
            }
            if (ch9.Checked)
            {
                cn.Open();
                query = "insert into Amenities values('" + max + "','" + ch9.Text + "')";
                SqlCommand cm = new SqlCommand(query, cn);
                cm.ExecuteNonQuery();
                cn.Close();
            }
            if (ch10.Checked)
            {
                cn.Open();
                query = "insert into Amenities values('" + max + "','" + ch10.Text + "')";
                SqlCommand cm = new SqlCommand(query, cn);
                cm.ExecuteNonQuery();
                cn.Close();
            }
            if (ch11.Checked)
            {
                cn.Open();
                query = "insert into Amenities values('" + max + "','" + ch11.Text + "')";
                SqlCommand cm = new SqlCommand(query, cn);
                cm.ExecuteNonQuery();
                cn.Close();
            }
            if (ch12.Checked)
            {
                cn.Open();
                query = "insert into Amenities values('" + max + "','" + ch12.Text + "')";
                SqlCommand cm = new SqlCommand(query, cn);
                cm.ExecuteNonQuery();
                cn.Close();
            }
            
            Response.Redirect("Property.aspx");
            
        }
     

    protected void txtfeetprice_TextChanged(object sender, EventArgs e)
    {
        a = Convert.ToInt32(txtfeet.Text);
        b = Convert.ToInt32(txtfeetprice.Text);
        c = a * b;
        txttotprice.Text = Convert.ToString(c);

    }
    protected void txtfeet_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txttotprice_TextChanged(object sender, EventArgs e)
    {

    }
    
}