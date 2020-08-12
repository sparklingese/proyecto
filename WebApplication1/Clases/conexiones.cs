using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

namespace WebApplication1.Clases
{
	public class conexiones
	{
		//********************************************************************************      
		public static int UsuariosRepetidos(string usuario, string contra, string nombre, string genero, string cargo)
		{
			int valor = 0;
			MySqlConnection conexion = datos.ObtenerConexion();
			MySqlCommand cmd = new MySqlCommand("SELECT Id_usuario FROM usuarios WHERE Nombre_Usuario='" + usuario + "'", conexion);
			valor = Convert.ToInt32(cmd.ExecuteScalar());
			if (valor != 0)
			{
				//no es necasario validar aqui ya que en el formulario Registro tenemos alertas si valor = 0
			}
			else
			{
				conexiones.AgregarUsuario(nombre, usuario, contra, genero, cargo);
			}
			conexion.Close();
			return valor;
		}
		//********************************************************************************
		public static int AgregarUsuario(string nombre, string usuario, string contra, string genero, string cargo)
		{
			int retorno = 0;
			MySqlCommand comando = new MySqlCommand(string.Format("Insert into usuarios (Nombre,Nombre_Usuario,Password,Genero,Cargo) values ('{0}','{1}','{2}','{3}','{4}')", nombre, usuario, contra, genero, cargo), datos.ObtenerConexion());
			retorno = comando.ExecuteNonQuery();

			return retorno;
		}
        //********************************************************************************
        public static int agregar(Agregar pReporte)
        {
            int retorno = 0;
            MySqlCommand comado = new MySqlCommand(string.Format("Insert into reportes (Id, Maquina, Descripcion, Problema, Escritor) values('{0}','{1}','{2}','{3}','{4}')", pReporte.Id, pReporte.maquina, pReporte.descripcion,
           pReporte.problema, pReporte.escritor), datos.ObtenerConexion());
            retorno = comado.ExecuteNonQuery();
            return retorno;
        }

    }
}