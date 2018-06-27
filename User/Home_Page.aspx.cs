using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PresentationLayer.User
{
    public partial class Home_Page1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] != null)
            {
                Label1.Text = "Welcome User  " + Session["id"].ToString();
            }
            else
            {
                Response.Redirect("../Home/Login.aspx");
            }
        }
    }
}