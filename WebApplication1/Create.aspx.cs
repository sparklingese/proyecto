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
using WebApplication1.Clases_Ingles;

namespace WebApplication1
{
    public partial class Create : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btninicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("Manager.aspx");
        }

        protected void btncrear_Click(object sender, EventArgs e)
        {
            Response.Redirect("Create.aspx");
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            if (txtUser.Text.Trim() != "" && txtContra.Text.Trim() != "" && txtConfirm.Text.Trim() != "" && txtName.Text.Trim() != "" && dxtGenero.Text.Trim() != "" && dxtCargo.Text.Trim() != "")
            {
                if (txtContra.Text == txtConfirm.Text)
                {
                    string name;
                    string user;
                    string encriptada;
                    string gender;
                    string position;
                    name = txtName.Text;
                    user = txtUser.Text;
                    encriptada = EncryptString(txtContra.Text, initVector);
                    gender = dxtGenero.Text;
                    position = dxtCargo.Text;
                    if (Conection.RepeatUsers(user, encriptada, name, gender, position) == 0)
                    {
                        alert.Text = "<script>Swal.fire('Successfully registered', 'You've registered satisfactorily!', 'success');</script>";
                        txtName.Text = "";
                        txtUser.Text = "";
                        txtContra.Text = "";
                        txtConfirm.Text = "";
                        dxtGenero.Text = "";
                        dxtCargo.Text = "";
                    }
                    else
                    {
                        alert.Text = "<script>Swal.fire('This user already exists', 'Choose new user name', 'error');</script>";
                    }
                }
                else
                {
                    alert.Text = "<script>Swal.fire('Wrong password', 'Repeat your password.', 'error');</script>";
                }
            }
            else
            {
                alert.Text = "<script>Swal.fire('WARNING', 'Do not leave blank', 'error') </script>";
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