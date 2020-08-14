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
    public partial class Report : System.Web.UI.Page
    {
        MySqlConnection conec = new MySqlConnection("server=127.0.0.1; database=proyecto; Uid=root; pwd=;");

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("Manager.aspx");
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            if (txtmaquina.Text.Trim() != "" && txtdescripcion.Text.Trim() != "" && txtproblema.Text.Trim() != "" && txtescritor.Text.Trim() != "")
            {
                try
                {
                    Agregar pReporte = new Agregar();
                    pReporte.Maquina = txtmaquina.Text.Trim();
                    pReporte.Descripcion = txtdescripcion.Text.Trim();
                    pReporte.Problema = txtproblema.Text.Trim();
                    pReporte.Escritor = txtescritor.Text.Trim();
                    int resultado = conexiones.agregar(pReporte);
                    conec.Open();
                    MySqlCommand cmd = conec.CreateCommand();
                    cmd.CommandText = "select * from reporte";
                    cmd.ExecuteNonQuery();
                    DataTable dt = new DataTable();
                    MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                    conec.Close();

                    alerta.Text = "<script>Swal.fire('Your report was successfully submitted.', '¡Thank you for preferring us!', 'success'); </script>";
                    txtmaquina.Text = "";
                    txtdescripcion.Text = "";
                    txtproblema.Text = "";
                    txtescritor.Text = "";

                }
                catch
                {
                    alerta.Text = "<script>Swal.fire('Something went wrong', 'Try again'., 'error') </script>";
                }
            }
            else
            {
                alerta.Text = "<script>Swal.fire('WARNING', 'Do not leave blanks', 'error') </script>";
            }
        }
    }
}