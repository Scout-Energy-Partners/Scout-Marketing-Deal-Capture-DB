using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DealCapture_Web_DEV
{
    public partial class Home : Holder
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // Upload Page Link
        protected void imgBtnUpload_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Upload.aspx");
        }

        // Oil Page Link
        protected void imgBtnOil_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Oil.aspx");
        }

        // Gas Page Link
        protected void imgBtnGas_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Gas.aspx");
        }

        // Ngl Page Link
        protected void imgBtnNgl_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Ngl.aspx");
        }
    }
}