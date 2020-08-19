﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="WebApplication1.Employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,400&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
    <link href="sources/Estilos_css/Estilo_Pag_Inicio.css" rel="stylesheet" />
    <title>Employee</title>
</head>
<body class="bg-info">
     <form runat="server">
        <header>
            <nav class="navbar navbar-expand-lg bg-dark navbar-dark">
                <a class="navbar-brand" href="#">Techport</a>
                <asp:Button ID="btninicio" BorderColor="White" ForeColor="White" class="btn btn-outline-success my-1 my-sm-0" type="submit" runat="server" Text="Home" OnClick="btninicio_Click" />
                <asp:Button ID="btnreporte" BorderColor="White" ForeColor="White" class="btn btn-outline-success my-1 my-sm-0" type="submit" runat="server" Text="Submit Report" OnClick="btnreporte_Click" />
                <asp:Button ID="btnhistorial" BorderColor="White" ForeColor="White" class="btn btn-outline-success my-1 my-sm-0" type="submit" runat="server" Text="History" OnClick="btnhistorial_Click" />
                <asp:Button ID="btncerrar" BorderColor="White" ForeColor="White" class="btn btn-outline-warning my-1 my-sm-0" type="submit" runat="server" Text="Log Out" OnClick="btncerrar_Click" />
            </nav>
        </header>
        <div class="jumbotron bg-info rounded-circle">
            <div class="container well contenedor bg-info text-white">
                <h1 class="bg-dark">Welcome Back!</h1>
                <p>He'll wonder what benefits you have? The benefits that you have are that you can send reports when a problem is happening in your machine, and you can also see your history and that of others in your office</p>
                <p>
                    <asp:Button ID="btnrepo" runat="server" Text="Send your Report Now!" CssClass="form-control btn btn-dark" OnClick="btnrepo_Click1" /></p>
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