<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication1.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="sources/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Font-awesome/css/fontawesome.min.css" rel="stylesheet" />
    <link href="sources/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Varela+Round&display=swap" rel="stylesheet" />

    <title>Inicio</title>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-sm bg-primary navbar-dark">

            <a class="navbar-brand" href="#">Techport</a>

            <asp:Button ID="btnInicio" BorderColor="White" ForeColor="white" class="btn btn-outline-success my-2 my-sm-0" type="submit" runat="server" Text="Inicio" OnClick="btnInicio_Click" />
            <asp:Button ID="btnSesion" BorderColor="White" ForeColor="white" class="btn btn-outline-success my-2 my-sm-0" type="submit" runat="server" Text="Iniciar Sesión" OnClick="btnISesion_Click" />
            <asp:Button ID="btnRegistro" BorderColor="White" ForeColor="white" class="btn btn-outline-success my-2 my-sm-0" type="submit" runat="server" Text="Registrarse" OnClick="btnRegistro_Click" />

        </nav>
        <div>
            <img src="Imagenes/Bienvenido%20Nuevo%20Usuario%20(1).jpg" width="1366" height="569" />
        </div>
    </form>
</body>
</html>
