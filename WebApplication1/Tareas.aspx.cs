using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using WebApplication1.Clases;

namespace WebApplication1
{
    public partial class Tareas : System.Web.UI.Page
    {
        MySqlConnection conec = new MySqlConnection("server=127.0.0.1; database=proyecto; Uid=root; pwd=;");

        protected void Page_Load(object sender, EventArgs e)
        {
            conec.Open();
            MySqlCommand cmd = conec.CreateCommand();
            cmd.CommandText = "select * from reporte";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            da.Fill(dt);
            gvdlista.DataSource = dt;
            gvdlista.DataBind();
            conec.Close();
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            try
            {
                Agregar pReporte = new Agregar();
                int resultado = conexiones.agregar(pReporte);
                conec.Open();
                MySqlCommand cmd = conec.CreateCommand();
                cmd.CommandText = "select * from reporte";
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                da.Fill(dt);
                gvdlista.DataSource = dt;
                gvdlista.DataBind();
                conec.Close();

                alerta.Text = "<script>Swal.fire('Su producto se Agrego con exito.', '¡Gracias por preferirnos!', 'success'); </script>";
                txtproducto.Text = "";
                txtprecio.Text = "";
                txtcantidad.Text = "";
                txtmarca.Text = "";

            }
            catch
            {
                alerta.Text = "<script>Swal.fire('Algo salio mal', 'Intentalo otra vez', 'error') </script>";
            }
        }
        protected void btnInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("Tecnico.aspx");
        }
    }
}

