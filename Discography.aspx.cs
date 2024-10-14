using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Discrography : System.Web.UI.Page
{
    ClsGalleryimg objgallery = new ClsGalleryimg();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            string CategoryId = Request.QueryString["CategoryId"];
            if (!string.IsNullOrEmpty(CategoryId))
            {
                BindGallery(CategoryId);
            }
        }
    }

    public void BindGallery(string CategoryId)
    {

        DataSet ds = objgallery.GetImages(5, 0, CategoryId, "");
        string Html = "";
        if (ds != null && ds.Tables.Count > 0)
        {
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                string ImageName = Convert.ToString(dr["ImagePath"]);
                string imgPath = "";
                if (File.Exists(Server.MapPath("Upload/GalleryImage/" + ImageName)))
                {
                    imgPath = "Upload/GalleryImage/" + ImageName;
                }

                else
                {
                    imgPath = "Upload/GalleryImage/Dummy1.png";
                }


                Html += "  <li class='grid_4 alpha'>";
                Html += "   <div class='thumbnail'>";
                Html += "     <figure class='figure' style='position: relative;'><a class='magnifier' href='" + imgPath + "'  data-lightgallery='item'><img style='border-radius:15%' alt='' src='" + imgPath + "'><span class='link_1 animate'>" + Convert.ToString(dr["CaptionName"]) + "</span></a></figure>";

                Html += "    </div>";
                Html += "</li>";
            }
        }
        DivBindGallery.InnerHtml = Html;

    }
}