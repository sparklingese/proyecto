﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Empleado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btninicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("Empleado.aspx");
        }

        protected void btncerrar_Click(object sender, EventArgs e)
        {
            Session.Remove("username");
            Response.Redirect("Home.aspx");
        }

        protected void btnreporte_Click(object sender, EventArgs e)
        {
            Response.Redirect("Reporte_E.aspx");
        }

        protected void btnhistorial_Click(object sender, EventArgs e)
        {
            Response.Redirect("Administrador.aspx");
        }
    }
}