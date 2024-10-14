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
/// Summary description for ClsGalleryimg
/// </summary>
public class ClsGalleryimg
{
    public ClsGalleryimg()
    {
        //
        // TODO: Add constructor logic here
    }
    public DataSet GetImages(int Action, int ImageId, String CategoryId,string SubCategory)
    {
        Database db = DatabaseFactory.CreateDatabase();
        DbCommand cmd = db.GetStoredProcCommand("GetGalleryImage");

        // Add parameters for the stored procedure
        db.AddInParameter(cmd, "@Action", DbType.Int32, Action);
        db.AddInParameter(cmd, "@ImageId", DbType.Int32, ImageId);
        db.AddInParameter(cmd, "@CategoryId", DbType.String, CategoryId);
        //db.AddInParameter(cmd, "@SubCategory", DbType.String, SubCategory);

        DataSet ds;
        using (TransactionScope scope = new TransactionScope())
        {
            try
            {
                ds = db.ExecuteDataSet(cmd);
                return ds.Tables[0].Rows.Count > 0 ? ds : null;
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
    public bool SaveUpdateGalleryImage(int Action, int ImageId,string CategoryId, string CaptionName, string ImagePath)
    {
        Database db = DatabaseFactory.CreateDatabase();
        DbCommand cmd = db.GetStoredProcCommand("SaveUpdateGalleryImage");
        
        db.AddInParameter(cmd, "@Action", DbType.Int32, Action);
        db.AddInParameter(cmd, "@ImageId", DbType.Int32, ImageId);
        db.AddInParameter(cmd, "@CategoryId", DbType.Int32, CategoryId);
        db.AddInParameter(cmd, "@CaptionName", DbType.String, CaptionName);
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