using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TravelProje2.Otel
{
    public partial class OtelListe : System.Web.UI.Page
    {
        Baglan data=new Baglan();
        protected void Page_Load(object sender, EventArgs e)
        {
            string cumle = "Select * from Otell";
            GridView1.DataSource=data.GetTable(cumle);
            GridView1.DataBind();
        }
    }
}