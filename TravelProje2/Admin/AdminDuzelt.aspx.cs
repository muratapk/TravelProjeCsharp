using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TravelProje2.Admin
{
    public partial class AdminDuzelt : System.Web.UI.Page
    {
        Baglan data = new Baglan();
        protected void Page_Load(object sender, EventArgs e)
        {
         if(!IsPostBack)
            {
                int Id = Convert.ToInt16(Request.QueryString["Id"]);
                string cumle = "Select * from Admin where AdminId=@Id";
                SqlCommand komut = new SqlCommand(cumle, data._conn);
                komut.Parameters.Clear();
                data.Ac();
                SqlDataReader dr;
                komut.Parameters.AddWithValue("@Id", Id);
                dr = komut.ExecuteReader();
                if(dr.Read())
                {
                    TextBox1.Text = dr["Kul"].ToString();
                    TextBox2.Text = dr["Sifre"].ToString();
                    TextBox3.Text = dr["Yetki"].ToString();
                }
                data.Kapat();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int Id = Convert.ToInt16(Request.QueryString["Id"]);
            string cumle = "Update Admin set Kul=@Kul, Sifre=@Sifre,Yetki=@Yetki where AdminId=@Id";
            SqlCommand komut = new SqlCommand(cumle, data._conn);
            komut.Parameters.Clear();
            komut.Parameters.AddWithValue("@Id", Id);
            komut.Parameters.AddWithValue("@Kul", TextBox1.Text);
            komut.Parameters.AddWithValue("@Sifre", TextBox2.Text);
            komut.Parameters.AddWithValue("@Yetki", TextBox3.Text);
            data.Ac();
            komut.ExecuteNonQuery();
            Response.Write("<script>alert('Kayıt Güncelledi')</script>");
            Response.Redirect("AdminListe.aspx");
            data.Kapat();
        }
    }
}