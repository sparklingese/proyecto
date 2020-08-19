﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Manager : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btninicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("Manager.aspx");
        }

        protected void btncerrar_Click(object sender, EventArgs e)
        {
            Session.Remove("username");
            Response.Redirect("Home.aspx");
        }

        protected void btnreporte_Click(object sender, EventArgs e)
        {
            Response.Redirect("Report.aspx");
        }

        protected void btnhistorial_Click(object sender, EventArgs e)
        {
            Response.Redirect("History.aspx");
        }

        protected void btnrepo_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Report.aspx");
        }

        protected void btnusuario_Click(object sender, EventArgs e)
        {
            Response.Redirect("Users.aspx");
        }
    }
}