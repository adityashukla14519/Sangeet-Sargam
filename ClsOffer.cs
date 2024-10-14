using Microsoft.Practices.EnterpriseLibrary.Data;
using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Data;
using System.Linq;
using System.Web;
using System.Transactions;
using System.Web.UI.WebControls;

/// <summary>
/// Summary description for ClsOffer
/// </summary>
public class ClsOffer
{
    public ClsOffer()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public DataSet GetImages(int Action, int OfferId)
    {
        Database db = DatabaseFactory.CreateDatabase();
        DbCommand cmd = db.GetStoredProcCommand("GetOffering");

        // Add parameters for the stored procedure
        db.AddInParameter(cmd, "@Action", DbType.Int32, Action);
        db.AddInParameter(cmd, "@OfferId", DbType.Int32, OfferId);

        DataSet ds;
        using (TransactionScope scope = new TransactionScope())
        {
            try
            {
                ds = db.ExecuteDataSet(cmd);
                return ds;
            }
            catch (Exception ex)
            {
                // Log the exception (optional)
                // Example: Logger.LogError(ex);
                return null;
            }
            finally
            {
                cmd.Dispose();
            }
        }
    }
    public bool SaveUpdateOfferingData(int Action, int OfferId, string Title, string Author,string Description ,string ImagePath)
    {
        Database db = DatabaseFactory.CreateDatabase();
        DbCommand cmd = db.GetStoredProcCommand("SaveUpdateOffering");

        db.AddInParameter(cmd, "@Action", DbType.Int32, Action);
        db.AddInParameter(cmd, "@OfferId", DbType.Int32, OfferId);
        db.AddInParameter(cmd, "@Title", DbType.String, Title);
        db.AddInParameter(cmd, "@Author", DbType.String, Author);
        db.AddInParameter(cmd, "@Description", DbType.String, Description);
        db.AddInParameter(cmd, "@ImagePath", DbType.String, ImagePath);
        ;
        using (TransactionScope scope = new TransactionScope())
        {
            try
            {
                int s = db.ExecuteNonQuery(cmd);
                scope.Complete();

                if (s > 0)
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
            finally
            {
                cmd.Dispose();
            }
        }
    }
}