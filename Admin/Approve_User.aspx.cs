
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
    public partial class Approve_User : System.Web.UI.Page
    {

        protected void approvedperson_Click(object sender, EventArgs e)
        {

        }


        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        public void view_user()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            con.Open();
            SqlCommand cmd = new SqlCommand("porc_user_view", con);
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
            if(!IsPostBack){
                view_user();
            }
        }

       
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            con.Open();
            string query = "";
            if (e.CommandName == "Approve")
            {

                int l = Convert.ToInt32(e.CommandArgument);
                query = "update  user_reg set Admin_check='1',Active='1' where Userid='" + l +"' ";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('User Approved')</script>");
            }
            else if (e.CommandName == "Reject")
            {


                int l = Convert.ToInt32(e.CommandArgument);
                query = "update  user_reg set Admin_check='1' where Userid='" + l + "' ";
                SqlCommand cmd1 = new SqlCommand(query, con);
                cmd1.ExecuteNonQuery();
                Response.Write("<script>alert('User Rejected')</script>");

            }
 
            con.Close();
            view_user();
        }
    }
}