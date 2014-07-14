using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VERITABANI.SAYFALAR
{
    public class SessionKayit
    {
        public enum Tip
        {
            Kullanici
        }

        public void SessionEkle(object entity, Tip tip)
        {
            switch (tip)
            {
                case Tip.Kullanici:
                    HttpContext.Current.Session["Kullanici"] = (Kullanici)entity;
                    break;
                default:
                    break;
            }
        }
        public object SessionOku(Tip tip)
        {
            switch (tip)
            {
                case Tip.Kullanici:
                    return HttpContext.Current.Session["Kullanici"];
                default:
                    return null;
            }
        }
    }

  
}