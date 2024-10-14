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
/// Summary description for ClsBlog
/// </summary>
public class ClsBlog
{
    public ClsBlog()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public DataSet GetImages(int Action, int OfferId)
    {
        Database db = DatabaseFactory.CreateDatabase();
        DbCommand cmd = db.GetStoredProcCommand("GetBlogdata");

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
}