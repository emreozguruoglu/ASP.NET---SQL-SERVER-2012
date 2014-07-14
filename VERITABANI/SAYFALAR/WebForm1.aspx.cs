using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Entity;
using System.Linq.Expressions;
using System.Configuration;

namespace VERITABANI.SAYFALAR
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        #region Properties

        public Entities Entities { get; set; }

        //Yukarıda oluşturulduğu gibi her seferinde Entitiy oluşturmak yerine bir kere oluşturup hepsi için kullanabiliriz.

        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {
            /* Aşağıdaki if bloğu her adımda postback olmaması için 
             * yani sayfaya veriler her seferinde değilde bir kere
             * de gönderebilelim diye */

            //PAGE LOAD KISMINA YAZILIR UNUTMA!
            if (!Page.IsPostBack)
            {
                this.Entities = new Entities();
            }
        }


        private void SessionKaydet()
        {
            //Her bir adımda yeni Session oluşturularak kullanıcıların girdikleri bilgiler bu sesssionlara kaydedilir...

            Session["ID"] = txtKullaniciId.Text.ToString();
            Session["Username"] = txtKullaniciAdi.Text.ToString();
            Session["Surname"] = txtKullaniciSoyadi.Text.ToString();
            Session["Password"] = txtKullaniciPwd.Text.ToString();
            Session["Age"] = txtKullaniciYas.Text.ToString();
            Session["Born"] = txtKullaniciDogumYeri.Text.ToString();
            Session["Telephone"] = txtKullaniciTel.Text.ToString();
            Session["EMail"] = txtKullaniciEmail.Text.ToString();
        }

        private void Degisim()
        {
            this.Entities = new Entities();
            Kullanici kullanici1 = new Kullanici(); //Tablodan bir nesne oluşturuldu.

            var sorgu1 = from a in this.Entities.Kullanici
                         where a.Kullanici_adi == txtKullaniciAdi.Text
                         select a.Kullanici_adi;

            foreach (String a in sorgu1)
            {
                lbKullaniciAd.Text = (" " + a);
            }

            var sorgu2 = from a in this.Entities.Kullanici
                         where a.Kullanici_soyadi == txtKullaniciSoyadi.Text
                         select a.Kullanici_soyadi;

            foreach (String a in sorgu2)
            {
                lbKullaniciSoyad.Text = (" " + a);
            }
        }

        private Kullanici KullaniciEkle()
        {
            Kullanici kullanici = new Kullanici();
            this.Entities = new Entities();

            kullanici.Kullanici_adi = txtKullaniciAdi.Text;
            kullanici.Kullanici_soyadi = txtKullaniciSoyadi.Text;
            kullanici.Kullanici_id = Int32.Parse(txtKullaniciId.Text);
            kullanici.Kullanici_parola = txtKullaniciPwd.Text;
            kullanici.Kullanici_email = txtKullaniciEmail.Text;
            kullanici.Kullanici_dogum_yeri = txtKullaniciDogumYeri.Text;
            kullanici.Kullanici_telefon = txtKullaniciTel.Text;
            kullanici.Kullanici_yas = Int32.Parse(txtKullaniciYas.Text);

            this.Entities.Kullanici.Add(kullanici);
            this.Entities.SaveChanges();
            return kullanici;
        }

        protected void btnServerKaydet_Click(object sender, EventArgs e)
        {
            SessionKaydet(); //Kullanıcıların girdiği verileri bu fonksiyonda topladım.

            Response.Redirect("SunucuSayfa.aspx");

        }

        protected void btnDbKaydet_Click(object sender, EventArgs e)
        {

            KullaniciEkle();

            Response.Redirect("DatabaseSayfa.aspx");
        }

        protected void btnSonucGoster_Click(object sender, EventArgs e)
        {
            Degisim();
        }

        protected void btnDbSil_Click(object sender, EventArgs e)
        {
            DbSıl();

            Response.Redirect("DbSİl.aspx");
        }

        private void DbSıl()
        {
            this.Entities = new Entities();


            var sorgu = (from a in this.Entities.Kullanici
                         where a.Kullanici_id == Convert.ToInt32(txtDbSorgu.Text)
                         select a).SingleOrDefault(); //Default ya da Belirli bir değer çekmek icin sonuna bunu yazdık.

            if (sorgu != null) // Sorgumuz bos değilse diye kontrol etmemiz lazım.
            {
                this.Entities.Kullanici.Remove(sorgu); // İstediğimiz ID'yi silen adım
            }

            this.Entities.SaveChanges(); // Her sorgudan sonra yapmamız zorunludur.

        }

        protected void btnDbGuncelle_Click(object sender, EventArgs e)
        {

            DbGuncelle();
        }

        private void DbGuncelle()
        {
            this.Entities = new Entities();

            int sorgu = Int32.Parse(txtDbSorgu.Text);
            
            if(sorgu >0){

            var kullanici = (from a in this.Entities.Kullanici
                               where a.Kullanici_id == sorgu
                               select a).FirstOrDefault();



            if (kullanici ==null)
            {
                Response.Write("Böyle bir kayit yok lütfen kontrol ediniz...!");
            }

            if (kullanici != null)
            {
                SessionKayit sessionKaydi = new SessionKayit();
                sessionKaydi.SessionEkle(kullanici, SessionKayit.Tip.Kullanici);
                Response.Redirect("DbGuncelle.aspx");
            }

            }

            if (sorgu < 0) {
                Response.Write("ID NULL OLAMAZ...");
            }




        }
    }
}