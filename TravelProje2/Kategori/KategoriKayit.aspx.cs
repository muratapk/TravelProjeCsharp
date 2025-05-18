using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TravelProje2.Kategori
{
    public partial class KategoriKayit : System.Web.UI.Page
    {
        Baglan data = new Baglan();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sql = "insert into Kategori (KategoriAdi) values (@KategoriAdi)";
            SqlCommand cmd = new SqlCommand(sql, data._conn);
            data.Ac();
            cmd.Parameters.Clear();

            cmd.Parameters.AddWithValue("@KategoriAdi", TextBox1.Text);
            
            cmd.ExecuteNonQuery();
            data.Kapat();
            //insert update delete connection açıp kapamak
            //insert update delete
            Response.Write("Kayıt Eklendi");
            Response.Write("<script>alert('Kayıt Eklendi');</script>");
        }
    }
}