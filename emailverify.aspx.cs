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
    public partial class emailverify : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Text = Session["email"].ToString();

            Label2.Visible = true;
        }

        //On click Submit Button 
        protected void Button1_Click(object sender, EventArgs e)
        {
            if(TextBox5.Text== Session["otp"].ToString())
            {
                //Response.Write("<script>alert('Your OTP is Successfully verified !');</script>");
                Updatestatus(); //UPDATE STATUS TO ' VERIFIED '
                Response.Redirect("registrationsuccess.aspx");
            }
            else
            {
                Response.Write("<script>alert('INVALID OTP.');</script>");

            }
        }





        void Updatestatus()
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
                SqlCommand cmd = new SqlCommand("UPDATE signup SET status=@status WHERE employee_id='" + Session["empid"] + "'", con);

                cmd.Parameters.AddWithValue("@status", "VERIFIED");

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Author Updated Successfully');</script>");
               
               

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }


        //CLear Data and Sign up Again.

        protected void Button2_Click(object sender, EventArgs e)
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
                SqlCommand cmd = new SqlCommand("DELETE FROM signup WHERE employee_id='" + Session["empid"] + "'", con);

                //cmd.Parameters.AddWithValue("@status", "VERIFIED");

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Deleted.Sign Up Again.');</script>");
                Response.Redirect("usersignuppage.aspx");



            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }
    }
}