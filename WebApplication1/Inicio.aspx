<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="WebApplication1.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="sources/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Font-awesome/css/fontawesome.min.css" rel="stylesheet" />
    <link href="sources/css/bootstrap.min.css" rel="stylesheet" />
    <link href="sources/Estilos_css/Estilo_Pag_Inicio.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Varela+Round&display=swap" rel="stylesheet" />
   
    <title>Inicio</title>
</head>
<body class="bg-info">
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">

            <a class="navbar-brand" href="#">Techport</a>

            <asp:Button ID="btnInicio" BorderColor="White" ForeColor="white" class="btn btn-outline-light text-info my-2 my-sm-0" type="submit" runat="server" Text="Inicio" OnClick="btnInicio_Click" />
            <asp:Button ID="btnSesion" BorderColor="White" ForeColor="white" class="btn btn-outline-light text-info my-2 my-sm-0" type="submit" runat="server" Text="Iniciar Sesión" OnClick="btnISesion_Click" />
            <asp:Button ID="btnIdioma" BorderColor="White" ForeColor="white" class="btn btn-outline-success my-2 my-sm-0" type="submit" runat="server" Text="Cambiar Idioma" OnClick="btnIdioma_Click" />



        </nav>
        <div class="jumbotron bg-info rounded-circle">
            <div class="container well contenedor bg-info text-white">
                <h1 >¡Bienvenido A Techport!</h1>
                <p>Se preguntara ¿Que es techport? Techport es una pagina web diseñada para reportar daños o problemas que un computador pueda poseer, ademas se tienen 3 tipos de usuario los cuales son: Administrador, Empleado y Tecnico. Esta pagina web ayuda a reportar mas eficientemente el daño que un computador pueda poseer directamente al tecnico</p>
                <p>
                    <asp:Button ID="btnregi" runat="server" Text="Inicia Sesión Ahora" CssClass="form-control btn btn-dark" OnClick="btnregi_Click1" />
                </p>
            </div>
        </div>
        <footer class="bg-dark text-white">©2020 Techport: es una pagina web diseñada para reportar daños de la computadora.</footer>
    </form>
</body>
</html>
