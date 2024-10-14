using Microsoft.Practices.EnterpriseLibrary.Data;
using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Data;
using System.Linq;
using System.Web;
using System.Transactions;

/// <summary>
/// Summary description for ClsLogin
/// </summary>
public class ClsLogin
{
    public ClsLogin()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public DataSet GetAdminLogin(int Action, string UserName, string Password)
    {
        Database db = DatabaseFactory.CreateDatabase();
        DbCommand cmd = db.GetStoredProcCommand("GetAccountLogin");
        db.AddInParameter(cmd, "@Action", DbType.Int32, Action);
        db.AddInParameter(cmd, "@UserName", DbType.String, UserName);
        db.AddInParameter(cmd, "@Password", DbType.String, Password);

        using (TransactionScope scope = new TransactionScope())
        {
            try
            {
                DataSet ds = db.ExecuteDataSet(cmd);
                scope.Complete();
                if (ds.Tables[0].Rows.Count != 0)
                {
                    return ds;
                }
                else
                {
                    return null;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
        //public bool ChangePassword(int Action, string UserId, string NewPassword, string OldPassword)
        //{
        //    Database db = DatabaseFactory.CreateDatabase();
        //    DbCommand cmd = db.GetStoredProcCommand("ChangePassword");
        //    db.AddInParameter(cmd, "@Action", DbType.Int16, Action);
        //    db.AddInParameter(cmd, "@UserId", DbType.String, UserId);
        //    db.AddInParameter(cmd, "@NewPassword", DbType.String, NewPassword);
        //    db.AddInParameter(cmd, "@OldPassword", DbType.String, OldPassword);

        //    using (TransactionScope scope = new TransactionScope())
        //    {
        //        try
        //        {
        //            int _Result = db.ExecuteNonQuery(cmd);
        //            scope.Complete();
        //            if (_Result > 0)
        //            {
        //                return true;
        //            }
        //            else
        //            {
        //                return false;
        //            }
        //        }
        //        catch (Exception ex)
        //        {
        //            return false;
        //            throw;
        //        }
        //        finally
        //        {
        //            cmd.Dispose();
        //        }
        //    }
        //}



    }
}