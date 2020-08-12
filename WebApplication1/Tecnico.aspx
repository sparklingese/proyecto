<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tecnico.aspx.cs" Inherits="WebApplication1.Tecnico" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,400&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
    <link href="sources/EstilosCss/Estilo_Paginas.css" rel="stylesheet" />

    <title>Tecnico</title>
</head>
<body>
    <header>
     <nav class="navbar navbar-expand-sm bg-primary navbar-dark">
        <form runat="server">
            <br />
            <a class="navbar-brand" href="#">Techport</a>
            <asp:Button ID="btninicio" BorderColor="White" ForeColor="White" class="btn btn-outline-success my-2 my-sm-0" type="submit" runat="server" Text="Inicio" OnClick="btninicio_Click" />
            <asp:Button ID="btnreporte" BorderColor="White" ForeColor="White" class="btn btn-outline-success my-2 my-sm-0" type="submit" runat="server" Text="Enviar Reporte" OnClick="btnreporte_Click" />
            <asp:Button ID="btnhistorial" BorderColor="White" ForeColor="White" class="btn btn-outline-success my-2 my-sm-0" type="submit" runat="server" Text="Historial" OnClick="btnhistorial_Click" />
            <asp:Button ID="btncerrar" BorderColor="White" ForeColor="White" class="btn btn-outline-warning my-2 my-sm-0" type="submit" runat="server" Text="Cerrar sesion" OnClick="btncerrar_Click" />
            <br />
        </form>
    </nav>
        </header>
       
    <div>
        <style>
            h1{
                text-align:center;
            }
        </style>
        <h1>Bienvenidos</h1>
    </div>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
</body>
</html>
