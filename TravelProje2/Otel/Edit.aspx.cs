using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TravelProje2.Otel
{
    public partial class Edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
               int Id = Convert.ToInt16(Request.QueryString["Id"]);
               string cumle = "Select * from Otel where OtelId=@Id";
                SqlCommand cmd = new SqlCommand(cumle, conn._conn);
                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@Id", Id);
                SqlDataReader dr;
                conn.Ac();
                dr = cmd.ExecuteReader();
                if(dr.Read())
                {
                    TextBox1.Text = dr["OtelAdi"].ToString();
                    TextBox2.Text = dr["Lokasyon"].ToString();
                    TextBox3.Text = dr["GenelBakis"].ToString();
                    TextBox4.Text = dr["OtelOzellik"].ToString();
                    TextBox5.Text = dr["Konum"].ToString();
                }
                conn.Kapat();
            }
        }
        Baglan conn=new Baglan();
        protected void Button1_Click(object sender, EventArgs e)
        {
            int Id = Convert.ToInt16(Request.QueryString["Id"]);
            string cumle = "update otel set OtelAdi=@OtelAdi,Lokasyon=@Lokasyon,GenelBakis=@GenelBakis,OtelOzellik=@OtelOzellik,Konum=@Konum where OtelId=@Id";
             Dictionary<string,object> dic=new Dictionary<string,object>();
            dic.Add("@id", Id);
            dic.Add("@OtelAdi", TextBox1.Text);
            dic.Add("@Lokasyon", TextBox2.Text);
            dic.Add("@GenelBakis", TextBox3.Text);
            dic.Add("@OtelOzellik", TextBox4.Text);
            dic.Add("@Konum", TextBox5.Text);
            dic.Add("@Id", Id);
            int sonuc = conn.ExecuteCommand(cumle, dic);
            if(sonuc>0)
            {
                Response.Write("Kayıt Düzetildi");
            }
        }
    }
}