using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Users : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btninicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("Manager.aspx");
        }

        protected void btncrear_Click(object sender, EventArgs e)
        {
            Response.Redirect("Create.aspx");
        }

    }
}