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
    public partial class password : System.Web.UI.Page
    {

        public void view_pass()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from password where uid = '" + Session["id"] + "'  ", con);
            cmd.CommandType = CommandType.Text;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "password");
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                view_pass();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into password (uid,name,url,pass) values(@id,@name,@url,@pass)", con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@id", Session["id"]);
            cmd.Parameters.AddWithValue("@name", tname.Text);
            cmd.Parameters.AddWithValue("@url", turl.Text);
            cmd.Parameters.AddWithValue("@pass", TextBox3.Text);
            int i = cmd.ExecuteNonQuery();
            if (i == 1)
            {
                Response.Write("<script>alert('Data Added...')</script>");
                tname.Text = "";
                turl.Text = "";
                TextBox3.Text = "";
            }
            else
            {
                Response.Write("<script>alert('Data Not Added...')</script>");
            }
            view_pass();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            view_pass();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            con.Open();
            string query = "";
            if (e.CommandName == "delete_data")
            {

                int l = Convert.ToInt32(e.CommandArgument);
                query = "delete  from password where Id='" + l + "' ";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Data Deleted')</script>");
            }
            else
            {
                Response.Write("<script>alert('Data  Not Deleted')</script>");

            }

            con.Close();
            view_pass();
        }
    }
}