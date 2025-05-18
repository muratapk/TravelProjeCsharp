using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TravelProje2.Admin
{
    public partial class AdminKayit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        Baglan data = new Baglan();
        protected void Button1_Click(object sender, EventArgs e)
        {
            string sql = "insert into Admin (Kul,Sifre,Yetki) values (@Kul,@Sifre,@Yetki)";
            SqlCommand cmd = new SqlCommand(sql, data._conn);
            data.Ac();
            cmd.Parameters.Clear();

            cmd.Parameters.AddWithValue("@Kul", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Sifre", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Yetki", TextBox3.Text);
            cmd.ExecuteNonQuery();
            data.Kapat();
            //insert update delete connection açıp kapamak
            //insert update delete
            Response.Write("Kayıt Eklendi");
            Response.Write("<script>alert('Kayıt Eklendi');</script>");
        }
    }
}