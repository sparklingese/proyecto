<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication1.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="sources/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Font-awesome/css/fontawesome.min.css" rel="stylesheet" />
    <link href="sources/css/bootstrap.min.css" rel="stylesheet" />
    <link href="sources/Estilos_css/Estilo_Pag_Inicio.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Varela+Round&display=swap" rel="stylesheet" />

    <title>Home</title>
</head>
<body class="bg-info">
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">

            <a class="navbar-brand" href="#">Techport</a>

            <asp:Button ID="btnInicio" BorderColor="White" ForeColor="white" class="btn btn-outline-light text-info my-2 my-sm-0" type="submit" runat="server" Text="Home" OnClick="btnInicio_Click" />
            <asp:Button ID="btnSesion" BorderColor="White" ForeColor="white" class="btn btn-outline-light text-info my-2 my-sm-0" type="submit" runat="server" Text="Sign In" OnClick="btnISesion_Click" />
            <asp:Button ID="btnIdioma" BorderColor="White" ForeColor="white" class="btn btn-outline-success my-2 my-sm-0" type="submit" runat="server" Text="Change Language" OnClick="btnIdioma_Click" />
        </nav>
        <div class="jumbotron bg-info rounded-circle">
            <div class="container well contenedor bg-info text-white">
                <h1>¡Welcome to Techport!</h1>
                <p>You may ask, what is techport? Techport is a web page designed to report damages or problems that arise inside or outside the computer, in addition to this there are 3 types of users which are: Administrator, Technician and employee. In general this website helps to report more efficiently the damage that a computer may have, more detailed to the technician.</p>
                <p>
                    <asp:Button ID="btnregi" runat="server" Text="Sign In Now!" CssClass="form-control btn btn-dark" OnClick="btnregi_Click1" /></p>
            </div>
        </div>
        <footer class="bg-dark text-white">©2020 Techport: Is a website designed to report damages in computers.</footer>
    </form>
</body>
</html>
