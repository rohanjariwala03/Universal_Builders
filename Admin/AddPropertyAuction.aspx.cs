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

public partial class Admin_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

    SqlCommand cmd = new SqlCommand();
    SqlCommand cm = new SqlCommand();
    SqlDataReader dr;
    string qry;
    int max;
    string userid;
    SqlCommand c = new SqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {
        //try
        //{
        //    string str = Session["uid"].ToString();
        //}
        //catch { Response.Redirect("Login.aspx"); }
    }
    protected void btnsub_Click(object sender, EventArgs e)
    {

        if (txtpname.Text == "" || txtadd.Text == "" || txtdi.Text == "" || txtfeet.Text == "" || txtpin.Text == "" || drptype.SelectedValue == "1" || FileUploadImg1.FileName == "" || fl1.FileName == "" || drbed.SelectedValue == "Bed Room" || drkit.SelectedValue == "Kitchen" || drbat.SelectedValue == "Bathroom")
        {
            Label1.Visible = true;
        }
        else
        {
            string fileExt = System.IO.Path.GetExtension(fl1.FileName);
            //if (fileExt == ".jpg" || fileExt == ".png")
            //{
            Label1.Visible = false;
            cn.Open();
            
                //userid = Session["uid"].ToString();
                //ownType = "Owner";
                qry = "insert into AuctionProp (pnam,Pdesc,Ptype,Bedroom,Bathroom,Kitchen,TotalSquareFeet,StartBid,Paddress,Pimg,coid,sid,Ciid,status) values('" + txtpname.Text + "','" + txtdi.Text + "','" + drptype.SelectedItem.Text + "','" + drbed.SelectedItem.Text + "','" + drbat.SelectedItem.Text + "','" + drkit.SelectedItem.Text + "','" + txtfeet.Text + "','" + txtbid.Text + "','" + txtadd.Text + "','" + fl1.FileName + "','" + dsrcnt.SelectedValue + "','" + drst.SelectedValue + "','" + drct.SelectedValue + "','" + 0 + "')";
                SqlCommand cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();
                string path = Path.GetFileName(fl1.FileName);
                path = path.Replace(" ", "");
                String filename1 = path;
                fl1.SaveAs(Server.MapPath("~/Admin/img/") + path);
            
            string q;
            q = "select Max(paid) from AuctionProp";
            SqlCommand c = new SqlCommand(q, cn);
            max = Convert.ToInt32(c.ExecuteScalar());
            //max += 1;

            if (FileUploadImg1.HasFile == false)
            {
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), "key", "<script>alert('No File Uploaded.')</script>", false);
            }
            else
            {
                foreach (var file in FileUploadImg1.PostedFiles)
                {
                    string qr;
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


            cn.Open();
            string s = "insert into Bidprop (paid,bidamt,status) values('" + max + "','" + txtbid.Text + "','" + "','" + 0 + "'";
            SqlCommand co = new SqlCommand(s,cn);
            co.ExecuteNonQuery();
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
        } 

    }
}