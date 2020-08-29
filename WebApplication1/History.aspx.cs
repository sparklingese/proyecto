using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using WebApplication1.Clases;
using MySql.Data.MySqlClient;

namespace WebApplication1
{
    public partial class History : System.Web.UI.Page
    {
        MySqlConnection conec = new MySqlConnection("server=127.0.0.1; database=proyecto; Uid=root; pwd=;");

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            try
            {


                conec.Open();
                MySqlCommand cmd = conec.CreateCommand();
                cmd.CommandText = "select * from report";
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                da.Fill(dt);
                gdvrepo.DataSource = dt;
                gdvrepo.DataBind();
                conec.Close();

                alerta.Text = "<script>Swal.fire('The data has been loaded successfully.', 'Thank you for preferring us!', 'success'); </script>";

            }
            catch
            {
                alerta.Text = "<script>Swal.fire('Something went wrong', 'Try again', 'error') </script>";
            }
        }
        protected void btnInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("Manager.aspx");
        }
    }
}