using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TravelProje2.Kategori
{
    public partial class KategoriListe : System.Web.UI.Page
    {
        Baglan data=new Baglan();
        protected void Page_Load(object sender, EventArgs e)
        {
            string sql = "Select * from Kategori";
            SqlCommand cmd = new SqlCommand(sql, data._conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
    }
}