<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Crear.aspx.cs" Inherits="WebApplication1.Crear" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,400&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
	<link href="sources/Estilos_css/Estilo_Registro.css" rel="stylesheet" />
	<script src="sweetalert/sweetalert2.all.min.js"></script>
	<script src="sweetalert/sweetalert2.js"></script>
    <title>Crear Usuario</title>
</head>
<body class="bg-info">
    <form id="form1" runat="server" class="form-horizontal"> 
    <header>
            <nav class="navbar navbar-expand-sm bg-dark navbar-dark">

                <a class="navbar-brand" href="#">Techport</a>
                <asp:Button ID="Button1" BorderColor="White" ForeColor="White" class="btn btn-outline-success my-2 my-sm-0" type="submit" runat="server" Text="Inicio" OnClick="btninicio_Click" />
                <asp:Button ID="btncrear" BorderColor="White" ForeColor="White" class="btn btn-outline-success my-2 my-sm-0" type="submit" runat="server" Text="Crear Usuario" OnClick="btncrear_Click" />
                
                

            </nav>
        </header>
    <div class="container well contenedor">
		<div class="row">
			<div class="col-xs-12">
				<h2 class="bg-dark text-white">Crear Usuario</h2>
			</div>
		</div>
		
			<div class="form-group">
				<asp:Label ID="lblName" runat="server" Text="Nombre Completo" CssClass="custom-control-label col-sm2"></asp:Label>
				<div class="col-sm10">
					<asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
				</div>
			</div>

			<div class="form-group">
				<asp:Label ID="lbluser" runat="server" Text="Nombre De Usuario" CssClass="custom-control-label col-sm2"></asp:Label>
				<div class="col-sm10">
					<asp:TextBox ID="txtUser" runat="server" CssClass="form-control"></asp:TextBox>
				</div>
			</div>

			<div class="form-group">
				<asp:Label ID="lblContra" runat="server" Text="Contraseña" CssClass="custom-control-label col-sm2"></asp:Label>
				<div class="col-sm10">
					<asp:TextBox ID="txtContra" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
				</div>
			</div>

			<div class="form-group">
				<asp:Label ID="lblContra2" runat="server" Text="Confirme Su Contraseña" CssClass="custom-control-label col-sm2"></asp:Label>
				<div class="col-sm10">
					<asp:TextBox ID="txtConfirm" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
				</div>
			</div>

			<div class="form-group">
				<asp:Label ID="lblGenero" runat="server" Text="Genero" CssClass="custom-control-label col-sm2"></asp:Label>
				<div class="col-sm10">
                    <asp:DropDownList ID="dxtGenero" runat="server" CssClass="form-control">
                        <asp:ListItem>Seleccione el genero.....</asp:ListItem>
                        <asp:ListItem>Masculino</asp:ListItem>
                        <asp:ListItem>Femenino</asp:ListItem>
                    </asp:DropDownList>
				</div>
			</div>

			<div class="form-group">
				<asp:Label ID="lblCargo" runat="server" Text="Cargo" CssClass="custom-control-label col-sm2"></asp:Label>
				<div class="col-sm10">
                    <asp:DropDownList ID="dxtCargo" runat="server" CssClass="form-control">
                        <asp:ListItem>Seleccione el cargo........</asp:ListItem>
                        <asp:ListItem>Empleado</asp:ListItem>
                        <asp:ListItem>Tecnico</asp:ListItem>
                    </asp:DropDownList>
				</div>
			</div>

			<div class="form-group">
				<asp:Button ID="btnIngresar" runat="server" Text="Crear Usuario" CssClass="form-control btn btn btn-dark " OnClick="Unnamed1_Click" />
				<br />
				<asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>
			</div>
			

		
	</div>
        </form>
</body>
</html>
