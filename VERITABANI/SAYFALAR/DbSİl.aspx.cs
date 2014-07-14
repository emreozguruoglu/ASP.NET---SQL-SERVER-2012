using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VERITABANI.SAYFALAR
{
    public partial class DbSİl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblDbSil.Text="Veri Basarıyla Databaseden Silindi...!";
        }

        protected void btnGeri_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }
    }
}