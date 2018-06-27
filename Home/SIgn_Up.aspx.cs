using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

using System.Text;
using System.Drawing;
using BusinessObjects;
using BusinessLogicLayer;
namespace PresentationLayer.Home
{
    public partial class SIgn_Up : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
       

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                 date.Text = DateTime.Now.ToString("MM/dd/yyyy");
                time.Text = DateTime.Now.ToString("T");
                Random r = new Random();
                int x = r.Next(0,10000);   
                Textloginid.Text = x.ToString();
                con.Open();
                SqlCommand cmd = new SqlCommand("select *from user_reg where Loginid = '" + x.ToString() + "' ", con);
                SqlDataReader da = cmd.ExecuteReader();
                if (da.Read())
                {
                    login.Text = "Exists";
                    this.login.ForeColor = Color.Red;
                    
                }
                else
                {
                    login.Text = "Available";
                    this.login.ForeColor = Color.Green;
                }
                con.Close();

                
            }
        }

        protected void add_Click(object sender, EventArgs e)
        {



            BusinessLogicLayer.BusinessLogicLayer objbl = new BusinessLogicLayer.BusinessLogicLayer();
            BusinessObjects.BusinessObjects objbo = new BusinessObjects.BusinessObjects();
            objbo.fname = Textfname.Text;
            objbo.lname = Textlname.Text;
            objbo.gender = ddgender.SelectedItem.Text;
            objbo.loginid = Textloginid.Text;
            objbo.password = Textpass.Text;
            objbo.phone = Textphone.Text;
            objbo.email = Textemail.Text;
            objbo.address = Textaddress.Text;
            objbo.active = 0;
            objbo.admin_check = 0;
            objbo.role = 1;
            objbo.date = date.Text;
            objbo.time = time.Text;
            if (Textpass.Text == Textcpass.Text)
            {
                int i = objbl.user_reg(objbo);
                if (i == 1)
                {

                    ddgender.SelectedValue = "0";
                    Textfname.Text = "";
                    Textlname.Text = "";
                    Textloginid.Text = "";
                    Textpass.Text = "";
                    Textphone.Text = "";
                    Textemail.Text = "";
                    Textaddress.Text = "";
                    label.Text = " ";
                    login.Text = "";
                   
                Response.Write(@"<script language='javascript'> alert('Registaration Successfull.Your Account will be Active shortly')</script>");
                }
                else
                {
                    Response.Write(@"<script language='javascript'> alert('Registaration Not Successfull.')</script>");
                   
                }
            }
            else
            {
                label.Text = " Error";
                label.ForeColor = Color.Red;
            }
            
        }

        protected void Textcpass_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void Textloginid_TextChanged(object sender, EventArgs e)
        {

           
        }
    }
}