using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace PresentationLayer.User.Edit_Profile
{
    public partial class Edit_Profile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                date.Text = DateTime.Now.ToString("MM/dd/yyyy");
                time.Text = DateTime.Now.ToString("T");
                //Textloginid.Text = Session["id"].ToString();
                

                DataTable dt = new DataTable();
                con.Open();
                SqlDataReader myReader = null;
                SqlCommand myCommand = new SqlCommand("select * from user_reg where Loginid='" + Session["id"] + "'", con);

                myReader = myCommand.ExecuteReader();

                while (myReader.Read())
                {
                    Textfname.Text = (myReader["Fname"].ToString());
                    Textlname.Text = (myReader["Lname"].ToString());
                    Textgender.Text = (myReader["Gender"].ToString());
                    Textloginid.Text = (myReader["Loginid"].ToString());
                    Textpass.Text = (myReader["Password"].ToString());
                    Textcpass.Text = "";
                    Textphone.Text = (myReader["Phone"].ToString());
                    Textemail.Text = (myReader["Email"].ToString());
                    Textaddress.Text = (myReader["Address"].ToString());
                   
                }
                con.Close();
            }
        }

        protected void update_Click(object sender, EventArgs e)
        {
            DateTime now = DateTime.Now;
            string date = now.ToString();
            if (Textpass.Text == Textcpass.Text)
            {
               
                SqlCommand cmd = new SqlCommand("UPDATE user_reg SET Fname = @fname, Lname = @lname,Password = @pass, Phone=@phone,Email=@email,Address=@address,Update_date= @u_date where username='" + Textpass.Text + "'", con);
                con.Open();

                cmd.Parameters.AddWithValue("@fname", Textfname.Text);
                cmd.Parameters.AddWithValue("@lname", Textlname.Text);
                cmd.Parameters.AddWithValue("@pass", Textpass.Text);
                cmd.Parameters.AddWithValue("@phone", Textphone.Text);
                cmd.Parameters.AddWithValue("@email", Textemail.Text);
                cmd.Parameters.AddWithValue("@address", Textemail.Text);
                cmd.Parameters.AddWithValue("@u_date", date);
                

               cmd.ExecuteNonQuery();
                con.Close();
                Response.Write(@"<script language='javascript'> alert('Update  Successfull.')</script>");
                Response.Redirect("../Home/Login.aspx");
                
            }
            else {
                Response.Write(@"<script language='javascript'> alert('Password is not Match')</script>");
            }
        }

        protected void deactive_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("UPDATE user_reg SET Active = '"+ '0' +"' where Loginid = '"+Textloginid.Text+"'",con);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            if (i == 1) {
                Response.Write(@"<script language='javascript'> alert('Id Deactivated  Successfull.')</script>");
                Response.Redirect("../Home/Login.aspx");
            }
            else
            {
                Response.Write(@"<script language='javascript'> alert('Something went wrong')</script>");
            }
        }
    }
}