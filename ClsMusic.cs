using Microsoft.Practices.EnterpriseLibrary.Data;
using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Data;
using System.Linq;
using System.Web;
using System.Transactions;
using System.Web.UI.WebControls;
//using System.IdentityModel.Protocols.WSTrust;

/// <summary>
/// Summary description for ClsMusic
/// </summary>
public class ClsMusic
{
    public ClsMusic()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public DataSet GetCategory(int Action,int Id,int CategoryId, string Title, string SubTitle, string MusicPath,string Album, string Status)
    {
        Database ObjDB = DatabaseFactory.CreateDatabase();
        DbCommand ObjCommand = ObjDB.GetStoredProcCommand("getmusic_sp");
        // Add parameters with correct DbType
        ObjDB.AddInParameter(ObjCommand, "@Action", DbType.Int32, Action);
        ObjDB.AddInParameter(ObjCommand, "@Id", DbType.Int32, Id);
        ObjDB.AddInParameter(ObjCommand, "@CategoryId", DbType.Int32,CategoryId);
        ObjDB.AddInParameter(ObjCommand, "@Title", DbType.String, Title);
        ObjDB.AddInParameter(ObjCommand, "@SubTitle", DbType.String, SubTitle);
        ObjDB.AddInParameter(ObjCommand, "@MusicPath", DbType.String, MusicPath);
        ObjDB.AddInParameter(ObjCommand, "@Album", DbType.String, Album);
        ObjDB.AddInParameter(ObjCommand, "@Status", DbType.String, Status);

        DataSet DS;
        try
        {
            DS = ObjDB.ExecuteDataSet(ObjCommand);
            if (DS.Tables.Count > 0 && DS.Tables[0].Rows.Count > 0)
            {
                return DS;
            }
            else
            {
                return null;
            }
        }
        catch (Exception ex)
        {
            // Log the exception or handle it accordingly
            return null;
        }
        finally
        {
            ObjCommand.Dispose();
        }
    }
    public bool SaveUpdateGalleryMusic(int Action, int Id, string Title,string SubTitle ,string MusicPath,string Status, String Album)
    {
        Database db = DatabaseFactory.CreateDatabase();
        DbCommand cmd = db.GetStoredProcCommand("SaveUpdateofferingnew_sp");
         db.AddInParameter(cmd, "@Action", DbType.Int32, Action);
        db.AddInParameter(cmd, "@CategoryId", DbType.Int32, Id);
        db.AddInParameter(cmd, "@Title", DbType.String, Title);
        db.AddInParameter(cmd, "@SubTitle", DbType.String, SubTitle);
        db.AddInParameter(cmd, "@Musicpath", DbType.String, MusicPath);
        db.AddInParameter(cmd, "@Status", DbType.String, Status);
        db.AddInParameter(cmd, "@Album", DbType.String, Album);
        db.AddInParameter(cmd, "@Id", DbType.String, Id);
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