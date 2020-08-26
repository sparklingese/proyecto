using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx");
        }

        protected void btnISesion_Click(object sender, EventArgs e)
        {
            Response.Redirect("IniciarSesion.aspx");
        }


        protected void btnregi_Click1(object sender, EventArgs e)
        {
            Response.Redirect("IniciarSesion.aspx");
        }

        protected void btnIdioma_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}