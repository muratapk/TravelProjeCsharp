using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TravelProje2.Kategori
{
    public partial class KategoriDuzelt : System.Web.UI.Page
    {
        Baglan data = new Baglan();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int Id = Convert.ToInt16(Request.QueryString["Id"]);
                string cumle = "Select * from Kategori where KategoriId=@Id";
                SqlCommand komut = new SqlCommand(cumle, data._conn);
                komut.Parameters.Clear();
                data.Ac();
                SqlDataReader dr;
                komut.Parameters.AddWithValue("@Id", Id);
                dr = komut.ExecuteReader();
                if (dr.Read())
                {
                    TextBox1.Text = dr["KategoriAdi"].ToString();
                    
                }
                data.Kapat();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int Id = Convert.ToInt16(Request.QueryString["Id"]);
            string cumle = "Update Kategori set KategoriAdi=@KategoriAdi where KategoriId=@Id";
            SqlCommand komut = new SqlCommand(cumle, data._conn);
            komut.Parameters.Clear();
            komut.Parameters.AddWithValue("@Id", Id);
            komut.Parameters.AddWithValue("@KategoriAdi", TextBox1.Text);
            
            data.Ac();
            komut.ExecuteNonQuery();
            Response.Write("<script>alert('Kayıt Güncelledi')</script>");
            Response.Redirect("KategoriListe.aspx");
            data.Kapat();
        }
    }
}