using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace certifysolution
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals(""))
                {
                    LinkButton3.Visible = false; //llogout
                    LinkButton7.Visible = false; //hello user 
                    Label1.Visible = false; //logout label 
                }
                else if(Session["role"].Equals("user"))
                {
                    LinkButton3.Visible = true;
                    Label1.Visible = true;
                    LinkButton2.Visible = false;
                    LinkButton1.Visible = false;
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton3.Visible = true;
                    Label1.Visible = true;
                }

            }
            catch (Exception ex)
            {

            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignuppage.aspx");
        }

        //logout
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["eid"] ="";
            Session["name"] = "";
            Session["role"] = "";
            Session["status"] = "";
            Response.Redirect("homepage.aspx");
        }

       
        
    }
}