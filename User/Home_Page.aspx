<%@ Page Title="" Language="C#" MasterPageFile="~/User/Home_Page.Master" AutoEventWireup="true" CodeBehind="Home_Page.aspx.cs" Inherits="PresentationLayer.User.Home_Page1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 464px; top: 187px; position: absolute"></asp:Label>
    </p>
</asp:Content>



<%--using System;
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
    public partial class Favorate : System.Web.UI.Page
    {

        public void view_user()
        {
            string name = Session["id"].ToString();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Favourates where uid = '" + name.ToString() + "'", con);
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
                view_user();
            }
        }

       

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            //con.Open();
            //string query = "";
            //try
            //{
            //    if (e.CommandName == "Delete")
            //    {

            //        int l = Convert.ToInt32(e.CommandArgument);
            //        query = "delete from  Favourates where Id= '" + l + "' ";
            //        SqlCommand cmd = new SqlCommand(query, con);
            //        cmd.ExecuteNonQuery();
            //        Response.Write("<script>alert('Data Deleted')</script>");
            //        view_user();
            //    }
            //}
            //finally
            //{
            //    con.Close();
            //}

           
        }

       

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            view_user();
        }

       

        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            //con.Open();
            //SqlCommand cmd = new SqlCommand("insert into Favourates(uid,name,url) value('" + Session["id"].ToString() + "','" + TextBox1.Text + "','" + TextBox2.Text + "' ", con);
            //cmd.ExecuteNonQuery();
            //Response.Write("<script>alert('Data Added')</script>");
            //        view_user();
        }

       
    }
}--%>
