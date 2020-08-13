<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Administrador.aspx.cs" Inherits="WebApplication1.Administrador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,400&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
    <link href="sources/Estilos_css/Estilo_Pag_Inicio.css" rel="stylesheet" />

    <title>Administrador</title>
</head>
<body class="bg-info">
    <form runat="server">
        <header>
            <nav class="navbar navbar-expand-sm bg-dark navbar-dark">

                <a class="navbar-brand" href="#">Techport</a>
                <asp:Button ID="btninicio" BorderColor="White" ForeColor="White" class="btn btn-outline-success my-2 my-sm-0" type="submit" runat="server" Text="Inicio" OnClick="btninicio_Click" />
                <asp:Button ID="btnreporte" BorderColor="White" ForeColor="White" class="btn btn-outline-success my-2 my-sm-0" type="submit" runat="server" Text="Enviar Reporte" OnClick="btnreporte_Click" />
                <asp:Button ID="btnhistorial" BorderColor="White" ForeColor="White" class="btn btn-outline-success my-2 my-sm-0" type="submit" runat="server" Text="Historial" OnClick="btnhistorial_Click" />
                <asp:Button ID="btncerrar" BorderColor="White" ForeColor="White" class="btn btn-outline-warning my-2 my-sm-0" type="submit" runat="server" Text="Cerrar sesion" OnClick="btncerrar_Click" />



            </nav>
        </header>
        <div class="jumbotron bg-info rounded-circle">
            <div class="container well contenedor bg-info text-white">
                <h1 class="bg-dark">¡Bienvenido Administrador!</h1>
                <p>Se preguntara ¿Que puede hacer commo administrador? como administrador puedes enviar tus propios reportes, asi como tambien tiens acceso a ver el historial de todos los reportes que han sido hechos ya sea por ti mismo o por tus mismos trabajadores</p>
                <p>
                    <asp:Button ID="btnrepo" runat="server" Text="¡Envia Tu reporte Ahora!" CssClass="form-control btn btn-dark" OnClick="btnrepo_Click1" /></p>
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
