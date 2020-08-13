using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;
using System.IO;
using MySql.Data.MySqlClient;
using WebApplication1.Clases;
using System.Globalization;

namespace WebApplication1
{
    public partial class IniciarSesion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnIniciar_Click1(object sender, EventArgs e)
        {
            if (txtContra.Text != "" && txtUser.Text != "" && txtTipo.Text != "")
            {
                string contra, usuario;
                string cargo;
                contra = EncryptString(txtContra.Text, initVector);
                usuario = txtUser.Text;
                cargo = txtTipo.Text;
                datos1.valorGlobal = usuario;


                MySqlConnection conexion = new MySqlConnection("Server=127.0.0.1; database=proyecto; Uid=root; pwd=;");
                var cmd = "SELECT Id_usuario from usuarios WHERE Nombre_Usuario='" + usuario + "'AND Cargo='" + cargo + "'AND Password='" + contra + "';";
                MySqlCommand comando = new MySqlCommand(cmd, conexion);
                conexion.Open();

                if (cargo == "Administrador")
                {
                    Session["usermane"] = txtUser;
                    Response.Redirect("Administrador.aspx");
                }

                else if (cargo == "Empleado")
                {
                    Session["usermane"] = txtUser;
                    Response.Redirect("Empleado.aspx");
                }

                else if (cargo == "Tecnico")
                {
                    Session["usermane"] = txtUser;
                    Response.Redirect("Tecnico.aspx");
                }

                else
                {
                    alerta.Text = "<script>Swal.fire('Error de Credenciales', 'Su usuario o contraseña no son correctos', 'error') </script>";
                    txtContra.Text = "";
                    txtUser.Text = "";
                }
            }
            else
            {
                alerta.Text = "<script>Swal.fire('ADVERTENCIA', 'No deje espacios en blanco', 'error') </script>";
            }
        }

        private const string initVector = "pemgail9uzpgzl88";
        private const int keysize = 256;

        public static string EncryptString(string plainText, string passPhrase)
        {
            byte[] initVectorBytes = Encoding.UTF8.GetBytes(initVector);
            byte[] plainTextBytes = Encoding.UTF8.GetBytes(plainText);
            PasswordDeriveBytes password = new PasswordDeriveBytes(passPhrase, null);
            byte[] keyBytes = password.GetBytes(keysize / 8);
            RijndaelManaged symmetricKey = new RijndaelManaged();
            symmetricKey.Mode = CipherMode.CBC;
            ICryptoTransform encryptor = symmetricKey.CreateEncryptor(keyBytes, initVectorBytes);
            MemoryStream memoryStream = new MemoryStream();
            CryptoStream cryptoStream = new CryptoStream(memoryStream, encryptor, CryptoStreamMode.Write);
            cryptoStream.Write(plainTextBytes, 0, plainTextBytes.Length);
            cryptoStream.FlushFinalBlock();
            byte[] cipherTextBytes = memoryStream.ToArray();
            memoryStream.Close();
            cryptoStream.Close();
            return Convert.ToBase64String(cipherTextBytes);
        }

        protected void btnRegistro_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registrarse.aspx");
        }
    }
}