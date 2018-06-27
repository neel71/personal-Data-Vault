using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using BusinessLogicLayer;

namespace PresentationLayer.Admin
{
    public partial class Approved_persons : System.Web.UI.Page
    {

        public void view_user_approved()
        {
           SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            con.Open();
            SqlCommand cmd = new SqlCommand("proc_user_approved", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "user_reg");
            GridView1.DataSource = ds;
            GridView1.DataBind();
            
            con.Close();
        }
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                view_user_approved();
            }
        }
    }
}