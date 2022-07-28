using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace certifysolution
{
    public partial class userview : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {

                if (Session["role"].Equals(""))
                {
                }
                else if (Session["role"].Equals("user"))
                {
                    // Response.Write("<script>alert('hai ');</script>");
                    TextBox1.Text = Session["name"].ToString();
                    TextBox2.Text = Session["eid"].ToString();
                    Label2.Text = Session["mail"].ToString();
                    Label1.Text = DateTime.Today.ToString("dd/MM/yyyy");
                    
                }



            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
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
                SqlCommand cmd = new SqlCommand("INSERT INTO certificate (employee_id,name,type,from_d,to_d,today,email_id) VALUES(@employee_id,@name,@type,@from_d,@to_d,@today,@email_id)", con);
                cmd.Parameters.AddWithValue("@employee_id", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@type", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@from_d", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@to_d", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@today", Label1.Text.Trim());
                cmd.Parameters.AddWithValue("@email_id", Label2.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Request Sent.');</script>");
               
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

            Session["eid"] = "";
            Session["name"] = "";
            Session["role"] = "";
            Session["status"] = "";
            Response.Redirect("requestsuccess.aspx");
        }
    }

   
}