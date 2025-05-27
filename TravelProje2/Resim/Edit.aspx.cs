using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TravelProje2.Resim
{
    public partial class Edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                int Id = Convert.ToInt32(Request.QueryString["Id"]);
                string cumle = "Select * from otelResimler Where ResimId=@Id";
            }
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}