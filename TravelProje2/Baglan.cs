using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Policy;
using System.Web;

namespace TravelProje2
{
    public class Baglan
    {
        public SqlConnection _conn;
        //alt çizgi koyamanız this.conn
        private string cumle = "Data Source=DESKTOP-GRV4CB6\\SQLEXPRESS;Initial Catalog=traveldb;Integrated Security=True;TrustServerCertificate=True";
        //connection string ifadesini 
        public Baglan()
        {
           _conn=new SqlConnection(cumle);
         //consturoctor yapıcı oluşturuldu otomatik çalışıyor
        }
        public void Ac()
        {
          if(_conn.State==System.Data.ConnectionState.Closed) {
                _conn.Open();
            }
            // aç otomaik connection acak burada kontrol eğer 
            //durumu kapalı ise bunu aç

        }
        public void Kapat()
        {
            if(_conn.State==System.Data.ConnectionState.Open)
            {
                _conn.Close();
            }
            //kapata kodunu yazıyoru eğer açık ise kapat kontrol
            
        }
        public int ExecuteCommand(string query,Dictionary<string,object>parameters)
        {
            //ekle silme guncelleme tek komut baglandı
            this.Ac();
            SqlCommand cmd = new SqlCommand(query, _conn);
            cmd.Parameters.Clear();
            foreach(var param in  parameters)
            {
                cmd.Parameters.AddWithValue(param.Key, param.Value);
            }
            return cmd.ExecuteNonQuery();
            this.Kapat();
        }
        public DataTable TGetTable(string query,Dictionary<string,object>parameters=null)
        {
            //gridvie datalist tüm verileri çekmek için kullan method
            this.Ac();
            SqlCommand cmd = new SqlCommand(query, _conn);
            cmd.Parameters.Clear();
            foreach(var param in parameters)
            {
                cmd.Parameters.AddWithValue(param.Key, param.Value);
            }
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;




            this.Kapat();
        }
        public DataTable GetTable(string query )
        {
            //gridvie datalist tüm verileri çekmek için kullan method
            this.Ac();
            SqlCommand cmd = new SqlCommand(query, _conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;




            this.Kapat();
        }
    }
}