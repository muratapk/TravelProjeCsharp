using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TravelProje2.Otel
{
    public partial class Delete : System.Web.UI.Page
    {
        Baglan conn = new Baglan();
        protected void Page_Load(object sender, EventArgs e)
        {
          int Id = Convert.ToInt16(Request.QueryString["Id"]);
            string sorgu = "Delete from Otel where OtelId=@Id";
            Dictionary<string, object> dic = new Dictionary<string, object>();
            dic.Add("@Id", Id);
            int sonuc=conn.ExecuteCommand(sorgu, dic);
            if(sonuc>0)
            {
                Response.Write("Kayıt Silindi");
            }
        }
    }
}