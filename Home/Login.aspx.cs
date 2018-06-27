using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

using BusinessObjects;
using BusinessLogicLayer;
namespace PresentationLayer.Home
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
           con.Open();
            try
            {
                string id = textname.Text;
                string pass = Textpass.Text;
                int value = Convert.ToInt32(rblist.SelectedItem.Value.ToString());

                string qry = "select * from user_reg where Loginid='" + id + "' and Password='" + pass + "' and Role = '"+value+"' and Admin_check='"+value+"' and Active ='"+value+"' ";
                SqlCommand cmd = new SqlCommand(qry, con);
                SqlDataAdapter Da = new SqlDataAdapter(cmd);
                DataTable Dt = new DataTable();
                Da.Fill(Dt);
                if (Dt.Rows.Count.ToString() == "1")
                {
                    Session["id"] = id;
                    Session["pass"] = pass;
                   
                    Response.Redirect("../User/Home_Page.aspx");
                    Response.Write("<script>alert('Login Successfull Mr." + Session["id"] + "')</script>");
           
                }
                else if(textname.Text =="Admin" && Textpass.Text=="Admin" && value == 0 ){
                    Response.Redirect("../Admin/Home_page.aspx");
                    Response.Write("<script>alert('Admin Login Successfull.Welcome Admin........ ')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Fill Information Correctly')</script>");
                    textname.Text = " "; 
                    Textpass.Text = " ";
                    rblist.SelectedIndex = -1;
                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
           

            
            
        }
    }
}