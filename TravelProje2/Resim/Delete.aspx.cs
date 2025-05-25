using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TravelProje2.Resim
{
    public partial class Delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }
        Baglan conn = new Baglan();
        protected void Button1_Click(object sender, EventArgs e)
        {
            int Id = Convert.ToInt32(Request.QueryString["Id"]);
            string cumle = "Delete from otelresimler where ResimId=@Id";
            Dictionary<string,object> dic = new Dictionary<string,object>();
            dic.Add("@Id", Id);
            int sonuc = conn.ExecuteCommand(cumle, dic);
            if (sonuc > 0)
            {
                Response.Write("Kayıt Silindi");
                Response.Write("<script>alert('Kayıt Silindi')</script>");
            }
        }
    }
}