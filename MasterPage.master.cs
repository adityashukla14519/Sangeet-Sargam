using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    GetGalleryCategory objgallery  = new GetGalleryCategory();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGalleryCategories();
        }
    }
    private void BindGalleryCategories()
    {
        DataSet ds = objgallery.GetCategory(0,0); // Adjust method name as needed
        if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
        {
            StringBuilder sb = new StringBuilder();
            foreach (DataRow row in ds.Tables[0].Rows)
            {
                string CategoryName = row["CategoryName"].ToString();
                string CategoryId = row["CategoryId"].ToString(); // Fetch CategoryId
                string CategoryUrl = "Discography.aspx?CategoryId=" + Server.UrlEncode(CategoryId);

                // Append each category as a list item
                sb.AppendFormat("<li><a href='{0}'>{1}</a></li>", CategoryUrl, CategoryName);
            }

            // Set the InnerHtml of the galleryCategories <ul>
            galleryCategories.InnerHtml = sb.ToString();
        }
    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        string cMobile = "9305063845";
        string str = "%0a Following user tried to Contact you through your website Sangeet Sangam %0a";
        str += "%0a*Name* : " + txtname.Text + "%0a";
        str += "%0a*E-mail* : " + txtEmail.Text + "%0a";
        str += "%0a*Phone* : " + txtphone.Text + "%0a";
        str += "%0a*Plan Prices* : " + txtprices.Text + "%0a";
        str += "%0a*Message* : " + txtMessage.Text + "%0a";
        string url = "https://api.whatsapp.com/send?phone=+91" + cMobile + "&text=" + str + "";
        try
        {
            ScriptManager.RegisterStartupScript(this, typeof(string), "OPEN_WINDOW", "var Mleft = (screen.width/2)-(760/2);var Mtop = (screen.height/2)-(700/2);window.open( '" + url + "', null, 'height=500,width=900,status=yes,toolbar=no,scrollbars=yes,menubar=no,location=no,top=\'+Mtop+\', left=\'+Mleft+\'' );", true);


            string message = "Your details have been saved successfully.";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
           // ClientScriptManager.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            txtname.Text = "";
            txtEmail.Text = "";
            txtprices.Text = "";
            txtphone.Text = "";
            txtMessage.Text = "";

        }
        catch (Exception ex)
        {
            throw ex;

        }
    }
}
