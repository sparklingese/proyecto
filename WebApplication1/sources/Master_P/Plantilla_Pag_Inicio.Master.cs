using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.sources.Master_P
{
	public partial class Plantilla_Pag_Inicio : System.Web.UI.MasterPage
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void Inicio_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx");
        }

        protected void ISesion_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void Registro_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

      
    }
}