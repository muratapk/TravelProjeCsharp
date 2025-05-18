using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TravelProje2.Kategori
{
    public partial class KategoriSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("KategoriListe.aspx");
        }
        Baglan data = new Baglan();
        protected void Button1_Click(object sender, EventArgs e)
        {
            int Id = Convert.ToInt16(Request.QueryString["Id"]);
            string cumle = "Delete from Kategori where KategoriId=@Id";
            SqlCommand cmd = new SqlCommand(cumle, data._conn);
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@Id", Id);
            data.Ac();
            cmd.ExecuteNonQuery();
            data.Kapat();
            Response.Write("<script>alert('Kayıt Silindi');</script>");
        }
    }
}