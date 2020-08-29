using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using WebApplication1.Clases;
using WebApplication1.Clases_Ingles;

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
                    Add pReport = new Add();
                    pReport.Computer = txtmaquina.Text.Trim();
                    pReport.Description = txtdescripcion.Text.Trim();
                    pReport.Problem = txtproblema.Text.Trim();
                    pReport.Writer = txtescritor.Text.Trim();
                    int resultado = Conection.add(pReport);
                    conec.Open();
                    MySqlCommand cmd = conec.CreateCommand();
                    cmd.CommandText = "select * from report";
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