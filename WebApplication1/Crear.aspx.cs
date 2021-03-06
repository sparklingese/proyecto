﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;
using System.IO;
using WebApplication1.Clases;

namespace WebApplication1
{
    public partial class Crear : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btninicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("Administrador.aspx");
        }

        protected void btncrear_Click(object sender, EventArgs e)
        {
            Response.Redirect("Crear.aspx");
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            if (txtUser.Text.Trim() != "" && txtContra.Text.Trim() != "" && txtConfirm.Text.Trim() != "" && txtName.Text.Trim() != "" && dxtGenero.Text.Trim() != "" && dxtCargo.Text.Trim() != "")
            {
                if (txtContra.Text == txtConfirm.Text)
                {
                    string nombre;
                    string usuario;
                    string encriptada;
                    string genero;
                    string cargo;
                    nombre = txtName.Text;
                    usuario = txtUser.Text;
                    encriptada = EncryptString(txtContra.Text, initVector);
                    genero = dxtGenero.Text;
                    cargo = dxtCargo.Text;
                    if (conexiones.UsuariosRepetidos(usuario, encriptada, nombre, genero, cargo) == 0)
                    {
                        alerta.Text = "<script>Swal.fire('Registrado con éxito', '¡Se ha registrado satisfacoriamente!', 'success'); </script>";
                        txtName.Text = "";
                        txtUser.Text = "";
                        txtContra.Text = "";
                        txtConfirm.Text = "";
                        dxtGenero.Text = "";
                        dxtCargo.Text = "";
                    }
                    else
                    {
                        alerta.Text = "<script>Swal.fire('Este usuario ya existe', 'Elije nuevo nombre de usuario', 'error'); </script>";
                    }
                }
                else
                {
                    alerta.Text = "<script>Swal.fire('Contraseña incorrecta', 'Repita su contraseña.', 'error');</script>";
                }
            }
            else
            {
                alerta.Text = "<script>Swal.fire('ADVERTENCIA', 'No deje espacios en blanco', 'error') </script>";
            }
        }
        private const string initVector = "pemgail9uzpgzl88";
        // This constant is used to determine the keysize of the encryption algorithm
        private const int keysize = 256;
        //Encrypt
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
    }
}