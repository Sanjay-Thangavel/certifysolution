using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace certifysolution
{
    public partial class loginview : System.Web.UI.Page
    {
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
                    Label1.Text = Session["name"].ToString();
                    Label1.Visible = true;
                }

            }
            catch (Exception ex)
            {

            }

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("request.aspx");
        }
    }
}