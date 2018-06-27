using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

using BusinessObjects;

namespace DataAccessLayer
{
    public class DataAccessLayer
    {
        BusinessObjects.BusinessObjects objbo = new BusinessObjects.BusinessObjects();
       

        #region  User Reg
        public int user_reg(BusinessObjects.BusinessObjects objbo)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            con.Open();
            SqlCommand cmd = new SqlCommand("proc_user_reg",con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@fname",objbo.fname);
            cmd.Parameters.AddWithValue("@lname",objbo.lname);
            cmd.Parameters.AddWithValue("@gender",objbo.gender);
            cmd.Parameters.AddWithValue("@loginid",objbo.loginid);
            cmd.Parameters.AddWithValue("@pass",objbo.password);
            cmd.Parameters.AddWithValue("@phone",objbo.phone);
            cmd.Parameters.AddWithValue("@email",objbo.email);
            cmd.Parameters.AddWithValue("@date",objbo.date);
            cmd.Parameters.AddWithValue("@time",objbo.time);
            cmd.Parameters.AddWithValue("@admin_check",objbo.admin_check);
            cmd.Parameters.AddWithValue("@active",objbo.active);
            cmd.Parameters.AddWithValue("@role",objbo.role);
            cmd.Parameters.AddWithValue("@address",objbo.address);
            int i = cmd.ExecuteNonQuery();

            return i;
            //con.Close();
        }
        #endregion

        #region User View
        public DataSet Viewuser()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            con.Open();
            SqlCommand cmd = new SqlCommand("proc_user_view", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "user_reg");
            return ds;
        }
        #endregion

        #region User Approved View
        public DataSet ViewuserApproved()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            con.Open();
            SqlCommand cmd = new SqlCommand("proc_user_approved_view", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds, "user_reg");
            return ds;
        }
        #endregion

        #region User Login
        public int user_login(BusinessObjects.BusinessObjects objbo)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constr"].ToString());
            con.Open();
            SqlCommand cmd = new SqlCommand("user_login", con);
            cmd.Parameters.AddWithValue("@loginid",objbo.loginid);
            cmd.Parameters.AddWithValue("@role",objbo.role);
            cmd.Parameters.AddWithValue("@password",objbo.password);
            cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.AddWithValue("@loginid",objbo.loginid);
            //cmd.Parameters.AddWithValue("@password", objbo.password);
            //cmd.Parameters.AddWithValue("@role", objbo.role);
            int i = cmd.ExecuteNonQuery();
            return i;

        }

        #endregion

    }
}
