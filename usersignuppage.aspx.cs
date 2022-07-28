using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace certifysolution
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        //-- on click -> Register !-- 
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkMemberExists())
            {

                Response.Write("<script>alert('Employee ID Already Exist ! \n Cannot Register.');</script>");
            }
            else
            {
                //user defined Functions 
                //1st
                signUpNewMember();
                //2nd
                Emailsend();

                getEmail();
            }

            /*Response.Write("<script>alert('hai');</script>");
            Response.Redirect("emailverify.aspx");*/
        }

        //userdefined function 
        void signUpNewMember()
        {
            try
            {
                //'con' object is created from string 'strcon'
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    //if closed
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO signup (name,employee_id,email_id,status,code,pass1,pass2,account_status) VALUES(@name,@employee_id,@email_id,@status,@code,@pass1,@pass2,@account_status)", con);
                cmd.Parameters.AddWithValue("@name", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@employee_id", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@email_id", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@status", "NOT VERIFIED");
                cmd.Parameters.AddWithValue("@code", "NO");
                cmd.Parameters.AddWithValue("@pass1", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@pass2", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@account_status", "PENDING");
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Sign Up Successful. Go to User Login to Login');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }

        // conn --------->
        void getEmail()
        {
            try
            {
                SqlConnection conn = new SqlConnection(strcon);
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                //                                                        Employee ID from signup Page.
                SqlCommand cmd = new SqlCommand("SELECT * from signup where employee_id='" + TextBox4.Text.Trim() + "';", conn);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('" + dr.GetValue(1).ToString() + "');</script>");
                        Session["email"] = dr.GetValue(2).ToString();
                        Session["empid"] = dr.GetValue(1).ToString();
                    }
                    Response.Redirect("emailverify.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid credentials');</script>");
                }
            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");  
            }

        }


        bool checkMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from signup where employee_id='" + TextBox4.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }


        // Send EMail to Registered Email ID  in Textbox5
        void Emailsend()
        {
            //Generate OTP.
            Random r = new Random();
            string otp = r.Next(10001, 99999).ToString();
            Session["otp"] = otp;

            using (MailMessage mm = new MailMessage("perennial.technophile@gmail.com", TextBox5.Text.Trim()))
            {
                mm.Subject = "SACL - CERTIFICATE  Msg is";
                string msg = "Your One Time Password id : " + otp;
                mm.Body = msg.ToString();
                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                NetworkCredential NetworkCred = new NetworkCredential("perennial.technophile@gmail.com", "szwjlxelklldaurl");
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworkCred;
                smtp.Port = 587;
                //OTP IS SENT WHEN CONNECTED TO INTERNET .
                smtp.Send(mm);
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Email sent.');", true);
            }
        }

    }
}