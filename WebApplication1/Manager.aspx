﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manager.aspx.cs" Inherits="WebApplication1.Manager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,400&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
    <link href="sources/Estilos_css/Estilo_Pag_Inicio.css" rel="stylesheet" />
    <title>Manager</title>
</head>
<body class="bg-info">
    <form runat="server">
        <header>
            <nav class="navbar navbar-expand-sm bg-dark navbar-dark">

                <a class="navbar-brand" href="#">
                    <img src="Imagenes/Logo_Proyecto.jpg" alt="Logo" style="width: 75px;" />
                </a>
                <asp:Button ID="btninicio" BorderColor="White" ForeColor="White" class="btn btn-outline-light text-info my-2 my-sm-0" type="submit" runat="server" Text="Home" OnClick="btninicio_Click" />
                <asp:Button ID="btnreporte" BorderColor="White" ForeColor="White" class="btn btn-outline-light text-info my-2 my-sm-0" type="submit" runat="server" Text="Submit a Report" OnClick="btnreporte_Click" />
                <asp:Button ID="btnhistorial" BorderColor="White" ForeColor="White" class="btn btn-outline-light text-info my-2 my-sm-0" type="submit" runat="server" Text="History" OnClick="btnhistorial_Click" />
                <asp:Button ID="btnusuario" BorderColor="White" ForeColor="White" class="btn btn-outline-light text-info my-2 my-sm-0" type="submit" runat="server" Text="Users" OnClick="btnusuario_Click" />
                <asp:Button ID="btncerrar" BorderColor="White" ForeColor="White" class="btn btn-outline-warning my-2 my-sm-0" type="submit" runat="server" Text="Log Out" OnClick="btncerrar_Click" />



            </nav>
        </header>
        <div class="jumbotron bg-info rounded-circle">
            <div class="container well contenedor bg-info text-white">
                <h1>Welcome Manager!</h1>
                <p>You may wonder what you can do as an administrator? As an administrator you can submit your own reports, as well as have access to view the history of all reports that have been made either by yourself or by your own employees</p>
                <p>
                    <asp:Button ID="btnrepo" runat="server" Text="Send a Report Now!" CssClass="form-control btn btn-dark btn-outline-light text-info" OnClick="btnrepo_Click1" />
                </p>
            </div>
        </div>
        <footer class="bg-dark text-white">©2020 Techport: Is a website designed to report damages in computers.</footer>


    </form>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
</body>
</html>
