using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.IO;
using System.Web.UI.WebControls;

namespace TravelProje2.Resim
{
    public partial class Create : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string cumle = "Select OtelId,OtelAdi from otel";
            DropDownList1.DataSource=conn.GetTable(cumle);
            DropDownList1.DataTextField = "OtelAdi";  // Kullanıcıya görünen kısım
            DropDownList1.DataValueField = "OtelId";  // Seçilen değerin değeri
            DropDownList1.DataBind();
           
        }
        Baglan conn=new Baglan();
        protected void Button1_Click(object sender, EventArgs e)
        {
            if(FileUpload1.HasFile)
            {
                
                try
                {
                    string filename = Path.GetFileName(FileUpload1.FileName);
                    //dosyanın adını al
                    int fileLength = FileUpload1.PostedFile.ContentLength;

                    //dosya uzunluğu boyutunu al
                    string contentType = FileUpload1.PostedFile.ContentType;
                    //dosyanın tipi al
                    string extension = Path.GetExtension(FileUpload1.FileName).ToLower();
                    //dosyasını uzantısını mutlaka uzantıyı tolower

                    Stream fileStream = FileUpload1.PostedFile.InputStream;
                    byte[] fileData = new byte[fileLength];
                    Response.Write(filename + fileLength + contentType);
                    string[] allowType = { ".jpg", ".gif", ".png", "jpeg" };
                    if(Array.IndexOf(allowType, extension) == -1)
                    {
                        Label1.Text = "Hatalı Dosya Yüklediniz Jpg Png Gif olmak zorunda";
                        Label1.ForeColor = System.Drawing.Color.Red;
                        return;
                    }
                    string enryptFile = Guid.NewGuid() + extension;
                    string uploadPath = Server.MapPath("~/Images/");
                    if(!Directory.Exists(uploadPath)) {
                        Directory.CreateDirectory(uploadPath);      
                     }
                    string filePath=Path.Combine(uploadPath, enryptFile);
                    FileUpload1.SaveAs(filePath);
                    string cumle = "insert into otelresimler (OtelId,Resimadi,ResimYolu) values (@OtelId,@Resimadi,@ResimYolu)";
                    Dictionary<string, object> dic = new Dictionary<string, object>();
                    dic.Add("@OtelId", DropDownList1.DataValueField);
                    dic.Add("@Resimadi", TextBox1.Text);
                    dic.Add("@ResimYolu", enryptFile);
                    conn.ExecuteCommand(cumle, dic);
                    Label1.Text = "Kayıt Yapıldı";
                    Label1.ForeColor=System.Drawing.Color.Green;

                  
                }
                catch (Exception ex)
                {

                    Label1.Text = ex.Message.ToString();
                }



            }
        }
    }
}