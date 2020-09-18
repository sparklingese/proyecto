﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Empleado.aspx.cs" Inherits="WebApplication1.Empleado" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,400&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
    <link href="sources/Estilos_css/Estilo_Pag_Inicio.css" rel="stylesheet" />

    <title>Empleado</title>
</head>
<body class="bg-info">
    <form runat="server">
        <header>
            <nav class="navbar navbar-expand-lg bg-dark navbar-dark">
                <a class="navbar-brand" href="#">Techport</a>
                <asp:Button ID="btninicio" BorderColor="White" ForeColor="White" class="btn btn-outline-light text-info my-1 my-sm-0" type="submit" runat="server" Text="Inicio" OnClick="btninicio_Click" />
                <asp:Button ID="btnreporte" BorderColor="White" ForeColor="White" class="btn btn-outline-light text-info my-1 my-sm-0" type="submit" runat="server" Text="Enviar Reporte" OnClick="btnreporte_Click" />
                <asp:Button ID="btncerrar" BorderColor="White" ForeColor="White" class="btn btn-outline-warning my-1 my-sm-0" type="submit" runat="server" Text="Cerrar sesion" OnClick="btncerrar_Click" />
            </nav>
        </header>
        <div class="jumbotron bg-info rounded-circle">
            <div class="container well contenedor bg-info text-white">
                <h1>¡Bienvenido Nuevamente!</h1>
                <p>Se preguntara ¿Que beneficios posees? Los beneficios que tu posees son los de poder enviar reportes cuando este suceciendo un problema en tu maquina.</p>
                <p>
                    <asp:Button ID="btnrepo" runat="server" Text="¡Envia tu Reporte Ahora!" CssClass="form-control btn btn-dark btn-outline-light text-info" OnClick="btnrepo_Click1" /></p>
            </div>
        </div>
        <footer class="bg-dark text-white">©2020 Techport: es una pagina web para empresas.</footer>
    </form>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>

</body>
</html>
