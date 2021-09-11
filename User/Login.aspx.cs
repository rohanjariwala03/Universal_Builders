using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Net.Mail;
using System.Configuration;
using System.Text;
using System.Security.Cryptography;
using System.Text.RegularExpressions;

public partial class User_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string qry;
    string encripto;
    string decripto;

    public void counter()
    {
        DataSet dshits = new DataSet();
        dshits.ReadXml(Server.MapPath("~/counter.xml"));
        int hit = Int32.Parse(dshits.Tables[0].Rows[0]["hit"].ToString());
        hit =hit + 1;
        dshits.Tables[0].Rows[0]["hit"] = hit.ToString();
        dshits.WriteXml(Server.MapPath("~/counter.xml"));
        //lithits.Text = dshits.Tables[0].Rows[0]["hit"].ToString();
    }


    protected void Page_Load(object sender, EventArgs e)
    {
        counter();
        //if (!IsPostBack)
        //{
        //    ViewState["RefUrl"] = Request.UrlReferrer.ToString();
        //}
        
    }



    public static string Encrypt_QueryString(string str)
    {
        string EncrptKey = "2013;[pnuLIT)WebCodeExpert";
        byte[] byKey = { };
        byte[] IV = { 18, 52, 86, 120, 144, 171, 205, 239 };
        byKey = System.Text.Encoding.UTF8.GetBytes(EncrptKey.Substring(0, 8));
        DESCryptoServiceProvider des = new DESCryptoServiceProvider();
        byte[] inputByteArray = Encoding.UTF8.GetBytes(str);
        MemoryStream ms = new MemoryStream();
        CryptoStream cs = new CryptoStream(ms, des.CreateEncryptor(byKey, IV), CryptoStreamMode.Write);
        cs.Write(inputByteArray, 0, inputByteArray.Length);
        cs.FlushFinalBlock();
        return Convert.ToBase64String(ms.ToArray());
    }



    protected void btn_reg_Click(object sender, EventArgs e)
    {
        lblfname.Visible = false;
        lblrmail.Visible = false;
        lblrpwd.Visible = false;
        string email = txtemail.Text;
        Regex regex = new Regex(@"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$");
        Match match = regex.Match(email);
        if (txtname.Text == "" & txtemail.Text == "" & txtnpwd.Text == "" & txtcpwd.Text == "" & txtphno.Text=="")
        {
            lblname.Visible = true;
            lblpwd.Visible = true;
            lblema.Visible = true;
            lblcpwd.Visible = true;
            lblpno.Visible = true;
            lblpwdlength.Visible = false;
            lblformemail.Visible = false;
            lbldigit.Visible = false;
            lblphoto.Visible = false;
        }
        else if (txtname.Text == "" & txtnpwd.Text == "" & txtcpwd.Text == "" & txtphno.Text == "")
        {
            lblname.Visible = true;
            lblema.Visible = false;
            lblpwd.Visible = true;
            lblcpwd.Visible = true;
            lblpno.Visible = true;
            lblpwdlength.Visible = false;
            lblformemail.Visible = false;
            lbldigit.Visible = false;
            lblphoto.Visible = false;
        }
        else if (txtphno.Text == "" & txtemail.Text == "" & txtcpwd.Text == "" & txtphno.Text == "")
        {
            lblname.Visible = true;
            lblema.Visible = true;
            lblpwd.Visible = false;
            lblcpwd.Visible = true;
            lblpno.Visible = true;
            lblpwdlength.Visible = false;
            lblformemail.Visible = false;
            lbldigit.Visible = false;
            lblphoto.Visible = false;
        }
        else if (txtphno.Text == "" & txtemail.Text == "" & txtnpwd.Text == "" & txtphno.Text == "")
        {
            lblname.Visible = true;
            lblema.Visible = true;
            lblpwd.Visible = true;
            lblcpwd.Visible = false;
            lblpno.Visible = true;
            lblpwdlength.Visible = false;
            lblformemail.Visible = false;
            lbldigit.Visible = false;
            lblphoto.Visible = false;
        }
        else if (txtphno.Text == "" & txtemail.Text == "" & txtnpwd.Text == "" & txtcpwd.Text == "")
        {
            lblname.Visible = false;
            lblema.Visible = true;
            lblpwd.Visible = true;
            lblcpwd.Visible = true;
            lblpno.Visible = true;
            lblpwdlength.Visible = false;
            lblformemail.Visible = false;
            lbldigit.Visible = false;
            lblphoto.Visible = false;
        }
        else if (txtname.Text == "" & txtemail.Text == "" & txtnpwd.Text == "" & txtcpwd.Text == "")
        {
            lblname.Visible = true;
            lblema.Visible = true;
            lblpwd.Visible = true;
            lblcpwd.Visible = true;
            lblpno.Visible = false;
            lblpwdlength.Visible = false;
            lblformemail.Visible = false;
            lbldigit.Visible = false;
            lblphoto.Visible = false;
        }
        else if (txtnpwd.Text == "" & txtcpwd.Text == "" & txtphno.Text == "")
        {
            lblname.Visible = false;
            lblema.Visible = false;
            lblpwd.Visible = true;
            lblcpwd.Visible = true;
            lblpno.Visible = true;
            lblpwdlength.Visible = false;
            lblformemail.Visible = false;
            lbldigit.Visible = false;
            lblphoto.Visible = false;
        }
        else if (txtemail.Text == "" & txtnpwd.Text == "" & txtcpwd.Text == "")
        {
            lblname.Visible = false;
            lblpwd.Visible = true;
            lblema.Visible = true;
            lblcpwd.Visible = true;
            lblpno.Visible = false;
            lblpwdlength.Visible = false;
            lblformemail.Visible = false;
            lbldigit.Visible = false;
            lblphoto.Visible = false;
        }
        else if (txtemail.Text == "" & txtnpwd.Text == "" & txtphno.Text == "")
        {
            lblname.Visible = false;
            lblema.Visible = true;
            lblpwd.Visible = false;
            lblcpwd.Visible = true;
            lblpno.Visible = true;
            lblpwdlength.Visible = false;
            lblformemail.Visible = false;
            lbldigit.Visible = false;
            lblphoto.Visible = false;
        }
        else if (txtemail.Text == "" & txtcpwd.Text == "" & txtphno.Text == "")
        {
            lblname.Visible = false;
            lblema.Visible = true;
            lblpwd.Visible = false;
            lblcpwd.Visible = true;
            lblpno.Visible = true;
            lblpwdlength.Visible = false;
            lblformemail.Visible = false;
            lbldigit.Visible = false;
            lblphoto.Visible = false;
        }
        else if (txtname.Text == "" & txtemail.Text == "" & txtnpwd.Text == "")
        {
            lblname.Visible = true;
            lblema.Visible = true;
            lblpwd.Visible = true;
            lblcpwd.Visible = false;
            lblpno.Visible = false;
            lblpwdlength.Visible = false;
            lblformemail.Visible = false;
            lbldigit.Visible = false;
            lblphoto.Visible = false;
        }
        else if (txtname.Text == "" & txtemail.Text == "" & txtcpwd.Text == "")
        {
            lblname.Visible = true;
            lblema.Visible = true;
            lblpwd.Visible = false;
            lblcpwd.Visible = true;
            lblpno.Visible = false;
            lblpwdlength.Visible = false;
            lblformemail.Visible = false;
            lbldigit.Visible = false;
            lblphoto.Visible = false;
        }
        else if (txtname.Text == "" & txtemail.Text == "" & txtphno.Text == "")
        {
            lblname.Visible = true;
            lblema.Visible = true;
            lblpwd.Visible = false;
            lblcpwd.Visible = false;
            lblpno.Visible = true;
            lblpwdlength.Visible = false;
            lblformemail.Visible = false;
            lbldigit.Visible = false;
            lblphoto.Visible = false;
        }
        else if (txtname.Text == "" & txtcpwd.Text == "" & txtnpwd.Text == "")
        {
            lblname.Visible = true;
            lblema.Visible = false;
            lblpwd.Visible = true;
            lblcpwd.Visible = true;
            lblpno.Visible = false;
            lblpwdlength.Visible = false;
            lblformemail.Visible = false;
            lbldigit.Visible = false;
            lblphoto.Visible = false;
        }
        else if (txtname.Text == "" & txtphno.Text == "" & txtnpwd.Text == "")
        {
            lblname.Visible = true;
            lblema.Visible = false;
            lblpwd.Visible = true;
            lblcpwd.Visible = false;
            lblpno.Visible = true;
            lblpwdlength.Visible = false;
            lblformemail.Visible = false;
            lbldigit.Visible = false;
            lblphoto.Visible = false;
        }
        else if (txtname.Text == "" & txtphno.Text == "" & txtcpwd.Text == "")
        {
            lblname.Visible = true;
            lblema.Visible = false;
            lblpwd.Visible = false;
            lblcpwd.Visible = true;
            lblpno.Visible = true;
            lblpwdlength.Visible = false;
            lblformemail.Visible = false;
            lbldigit.Visible = false;
            lblphoto.Visible = false;
        }
        else if (txtphno.Text == "" & txtnpwd.Text == "")
        {
            lblname.Visible = false;
            lblema.Visible = true;
            lblpwd.Visible = true;
            lblcpwd.Visible = false;
            lblpno.Visible = false;
            lblpwdlength.Visible = false;
            lblformemail.Visible = false;
            lbldigit.Visible = false;
            lblphoto.Visible = false;
        }
        else if (txtcpwd.Text == "" & txtnpwd.Text == "")
        {
            lblname.Visible = false;
            lblema.Visible = false;
            lblpwd.Visible = true;
            lblcpwd.Visible = true;
            lblpno.Visible = false;
            lblpwdlength.Visible = false;
            lblformemail.Visible = false;
            lbldigit.Visible = false;
            lblphoto.Visible = false;
        }
        else if (txtphno.Text == "" & txtcpwd.Text == "")
        {
            lblname.Visible = false;
            lblema.Visible = false;
            lblpwd.Visible = true;
            lblcpwd.Visible = false;
            lblpno.Visible = true;
            lblpwdlength.Visible = false;
            lblformemail.Visible = false;
            lbldigit.Visible = false;
            lblphoto.Visible = false;
        }
        else if (txtemail.Text == "" & txtnpwd.Text == "")
        {
            lblname.Visible = false;
            lblema.Visible = true;
            lblpwd.Visible = true;
            lblcpwd.Visible = false;
            lblpno.Visible = false;
            lblpwdlength.Visible = false;
            lblformemail.Visible = false;
            lbldigit.Visible = false;
            lblphoto.Visible = false;
        }
        else if (txtemail.Text == "" & txtcpwd.Text == "")
        {
            lblname.Visible = false;
            lblema.Visible = true;
            lblpwd.Visible = true;
            lblcpwd.Visible = false;
            lblpno.Visible = false;
            lblpwdlength.Visible = false;
            lblformemail.Visible = false;
            lbldigit.Visible = false;
            lblphoto.Visible = false;
        }
        else if (txtemail.Text == "" & txtphno.Text == "")
        {
            lblname.Visible = false;
            lblema.Visible = true;
            lblpwd.Visible = true;
            lblcpwd.Visible = false;
            lblpno.Visible = false;
            lblpwdlength.Visible = false;
            lblformemail.Visible = false;
            lbldigit.Visible = false;
            lblphoto.Visible = false;
        }
        else if (txtname.Text == "" & txtemail.Text == "")
        {
            lblname.Visible = true;
            lblema.Visible = true;
            lblpwd.Visible = false;
            lblcpwd.Visible = false;
            lblpno.Visible = false;
            lblpwdlength.Visible = false;
            lblformemail.Visible = false;
            lbldigit.Visible = false;
            lblphoto.Visible = false;
        }
        else if (txtname.Text == "" & txtnpwd.Text == "")
        {
            lblname.Visible = true;
            lblema.Visible = false;
            lblpwd.Visible = true;
            lblcpwd.Visible = false;
            lblpno.Visible = false;
            lblpwdlength.Visible = false;
            lblformemail.Visible = false;
            lbldigit.Visible = false;
            lblphoto.Visible = false;
        }
        else if (txtname.Text == "" & txtcpwd.Text == "")
        {
            lblname.Visible = true;
            lblema.Visible = false;
            lblpwd.Visible = false;
            lblcpwd.Visible = true;
            lblpno.Visible = false;
            lblpwdlength.Visible = false;
            lblformemail.Visible = false;
            lbldigit.Visible = false;
            lblphoto.Visible = false;
        }
        else if (txtname.Text == "" & txtphno.Text == "")
        {
            lblname.Visible = true;
            lblema.Visible = false;
            lblpwd.Visible = false;
            lblcpwd.Visible = false;
            lblpno.Visible = true;
            lblpwdlength.Visible = false;
            lblformemail.Visible = false;
            lbldigit.Visible = false;
            lblphoto.Visible = false;
        }
        else if (txtname.Text == "")
        {
            lblname.Visible = true;
            lblema.Visible = false;
            lblpwd.Visible = false;
            lblcpwd.Visible = false;
            lblpno.Visible = false;
            lblpwdlength.Visible = false;
            lblformemail.Visible = false;
            lbldigit.Visible = false;
            lblphoto.Visible = false;
        }
        else if (txtemail.Text == "")
        {
            lblname.Visible = true;
            lblema.Visible = false;
            lblpwd.Visible = false;
            lblcpwd.Visible = false;
            lblpno.Visible = false;
            lblpwdlength.Visible = false;
            lblformemail.Visible = false;
            lbldigit.Visible = false;
            lblphoto.Visible = false;
        }
        else if (txtnpwd.Text == "")
        {
            lblname.Visible = true;
            lblema.Visible = false;
            lblpwd.Visible = false;
            lblcpwd.Visible = false;
            lblpno.Visible = false;
            lblpwdlength.Visible = false;
            lblformemail.Visible = false;
            lbldigit.Visible = false;
            lblphoto.Visible = false;
        }
        else if (txtcpwd.Text == "")
        {
            lbldigit.Visible = false;
            lblname.Visible = true;
            lblema.Visible = false;
            lblpwd.Visible = false;
            lblcpwd.Visible = false;
            lblpno.Visible = false;
            lblpwdlength.Visible = false;
            lblformemail.Visible = false;
            lblphoto.Visible = false;
        }
        else if (txtphno.Text == "")
        {
            lbldigit.Visible = false;
            lblname.Visible = true;
            lblema.Visible = false;
            lblpwd.Visible = false;
            lblcpwd.Visible = false;
            lblpno.Visible = false;
            lblpwdlength.Visible = false;
            lblformemail.Visible = false;
            lblphoto.Visible = false;
        }
        else if (txtnpwd.Text != txtcpwd.Text)
        {
            lbldigit.Visible = false;
            lblcheckpwd.Visible = true;
            lblname.Visible = false;
            lblema.Visible = false;
            lblpwd.Visible = false;
            lblcpwd.Visible = false;
            lblpno.Visible = false;
            lblpwdlength.Visible = false;
            lblformemail.Visible = false;
            lblphoto.Visible = false;
        }
        else if (FileUpload1.FileName=="")
        {
            lblphoto.Visible = true;
            lbldigit.Visible = false;
            lblname.Visible = false;
            lblema.Visible = false;
            lblpwd.Visible = false;
            lblcpwd.Visible = false;
            lblpno.Visible = false;
            lblpwdlength.Visible = false;
            lblformemail.Visible = false;
        }
        else if (match.Success)
        {
            string pwd = txtnpwd.Text;
            //Regex reg = new Regex(@"^(?=.*\d).{4,8}$");
            Regex reg = new Regex(@"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$");
            Match mat = reg.Match(pwd);


            string pn = txtphno.Text;
            Regex r = new Regex(@"[0-9]{10}");
            Match m = r.Match(pn);
            string fileExt = System.IO.Path.GetExtension(FileUpload1.FileName);

             if (mat.Success)
            {
                if (m.Success)
                {
                    
                    //if (fileExt == ".jpg" || fileExt == ".png")
                    //{
                    
                        lblph.Visible = false;
                        lbldigit.Visible = false;
                        lblname.Visible = false;
                        lblema.Visible = false;
                        lblpwd.Visible = false;
                        lblcpwd.Visible = false;
                        lblpno.Visible = false;
                        lblpwdlength.Visible = false;
                        lblformemail.Visible = false;
                        lblphoto.Visible = false;

                        string en;


                        encripto = Encrypt_QueryString(txtnpwd.Text.Trim());

                        en = Encrypt_QueryString(txtcpwd.Text.Trim());

                        MailMessage mail = new MailMessage();
                        string mailid = txtemail.Text;
                        mail.To.Add(mailid);
                        mail.From = new MailAddress("universalb23@gmail.com");
                        mail.Subject = "Verification";
                        //string Body = "You reg Successfully to our Real Estate Website please verify your account by clicking below link"
                        //    + "<br />" +
                        //  "http://localhost:42919/User/Verification.aspx?ema=" + txtemail.Text +
                        //   "<br />" + "Universal Builders";
                        string Body = "You reg Successfully to our Real Estate Website please verify your account by clicking below link"
                                + "<br />" +
                              "http://localhost:42919/User/Verification.aspx?ema=" + encripto +
                               "<br />" + "Universal Builders";
                        mail.Body = Body;
                        mail.IsBodyHtml = true;
                        SmtpClient smtp = new SmtpClient();
                        smtp.Host = "smtp.gmail.com";
                        //smtp.Credentials = new System.Net.NetworkCredential("dell123co@gmail.com", "Dell@123");
                        smtp.Credentials = new System.Net.NetworkCredential("universalb123@gmail.com", "unibuilders3552");
                        smtp.Port = 587;  //465
                        smtp.EnableSsl = true;
                        smtp.Send(mail);
                        //Label1.Text = "email-id and check it..";



                        cn.Open();
                        string gender = string.Empty;
                        if (male.Checked)
                        {
                            gender = "Male";
                        }
                        else if (female.Checked)
                        {
                            gender = "Female";
                        }
                        qry = "insert into register(Nam,Emailid,Passwd,ConfirmPasswd,Phoneno,Ima,Gender,status,st) values('" + txtname.Text + "','" + txtemail.Text + "','" + encripto + "','" + en + "','" + txtphno.Text + "','" + FileUpload1.FileName + "','" + @gender + "','" + 0 + "','" + 1 + "')";
                        SqlCommand cmd = new SqlCommand(qry, cn);
                        cmd.ExecuteNonQuery();
                        cn.Close();


                        
                        //string path = Path.GetFileName(FileUpload1.FileName);
                        //path = path.Replace(" ", "");
                        //String filename1 = path;
                        //FileUpload1.SaveAs(Server.MapPath("~/Images/") + path);
                        //txtname.Text = string.Empty;
                        //txtemail.Text = string.Empty;
                        //txtphno.Text = string.Empty;

                        

                    //}
                    //else
                    //{
                    //    lblph.Visible = true;
                    //    lbldigit.Visible = false;
                    //    lblname.Visible = false;
                    //    lblema.Visible = false;
                    //    lblpwd.Visible = false;
                    //    lblcpwd.Visible = false;
                    //    lblpno.Visible = false;
                    //    lblpwdlength.Visible = false;
                    //    lblformemail.Visible = false;
                    //    lblphoto.Visible = false;
                    //}
                    
                }
                else 
                {
                    lbldigit.Visible = true;
                    lblpwdlength.Visible = false;
                    lblformemail.Visible = false;
                    lblcheckpwd.Visible = false;
                    lblname.Visible = false;
                    lblema.Visible = false;
                    lblpwd.Visible = false;
                    lblcpwd.Visible = false;
                    lblpno.Visible = false;
                    lblphoto.Visible = false;
                }
            }
            else
            {
                lbldigit.Visible = false;
                lblpwdlength.Visible = true;
                lblformemail.Visible = false;
                lblcheckpwd.Visible = false;
                lblname.Visible = false;
                lblema.Visible = false;
                lblpwd.Visible = false;
                lblcpwd.Visible = false;
                lblpno.Visible = false;
                lblphoto.Visible = false;
            }
        }
        else
        {
            lbldigit.Visible = false;
            lblphoto.Visible = false;
            lblformemail.Visible = true;
            lblpwdlength.Visible = false;
            lblcheckpwd.Visible = false;
            lblname.Visible = false;
            lblema.Visible = false;
            lblpwd.Visible = false;
            lblcpwd.Visible = false;
            lblpno.Visible = false;
        }

    }


    protected void btn_login_Click(object sender, EventArgs e)
    {

        //decripto = this.Decrypt(txtpwd.Text.Trim());

        lblph.Visible = false;
        lbldigit.Visible = false;
        lblname.Visible = false;
        lblema.Visible = false;
        lblpwd.Visible = false;
        lblcpwd.Visible = false;
        lblpno.Visible = false;
        lblpwdlength.Visible = false;
        lblformemail.Visible = false;
        lblphoto.Visible = false;
        string email = txtuname.Text;
        Regex regex = new Regex(@"^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$");
        Match match = regex.Match(email);

        if (txtuname.Text == "" & txtpwd.Text=="")
        {
            lblrmail.Visible = true;
            lblrpwd.Visible = true;
            lblfname.Visible = false;
        }
        else if (txtuname.Text == "")
        {
            lblrpwd.Visible = false;
            lblrmail.Visible = true;
            lblfname.Visible = false;
        }
        else if (txtpwd.Text == "")
        {
            lblrpwd.Visible = true;
            lblrmail.Visible = false;
            lblfname.Visible = false;
        }
        else if(match.Success)
        {


            encripto = Encrypt_QueryString(txtpwd.Text.Trim());
            //txtemail.Text = encripto;
            lblfname.Visible = false;
            lblrmail.Visible = false;
            lblrpwd.Visible = false;
            cn.Open();
            qry = "select * from register where Emailid='" + txtuname.Text + "' and Passwd='" + encripto + "'";
            if (MyCaptcha.IsValid)
            {
                cmd = new SqlCommand(qry, cn);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Read();
                    Session["uid"] = dr["Uid"].ToString();
                    Session["img"] = dr["Ima"].ToString();
                    Session["nam"] = dr["Nam"].ToString();
                    Session["email"] = dr["Emailid"].ToString();
                    Session["pwd"] = dr["Passwd"].ToString();
                    Session["pno"] = dr["Phoneno"].ToString();
                    Session["gen"] = dr["Gender"].ToString();
                    Session["abt"] = dr["Description"].ToString();
                    string s;
                    string st;
                    st = dr["St"].ToString();
                    s = dr["Status"].ToString();
                    if (st == "0")
                    {
                        if (s == "1")
                        {
                            Response.Redirect("~/Admin/Home.aspx");
                        }
                        else
                        {

                            object refUrl = ViewState["RefUrl"];
                            if (refUrl != null)
                                Response.Redirect((string)refUrl);
                            else
                                Response.Redirect("~/User/Index.aspx");
                        }
                    }
                    else { Label3.Text = "Please Verify Your Account"; }
                }
                else
                {
                    cn.Close();
                    cn.Open();
                    qry = "select * from Dealer where Demail='" + txtuname.Text + "' and Dpasswd='" + txtpwd.Text + "'";
                    cmd = new SqlCommand(qry, cn);
                    dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        dr.Read();
                        Session["did"] = dr["Did"].ToString();
                        Session["dimg"] = dr["Dima"].ToString();
                        Session["dfname"] = dr["Dfname"].ToString();
                        Session["demail"] = dr["Demail"].ToString();
                        Session["dpasswd"] = dr["Dpasswd"].ToString();
                        Session["dphone"] = dr["Dphone"].ToString();
                        Session["ddesc"] = dr["Ddesc"].ToString();
                        string s;
                        s = dr["Status"].ToString();
                        if (Convert.ToInt32(s) == 0)
                        {
                            Response.Redirect("~/Dealer/Property.aspx");
                        }
                        else
                        {
                            //Response.Redirect("~/User/Home.aspx");
                            Label3.Text = "Invalid Email or Passwords";
                        }
                    }
                    else
                    {
                        cn.Close();
                        cn.Open();
                        qry = "select * from Builder where Bemail='" + txtuname.Text + "' and Bpasswd='" + txtpwd.Text + "'";
                        cmd = new SqlCommand(qry, cn);
                        dr = cmd.ExecuteReader();
                        if (dr.HasRows)
                        {
                            dr.Read();
                            Session["bid"] = dr["Bid"].ToString();
                            Session["bimg"] = dr["Bima"].ToString();
                            Session["bfname"] = dr["Bfname"].ToString();
                            Session["bemail"] = dr["Bemail"].ToString();
                            Session["bpasswd"] = dr["Bpasswd"].ToString();
                            Session["bphone"] = dr["Bphone"].ToString();
                            Session["bdesc"] = dr["Bdesc"].ToString();
                            string s;
                            s = dr["Bstatus"].ToString();
                            if (Convert.ToInt32(s) == 0)
                            {
                                Response.Redirect("~/Builder/Property.aspx");
                            }
                            else
                            {
                                //Response.Redirect("~/User/Home.aspx");
                                Label3.Text = "Invalid Email or Passwords";
                            }
                        }
                    }
                    Label3.Text = "Invalid Email or Passwords";
                }
                cn.Close();
            }
            else
            { Label3.Text = "Invalid Captcha"; }
        }
        else 
        {
            lblfname.Visible = true;
            lblrmail.Visible = false;
            lblrpwd.Visible = false;
        }
    }
}