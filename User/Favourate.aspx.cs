using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace PresentationLayer.User
{
    public partial class Favourate : System.Web.UI.Page
    {
        public void view_fav()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Favourates where uid = '"+Session["id"]+"'  ", con);
            cmd.CommandType = CommandType.Text;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "Favourates");
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
            
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                view_fav();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Favourates (uid,name,url) values(@id,@name,@url)",con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@id",Session["id"]);
            cmd.Parameters.AddWithValue("@name", Textloc.Text);
            cmd.Parameters.AddWithValue("@url",TextBox1.Text);
            int i = cmd.ExecuteNonQuery();
            if (i == 1) {
                Response.Write("<script>alert('Data Added...')</script>");
                Textloc.Text = "";
                TextBox1.Text = "";
            }
            else {
                Response.Write("<script>alert('Data Not Added...')</script>");
            }
            view_fav();

        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            view_fav();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            con.Open();
            string query = "";
            if (e.CommandName == "delete_data")
            {

                int l = Convert.ToInt32(e.CommandArgument);
                query = "delete  from Favourates where Id='" + l + "' ";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Data Deleted')</script>");
            }
            else 
            {
                Response.Write("<script>alert('Data  Not Deleted')</script>");

            }

            con.Close();
            view_fav();
        }
    }
}