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
	public partial class Login : System.Web.UI.Page
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
                    Response.Redirect("Manager.aspx");
                }

                else if (cargo == "Empleado")
                {
                    Session["usermane"] = txtUser;
                    Response.Redirect("Employee.aspx");
                }

                else if (cargo == "Tecnico")
                {
                    Session["usermane"] = txtUser;
                    Response.Redirect("Technician.aspx");
                }

                else
				{
					alerta.Text = "<script>Swal.fire('Credential Error', 'Your username or password is not correct', 'error') </script>";
					txtContra.Text = "";
					txtUser.Text = "";
				}
			}
			else
			{
				alerta.Text = "<script>Swal.fire('WARNING', 'Do not leave blank spaces', 'error') </script>";
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
			Response.Redirect("Register.aspx");
		}

        protected void btnIdioma_Click(object sender, EventArgs e)
        {

            string lang = string.Empty;
            HttpCookie cookie = Request.Cookies["CurrentLanguage"];

            if (cookie != null && cookie.Value != null)
            {
                lang = cookie.Value;
                CultureInfo Cul = CultureInfo.CreateSpecificCulture(lang);
                System.Threading.Thread.CurrentThread.CurrentUICulture = Cul;
                System.Threading.Thread.CurrentThread.CurrentCulture = Cul;
            }
            else
            {
                if (string.IsNullOrEmpty(lang)) lang = "en-Us";
                CultureInfo Cul = CultureInfo.CreateSpecificCulture(lang);

                System.Threading.Thread.CurrentThread.CurrentUICulture = Cul;
                System.Threading.Thread.CurrentThread.CurrentCulture = Cul;
                HttpCookie cookie_new = new HttpCookie("CurrentLanguage");
                cookie_new.Value = lang;
                Response.SetCookie(cookie_new);
            }
            base.InitializeCulture();
        }
    }

}
