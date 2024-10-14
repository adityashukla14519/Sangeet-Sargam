using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data.Common;
using System.Transactions;
using System.Web.UI.HtmlControls;


public partial class Offering : System.Web.UI.Page
{
    ClsMusic objgallery = new ClsMusic();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGrid();
        }
    }
    private void BindGrid()
   
        {
        // Assume objgallery.GetSongs() fetches a DataSet or DataTable with song data
        DataSet ds = objgallery.GetCategory(1, 0, 0, "", "", "","", "");
        if (ds != null && ds.Tables.Count > 0)
        {
            gvSongs.DataSource = ds;
            gvSongs.DataBind();
        }
    }
    protected void rptSongs_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "Play")
        {
            int index = Convert.ToInt32(e.CommandArgument);
            RepeaterItem item = gvSongs.Items[index];

            // Fetch the values of the controls
            string musicPath = ((HiddenField)item.FindControl("hdnMusicPath")).Value;

            // Use this musicPath to play the song or open the modal
            // For example, set it to a JavaScript variable
            ScriptManager.RegisterStartupScript(this, GetType(), "PlayMusic", $"openModal('{musicPath}');", true);
        }
    }
}