using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using BusinessObjects;
using DataAccessLayer;
namespace BusinessLogicLayer
{
    public class BusinessLogicLayer
    {
        DataAccessLayer.DataAccessLayer objdl = new DataAccessLayer.DataAccessLayer();
        BusinessObjects.BusinessObjects objbo = new BusinessObjects.BusinessObjects();

        #region  User Reg
        public int user_reg(BusinessObjects.BusinessObjects objbo)
        {
            
            int i = objdl.user_reg(objbo);

            return i;
        }
        #endregion

        //#region View User
        //public DataSet Viewuser()
        //{
        //    DataSet ds = objdl.Viewuser();
        //    return ds;
        //}
        //#endregion

        #region View User Approved
        public DataSet Viewuser()
        {
            DataSet ds = objdl.ViewuserApproved();
            return ds;
        }
        #endregion

        #region User Login
        public int user_login(BusinessObjects.BusinessObjects objbo)
        {
            int i = objdl.user_login(objbo);
            return i;
        }
        #endregion
    }
}
