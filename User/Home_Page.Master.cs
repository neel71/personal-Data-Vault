using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PresentationLayer.User
{
    public partial class Home_Page : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Clear();
            // Response.Redirect("Default.aspx");
            Response.Redirect("../Home/Login.aspx");
        }
    }
}