using Microsoft.Practices.EnterpriseLibrary.Data;
using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Data;
using System.Linq;
using System.Web;
using System.Transactions;

/// <summary>
/// Summary description for ClsContent
/// </summary>
public class ClsContent
{
    public ClsContent()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public DataSet GetIntroContent(int Action, string Type)
    {
        Database db = DatabaseFactory.CreateDatabase();
        DbCommand cmd = db.GetStoredProcCommand("GetContent");
        db.AddInParameter(cmd, "@Action", DbType.Int32, Action);
        db.AddInParameter(cmd, "@Type", DbType.String, Type);


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
    }

    public bool SaveUpdateIntroContents(int Action, string Title, string Tagline, string SiteContents, string Type)
    {
        Database db = DatabaseFactory.CreateDatabase();
        DbCommand cmd = db.GetStoredProcCommand("SaveUpdateContent");

        db.AddInParameter(cmd, "@Action", DbType.Int32, Action);
        db.AddInParameter(cmd, "@Title", DbType.String, Title);
        db.AddInParameter(cmd, "@Tagline", DbType.String, Tagline);
        db.AddInParameter(cmd, "@SiteContents", DbType.String, SiteContents);
        db.AddInParameter(cmd, "@Type", DbType.String, Type);


        using (TransactionScope scope = new TransactionScope())
        {
            try
            {
                int _Result = db.ExecuteNonQuery(cmd);
                scope.Complete();
                if (_Result > 0)
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
                return false;
            }
            finally
            {
                cmd.Dispose();
            }
        }
    }
}