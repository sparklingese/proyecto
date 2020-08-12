using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

namespace WebApplication1.Clases
{
    public class Tipo_Usuario
    {
       public static int Tipo(string cargo)
       {
            int valor = 0;
            MySqlConnection conexion = datos.ObtenerConexion();
            MySqlCommand cmd = new MySqlCommand("SELECT Id_usuario FROM usuarios WHERE Cargo='" + cargo + "'", conexion);
            valor = Convert.ToInt32(cmd.ExecuteScalar());
            if (valor != 0)
            {
                //no es necasario validar aqui ya que en el formulario Registro tenemos alertas si valor = 0
            }
            else
            {
                Tipo_Usuario.Tipo(cargo);
            }
            conexion.Close();
            return valor;
        }
    }
}