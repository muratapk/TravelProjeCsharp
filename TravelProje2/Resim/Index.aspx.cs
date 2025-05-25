using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TravelProje2.Resim
{
    public partial class Index : System.Web.UI.Page
    {
        Baglan conn = new Baglan();
        protected void Page_Load(object sender, EventArgs e)
        {
            string cumle = "Select * from otelresimler";
            GridView1.DataSource= conn.GetTable(cumle);
            GridView1.DataBind();   

        }
    }
}