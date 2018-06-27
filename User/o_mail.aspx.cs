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
    public partial class o_mail : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());


        public void filldata(){
            con.Open();
            DataTable dt = new DataTable();
            SqlCommand cmd = new SqlCommand("select * from compose where from_msg ='"+Session["id"]+"'",con);
            SqlDataReader da = cmd.ExecuteReader();
            dt.Load(da);
            if(dt.Rows.Count>0){
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            else
            {
                empty_gd.Visible = true;
                empty_gd.Text = "No Mails In Outbox......";
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
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
        private void download( int id) {
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
            Response.AddHeader("content-Disposition",string.Format("attachment; file_name{0}",name));
            Response.AddHeader("content-Length", content.Length.ToString());
            Response.BinaryWrite(content);
            Response.Flush();
            Response.Close();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var i=0;
            foreach (GridViewRow row in GridView1.Rows)
            {
                var chk = row.FindControl("CheckBox1") as CheckBox;
                if (chk.Checked)
                {
                    var lblID = row.FindControl("lblID") as Label;

                    SqlCommand cmd = new SqlCommand("delete from compose where Id=@id",con);
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.AddWithValue("@id",int.Parse(lblID.Text));
                    con.Open();
                     i = cmd.ExecuteNonQuery();
                    
                    con.Close();

                }
            }
            if (i == 1)
            {
                Response.Write(@"<script>alert('Mail Deleted.....')<script>");
                

            }
            else
            {
                

                Response.Write(@"<script>alert('No mail Selectted.....')<script>");
            }
            filldata();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            filldata();
        }
    }
}