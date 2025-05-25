using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TravelProje2.Otel
{
    public partial class Create : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        Baglan conn = new Baglan();
        protected void Button1_Click(object sender, EventArgs e)
        {
            string cumle = "insert into otel(OtelAdi,Lokasyon,GenelBakis,OtelOzellik,Konum) values(@OtelAdi,@Lokasyon,@GenelBakis,@OtelOzellik,@Konum)";
            Dictionary<string, object>dic = new Dictionary<string, object>();
            dic.Add("@OtelAdi", TextBox1.Text);
            dic.Add("@Lokasyon", TextBox2.Text);
            dic.Add("@GenelBakis", TextBox3.Text);
            dic.Add("@OtelOzellik", TextBox4.Text);
            dic.Add("@Konum", TextBox5.Text);
            int sonuc = conn.ExecuteCommand(cumle, dic);
            if(sonuc>0)
            {
                Response.Write("Kayıt Yapıldı");
            }
        }
    }
}