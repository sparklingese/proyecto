<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Inicio de Sesión</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
	<link href="sources/Estilos_css/Estilo_Login.css" rel="stylesheet" /> 
	<script src="sweetalert/sweetalert2.all.min.js"></script>
	<script src="sweetalert/sweetalert2.js"></script>
</head>
<body>
	<div class="container well contenedor">
		<div class="row">
			<div class="col-xs-12">
				<h2>Iniciar Sesión</h2>
			</div>
		</div>
		<form id="form1" runat="server" class="form-horizontal">
			<div class="form-group">
				<asp:Label ID="lblUser" runat="server" meta:resourcekey="lblUser" Text="Usuario" CssClass="custom-control-label col-sm2"></asp:Label>
				<div class="col-sm10">
					<asp:TextBox ID="txtUser" runat="server" CssClass="form-control"></asp:TextBox>
				</div>
			</div>

			<div class="form-group">
				<asp:Label ID="lblContra" runat="server" meta:resourcekey="lblContra" Text="Contraseña" CssClass="custom-control-label col-sm2"></asp:Label>
				<div class="col-sm10">
					<asp:TextBox ID="txtContra" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
				</div>
			</div>

            <div class="form-group">
				<asp:Label ID="lblTipo" runat="server" meta:resourcekey="lblTipo" Text="Confirme su Cargo" CssClass="custom-control-label col-sm2"></asp:Label>
				<div class="col-sm10">
					<asp:TextBox ID="txtTipo" runat="server" CssClass="form-control"></asp:TextBox>
				</div>
			</div>

			<div class="form-group">
				<asp:Button ID="btnIniciar" runat="server" Text="Iniciar Sesión" CssClass="form-control btn btn alert-dark" OnClick="btnIniciar_Click1" />
				<asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>
				<br />
			</div>
			<div class="form-group">
				<asp:Button ID="btnRegistro" runat="server" Text="Registrarse" CssClass="form-control btn btn-primary " OnClick="btnRegistro_Click" />
			</div>
          
		</form>

	</div>
   
   
</body>
</html>

