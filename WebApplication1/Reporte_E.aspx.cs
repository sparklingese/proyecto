using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using WebApplication1.Clases;

namespace WebApplication1
{
    public partial class Reporte_E : System.Web.UI.Page
    {
        MySqlConnection conec = new MySqlConnection("server=127.0.0.1; database=proyecto; Uid=root; pwd=;");

        protected void Page_Load(object sender, EventArgs e)
        {
            conec.Open();
            MySqlCommand cmd = conec.CreateCommand();
            cmd.CommandText = "select * from reportes";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            da.Fill(dt);
            gvdlista.DataSource = dt;
            gvdlista.DataBind();
            conec.Close();
        }

        protected void btnInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("Empleado.aspx");
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            if (txtproblema.Text.Trim() != "" && txtdescripcion.Text.Trim() != "" && txtmaquina.Text.Trim() != "" && txtescritor.Text.Trim() != "")
            {
                try
                {

                    Agregar pReporte = new Agregar();
                    pReporte.maquina = txtmaquina.Text.Trim();
                    pReporte.descripcion = txtdescripcion.Text.Trim();
                    pReporte.problema = txtproblema.Text.Trim();
                    pReporte.escritor = txtescritor.Text.Trim();
                    int resultado = conexiones.agregar(pReporte);
                    conec.Open();
                    MySqlCommand cmd = conec.CreateCommand();
                    cmd.CommandText = "select * from reportes";
                    cmd.ExecuteNonQuery();
                    DataTable dt = new DataTable();
                    MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                    da.Fill(dt);
                    gvdlista.DataSource = dt;
                    gvdlista.DataBind();
                    conec.Close();

                    alerta.Text = "<script>Swal.fire('Su Reporte se Envio con exito.', '¡Gracias por preferirnos!', 'success'); </script>";
                    txtmaquina.Text = "";
                    txtproblema.Text = "";
                    txtescritor.Text = "";
                    txtdescripcion.Text = "";

                }
                catch
                {
                    alerta.Text = "<script>Swal.fire('Algo salio mal', 'Intentalo otra vez', 'error') </script>";
                }
            }
            else
            {
                alerta.Text = "<script>Swal.fire('ADVERTENCIA', 'No deje espacios en blanco', 'error') </script>";
            }
        }
    }
}