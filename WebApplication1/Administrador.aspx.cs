﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Administrador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void btninicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("Administrador.aspx");
        }

        protected void btncerrar_Click(object sender, EventArgs e)
        {
            Session.Remove("usuario");
            Session.Remove("contraseña");
            Session.Remove("cargo");
            Response.Redirect("Inicio.aspx");
        }

        protected void btnreporte_Click(object sender, EventArgs e)
        {
            Response.Redirect("Reporte.aspx");
        }

        protected void btnhistorial_Click(object sender, EventArgs e)
        {
            Response.Redirect("Historial.aspx");
        }

        protected void btnrepo_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Reporte.aspx");
        }

        protected void btnusuario_Click(object sender, EventArgs e)
        {
            Response.Redirect("Usuarios.aspx");
        }
    }
}