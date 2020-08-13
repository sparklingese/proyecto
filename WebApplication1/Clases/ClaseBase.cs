using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Globalization;
using System.Web.UI;

namespace WebApplication1.Clases
{
    public class ClaseBase : Page
    {
        protected override void InitializeCulture()
        {
            string lang = string.Empty;
            HttpCookie cookie = Request.Cookies["CurrentLanguage"];

            if (cookie != null && cookie.Value != null)
            {
                lang = cookie.Value;
                CultureInfo Cul = CultureInfo.CreateSpecificCulture(lang);
                System.Threading.Thread.CurrentThread.CurrentUICulture = Cul;
                System.Threading.Thread.CurrentThread.CurrentCulture = Cul;
            }
            else
            {
                if (string.IsNullOrEmpty(lang)) lang = "en-Us";
                CultureInfo Cul = CultureInfo.CreateSpecificCulture(lang);

                System.Threading.Thread.CurrentThread.CurrentUICulture = Cul;
                System.Threading.Thread.CurrentThread.CurrentCulture = Cul;
                HttpCookie cookie_new = new HttpCookie("CurrentLanguage");
                cookie_new.Value = lang;
                Response.SetCookie(cookie_new);
            }
            base.InitializeCulture();
        }
    }
}