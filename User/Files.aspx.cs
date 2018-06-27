using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
namespace PresentationLayer.User
{
    public partial class Files : System.Web.UI.Page
    {


        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());

        public void filldata()
        {
            con.Open();
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand("select * from save_file where uid ='" + Session["id"] + "'", con);
            SqlDataReader da = cmd.ExecuteReader();
            dt.Load(da);
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            else
            {
                empty_gd.Visible = true;
                empty_gd.Text = "No Uploaded Files......";
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                filldata();
            }
        }
        public void opendoc(object sender, EventArgs e)
        {
            LinkButton ink = (LinkButton)sender;
            GridViewRow gr = (GridViewRow)ink.NamingContainer;
            int id = int.Parse(GridView1.DataKeys[gr.RowIndex].Value.ToString());
            download(id);
        }
        private void download(int id)
        {
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand("proc_get_doc", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", SqlDbType.Int).Value = id;
            con.Open();
            SqlDataReader da = cmd.ExecuteReader();
            dt.Load(da);

            string name = dt.Rows[0]["file_name"].ToString();
            byte[] content = (byte[])dt.Rows[0]["file_content"];
            Response.ClearContent();
            Response.ContentType = "application/octetstream";
            Response.AddHeader("content-Disposition", string.Format("attachment; file_name{0}", name));
            Response.AddHeader("content-Length", content.Length.ToString());
            Response.BinaryWrite(content);
            Response.Flush();
            Response.Close();


        }

        protected void Upload_Click(object sender, EventArgs e)
        {
            con.Open();
            DateTime now = DateTime.Now;
            FileInfo fi = new FileInfo(FileUpload1.FileName);
            //long fileSizeInBytes = fi.Length;
            Byte[] dcontent = FileUpload1.FileBytes;
            string name = fi.Name;

            SqlCommand cmd = new SqlCommand("proc_save_file", con);
            cmd.CommandType = CommandType.StoredProcedure;
           
            cmd.Parameters.AddWithValue("@name", SqlDbType.VarChar).Value = name;
            cmd.Parameters.AddWithValue("@Content", SqlDbType.VarBinary).Value = dcontent;
            cmd.Parameters.AddWithValue("@date", now.ToString());
            cmd.Parameters.AddWithValue("@id", Session["id"]);
           // cmd.Parameters.AddWithValue("@size", fileSizeInBytes.ToString());
            int i = cmd.ExecuteNonQuery();
            if (i == 1)
            {
                Response.Write(@"<script>alert('File Successfully Uploaded......')</script>");
                

            }
            else
            {

                Response.Write(@"<script>alert('File Not Successfully Uploaded......')</script>");
            }
            con.Close();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            con.Open();
            string query = "";
            if (e.CommandName == "delete_data")
            {

                int l = Convert.ToInt32(e.CommandArgument);
                query = "delete  from save_file where Id='" + l + "' ";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('File Deleted Successfully')</script>");
            }
            else
            {
                Response.Write("<script>alert('Data  Not Deleted Successfully')</script>");

            }

            con.Close();
            filldata();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            filldata();
        }
    }
}