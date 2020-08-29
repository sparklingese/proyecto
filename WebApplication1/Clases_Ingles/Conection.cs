using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

namespace WebApplication1.Clases_Ingles
{
    public class Conection
    {
        public static int RepeatUsers(string user, string password, string name, string gender, string position)
        {
            int valor = 0;
            MySqlConnection conexion = Data.ObtenerConexion();
            MySqlCommand cmd = new MySqlCommand("SELECT User_Id FROM users WHERE Username='" + user + "'", conexion);
            valor = Convert.ToInt32(cmd.ExecuteScalar());
            if (valor != 0)
            {
                //no es necasario validar aqui ya que en el formulario Registro tenemos alertas si valor = 0
            }
            else
            {
                Conection.AddUser(name, user, password, gender, position);
            }
            conexion.Close();
            return valor;
        }
        //********************************************************************************
        public static int AddUser(string name, string user, string password, string gender, string position)
        {
            int retorno = 0;
            MySqlCommand comando = new MySqlCommand(string.Format("Insert into users (Full_Name,Username,Password,Gender,Position) values ('{0}','{1}','{2}','{3}','{4}')", name, user, password, gender, position), Data.ObtenerConexion());
            retorno = comando.ExecuteNonQuery();

            return retorno;
        }
        //********************************************************************************
        public static int add(Add pReport)
        {
            int retorno = 0;
            MySqlCommand comado = new MySqlCommand(string.Format("Insert into report (Id,Computer_No,Description,Problem_type,User) values ('{0}','{1}','{2}','{3}','{4}')", pReport.Id, pReport.Computer, pReport.Description, pReport.Problem, pReport.Writer), Data.ObtenerConexion());
            retorno = comado.ExecuteNonQuery();
            return retorno;
        }
    }
}