﻿using System;
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
           
        }

        protected void btnInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("Empleado.aspx");
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            if (dxtproblema.Text.Trim() != "" && txtdescripcion.Text.Trim() != "" && txtmaquina.Text.Trim() != "" && txtescritor.Text.Trim() != "")
            {
                try
                {

                    Agregar pReporte = new Agregar();
                    pReporte.Maquina = txtmaquina.Text.Trim();
                    pReporte.Descripcion = txtdescripcion.Text.Trim();
                    pReporte.Problema = dxtproblema.Text.Trim();
                    pReporte.Escritor = txtescritor.Text.Trim();
                    int resultado = conexiones.agregar(pReporte);
                    conec.Open();
                    MySqlCommand cmd = conec.CreateCommand();
                    cmd.CommandText = "select * from reporte";
                    cmd.ExecuteNonQuery();
                    DataTable dt = new DataTable();
                    MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                    da.Fill(dt);
                    conec.Close();

                    alerta.Text = "<script>Swal.fire('Su Reporte se Envio con exito.', '¡Gracias por preferirnos!', 'success'); </script>";
                    txtmaquina.Text = "";
                    dxtproblema.Text = "";
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