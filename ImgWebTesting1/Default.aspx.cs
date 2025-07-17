using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ImgWebTesting1
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*if (!IsPostBack)
            {
                string imagesPath = Server.MapPath("~/Images");
                var imageFiles = Directory.GetFiles(imagesPath, "*.png")
                                          .Take(20)
                                          .Select(f => new { ImageUrl = "~/Images/" + Path.GetFileName(f) })
                                          .ToList();

                ImageRepeater.DataSource = imageFiles;
                ImageRepeater.DataBind();
            }*/
        }

    }
}