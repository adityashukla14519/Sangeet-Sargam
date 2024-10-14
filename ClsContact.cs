using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;
using System.Transactions;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for ClsContact
/// </summary>
public class ClsContact
{
    public ClsContact()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public DataSet getBookingDetail(int Action, string FromDate, string ToDate,int Id)
    {

        Database db = DatabaseFactory.CreateDatabase();
        DbCommand cmd = db.GetStoredProcCommand("SaveUpdateContact");

        db.AddInParameter(cmd, "@Action", DbType.Int32, Action);
        db.AddInParameter(cmd, "@FromDate", DbType.String, FromDate);
        db.AddInParameter(cmd, "@ToDate", DbType.String, ToDate);
        db.AddInParameter(cmd, "@Id", DbType.Int32, Id);

        using (TransactionScope scope = new TransactionScope())
        {
            try
            {
                DataSet ds = db.ExecuteDataSet(cmd);
                scope.Complete();
                if (ds!=null && ds.Tables.Count>0 && ds.Tables[0].Rows.Count != 0)
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


    }

    public bool SaveUpdateContacts(int Action, int Id, string Name, string Sname, string Email, string Mobile, string EntryDate, string ExitDate, int Adults, int Children, string Message, string CreatedOn)
    {
        Database db = DatabaseFactory.CreateDatabase();
        DbCommand cmd = db.GetStoredProcCommand("SaveUpdateContact");
        db.AddInParameter(cmd, "@Action", DbType.Int32, Action);
        db.AddInParameter(cmd, "@Id", DbType.Int32, Id);
        db.AddInParameter(cmd, "@Name", DbType.String, Name);
        db.AddInParameter(cmd, "@Sname", DbType.String, Sname);
        db.AddInParameter(cmd, "@Email", DbType.String, Email);
        db.AddInParameter(cmd, "@Mobile", DbType.String, Mobile);
        db.AddInParameter(cmd, "@Message", DbType.String, Message);
        db.AddInParameter(cmd, "@CreatedOn", DbType.String, CreatedOn);

        using (TransactionScope scope = new TransactionScope())
        {
            try
            {
                int _result = db.ExecuteNonQuery(cmd);
                scope.Complete();
                if (_result > 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

    }


}