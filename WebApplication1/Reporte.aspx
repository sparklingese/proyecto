﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reporte.aspx.cs" Inherits="WebApplication1.Reporte" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   <link href="sources/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Font-awesome/css/fontawesome.min.css" rel="stylesheet" />
    <link href="sources/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Varela+Round&display=swap" rel="stylesheet" />
    <link href="sources/Estilos_css/Estilo_Registro.css" rel="stylesheet" />
    <script src="SweetAlert/sweetalert2.js"></script>
    <script src="SweetAlert/sweetalert2.all.min.js"></script>
    
    <title>Enviar Reporte</title>
</head>
<body>
     <script type="text/javascript">
        function validar(e) { // 1
            tecla = (document.all) ? e.keyCode : e.which; // 2
            if (tecla == 8) return true; // 3
            patron = /[A-Za-z\s]/; // 4
            te = String.fromCharCode(tecla); // 5
            return patron.test(te); // 6
        }
    </script>
    <script type="text/javascript">
        function numeros(nu) { // 1
            tecla = (document.all) ? e.keyCode : e.which; // 2
            if (tecla == 8) return true; // 3
            ppatron = /\d/; // Solo acepta números// 4
            te = String.fromCharCode(tecla); // 5
            return patron.test(te); // 6
        }
    </script>

    <script>
        function NumCheck(e, field) {
            key = e.keyCode ? e.keyCode : e.which
            // backspace
            if (key == 8) return true
            // 0-9
            if (key > 1 && key < 100) {
                if (field.value == "") return true
                regexp = /.[0-9]{2}$/
                return !(regexp.test(field.value))
            }
            // .
            if (key == 1) {
                if (field.value == "") return false
                regexp = /^[0-9]+$/
                return regexp.test(field.value)
            }
            // other key
            return false
        }
    </script>

    <form id="form2" runat="server">
        <nav class="navbar navbar-expand-sm bg-primary navbar-dark">

            <a class="navbar-brand" href="#">Techport</a>

            <asp:Button ID="btnInicio" BorderColor="White" ForeColor="white" class="btn btn-outline-success my-2 my-sm-0" type="submit" runat="server" Text="Inicio" OnClick="btnInicio_Click" />

        </nav>
        <div class="my-content">
            <div class="container">


                <div class="row">
                    <div class="col-sn-12">
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6 col-sm-offset-3 myform-cont">
                        <h2>Digitar Reporte</h2>
                        <div class="myform-top">
                        </div>
                        <div class="myform-bottom">

                            <div class="form-group">
                                <asp:TextBox ID="txtmaquina" runat="server" placeholder="Numero de Maquina..." type="text" class="form-control" onpaste="return false" onkeypress="return NumCheck(event, this)"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="txtdescripcion" runat="server" placeholder="Descripcion del Problema..." type="text" class="form-control" onpaste="return false" onkeypress="return validar(event)" minlength="1" MaxLength="300"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="txtproblema" runat="server" placeholder="Tipo de Problema..." type="text" class="form-control" onpaste="return false" onkeypress="return validar(event)" minlength="1" MaxLength="25"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="txtescritor" runat="server" placeholder="Digite Usuario y Cargo..." type="text" class="form-control" minlength="1" MaxLength="50"></asp:TextBox>
                            </div>
                            <asp:Button runat="server" Text="Enviar Reporte" CssClass="form-control btn btn-primary" OnClick="Unnamed1_Click"></asp:Button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>
        <script src="js/bootstrap.min.js"></script>
    </form>
</body>
</html>