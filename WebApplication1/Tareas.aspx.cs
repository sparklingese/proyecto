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
    public partial class Tareas : System.Web.UI.Page
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
                cmd.CommandText = "SELECT * FROM reporte WHERE Estado='Disponible'";
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                da.Fill(dt);
                gdvrepo.DataSource = dt;
                gdvrepo.DataBind();
                conec.Close();

                alerta.Text = "<script>Swal.fire('Los datos se han cargado con exito.', '¡Gracias por preferirnos!', 'success'); </script>";

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

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            MySqlConnection conexion = datos.ObtenerConexion();
            string query = "UPDATE reporte SET Estado='Resuelto' WHERE Estado='Disponible'";
            MySqlCommand comando = new MySqlCommand(query, conexion);
            comando.ExecuteNonQuery();
            conexion.Close();

            alerta.Text = "<script>Swal.fire('El estado se modifico correctamente.', '¡Gracias por preferirnos!', 'success'); </script>";
        }

        protected void Unnamed3_Click(object sender, EventArgs e)
        {
            MySqlConnection conexion = datos.ObtenerConexion();
            string query = "UPDATE reporte SET Estado='Incompleto' WHERE Estado='Disponible'";
            MySqlCommand comando = new MySqlCommand(query, conexion);
            comando.ExecuteNonQuery();
            conexion.Close();

            alerta.Text = "<script>Swal.fire('El estado se modifico correctamente.', '¡Gracias por preferirnos!', 'success'); </script>";
        }

        protected void Unnamed4_Click(object sender, EventArgs e)
        {
            try
            {


                conec.Open();
                MySqlCommand cmd = conec.CreateCommand();
                cmd.CommandText = "select * FROM reporte";
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                da.Fill(dt);
                gdvrepo.DataSource = dt;
                gdvrepo.DataBind();
                conec.Close();

                alerta.Text = "<script>Swal.fire('Los datos se cargaron correctamente.', '¡Gracias por preferirnos!', 'success'); </script>";

            }
            catch
            {
                alerta.Text = "<script>Swal.fire('Algo salio mal', 'Intentalo de nuevo', 'error') </script>";
            }
        }

        protected void Unnamed5_Click(object sender, EventArgs e)
        {
            try
            {
                MySqlConnection conexion = datos.ObtenerConexion();
                MySqlCommand comand = new MySqlCommand("SELECT * FROM reporte WHERE Estado='Disponible'", conexion);
                MySqlDataReader report = comand.ExecuteReader();
                if (report.Read())
                {
                    alerta.Text = "<script>Swal.fire('Sea seleccionado con exito.', '', 'success'); </script>";
                }
                conexion.Close();
            }
            catch
            {
                alerta.Text = "<script>Swal.fire('Algo salio mal Intentalo otra vez', 'Verifique que ID se correcto', 'error') </script>";

            }
        }
    }



}


