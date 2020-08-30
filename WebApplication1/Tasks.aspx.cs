using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using WebApplication1.Clases;
using MySql.Data.MySqlClient;
using WebApplication1.Clases_Ingles;

namespace WebApplication1
{
    public partial class Tasks : System.Web.UI.Page
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
                cmd.CommandText = "select * FROM report WHERE status='Available'";
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
            Response.Redirect("Technician.aspx");
        }

        protected void Unnamed2_Click(object sender, EventArgs e)
        {
            MySqlConnection conexion = Data.ObtenerConexion();
            string query = "UPDATE report SET Status='Solved' WHERE Status='Available'";
            MySqlCommand comando = new MySqlCommand(query,conexion);
            comando.ExecuteNonQuery();
            conexion.Close();

            alerta.Text = "<script>Swal.fire('The status has been successfully updated.', 'Thank you for preferring us!', 'success'); </script>";
        }

        protected void Unnamed3_Click(object sender, EventArgs e)
        {
            MySqlConnection conexion = Data.ObtenerConexion();
            string query = "UPDATE report SET Status='Unsolved' WHERE Status='Available'";
            MySqlCommand comando = new MySqlCommand(query, conexion);
            comando.ExecuteNonQuery();
            conexion.Close();

            alerta.Text = "<script>Swal.fire('The status has been successfully updated.', 'Thank you for preferring us!', 'success'); </script>";
        }

        protected void Unnamed4_Click(object sender, EventArgs e)
        {
            try
            {


                conec.Open();
                MySqlCommand cmd = conec.CreateCommand();
                cmd.CommandText = "select * FROM report";
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

        protected void Unnamed5_Click(object sender, EventArgs e)
        {
            try
            {
                MySqlConnection conexion = datos.ObtenerConexion();
                MySqlCommand comand = new MySqlCommand("SELECT * FROM report WHERE Status='Available'", conexion);
                MySqlDataReader report = comand.ExecuteReader();
                if (report.Read())
                {
                    alerta.Text = "<script>Swal.fire('Be selected successfully.', '', 'success'); </script>";
                }
                conexion.Close();
            }
            catch
            {
                alerta.Text = "<script>Swal.fire('Something went wrong Try again', 'Check that ID is correct', 'error') </script>";

            }
        }
    }
}
