using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using VERITABANI.SAYFALAR;

namespace VERITABANI.SAYFALAR
{
    public partial class DbGuncelle : System.Web.UI.Page
    {
        public Kullanici Kullanici { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            SessionKayit sessionKayit = new SessionKayit();
            this.Kullanici = sessionKayit.SessionOku(SessionKayit.Tip.Kullanici) as Kullanici;
        }

        protected void btnDbGuncelleAspx_Click(object sender, EventArgs e)
        {
            Entities entities = new Entities();

            var myuserEntity = (from a in entities.Kullanici
                               where a.Kullanici_id == this.Kullanici.Kullanici_id 
                               select a).SingleOrDefault();

            myuserEntity.Kullanici_adi = txtKullaniciAdi.Text;
            myuserEntity.Kullanici_soyadi = txtKullaniciSoyadi.Text;
            myuserEntity.Kullanici_parola = txtKullaniciPwd.Text;
            myuserEntity.Kullanici_email = txtKullaniciEmail.Text;
            myuserEntity.Kullanici_dogum_yeri = txtKullaniciDogumYeri.Text;
            myuserEntity.Kullanici_telefon = txtKullaniciTel.Text;
            myuserEntity.Kullanici_yas = Int32.Parse(txtKullaniciYas.Text);

           
            entities.SaveChanges();   
        }

        protected void btnGeri_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }
    }
}