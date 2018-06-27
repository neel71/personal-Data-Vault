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
    public partial class C_mail : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            DateTime now = DateTime.Now;

            if (FileUpload1.HasFile == false) {

              

                SqlCommand cmd = new SqlCommand("proc_save_cmail", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@to", TextBox1.Text);
                cmd.Parameters.AddWithValue("@from", Session["id"]);
                cmd.Parameters.AddWithValue("@subject", TextBox2.Text);
                cmd.Parameters.AddWithValue("@body", TextBox3.Text);
                cmd.Parameters.AddWithValue("@name","");
                cmd.Parameters.AddWithValue("@Content","");
                cmd.Parameters.AddWithValue("@date", now.ToString());
                int i = cmd.ExecuteNonQuery();
                if (i == 1)
                {
                    Response.Write(@"<script>alert('Mail Send Successfully......')</script>");
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";

                }
                else
                {

                    Response.Write(@"<script>alert('Mail Not Send Successfully.....')</script>");
                }
            }
            else {
                FileInfo fi = new FileInfo(FileUpload1.FileName);
                Byte[] dcontent = FileUpload1.FileBytes;
                string name = fi.Name;

                SqlCommand cmd = new SqlCommand("proc_save_cmail", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@to", TextBox1.Text);
                cmd.Parameters.AddWithValue("@from", Session["id"]);
                cmd.Parameters.AddWithValue("@subject", TextBox2.Text);
                cmd.Parameters.AddWithValue("@body", TextBox3.Text);
                cmd.Parameters.AddWithValue("@name", SqlDbType.VarChar).Value = name;
                cmd.Parameters.AddWithValue("@Content", SqlDbType.VarBinary).Value = dcontent;
                cmd.Parameters.AddWithValue("@date", now.ToString());
                int i = cmd.ExecuteNonQuery();
                if (i == 1)
                {
                    Response.Write(@"<script>alert('Mail Send Successfully......')</script>");
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";

                }
                else
                {

                    Response.Write(@"<script>alert('Mail Not Send Successfully.....')</script>");
                }
            }

            

            con.Close();
        }
    }
}
