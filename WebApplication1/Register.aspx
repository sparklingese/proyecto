<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication1.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<title>Registrarse</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
	<link href="sources/Estilos_css/Estilo_Registro.css" rel="stylesheet" />
	<script src="sweetalert/sweetalert2.all.min.js"></script>
	<script src="sweetalert/sweetalert2.js"></script>
</head>
<body>
	<div class="container well contenedor">
		<div class="row">
			<div class="col-xs-12">
				<h2>Registrarse</h2>
			</div>
		</div>
		<form id="form1" runat="server" class="form-horizontal">
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
					<asp:TextBox ID="txtGenero" runat="server" CssClass="form-control"></asp:TextBox>
				</div>
			</div>

			<div class="form-group">
				<asp:Label ID="lblCargo" runat="server" Text="Cargo" CssClass="custom-control-label col-sm2"></asp:Label>
				<div class="col-sm10">
					<asp:TextBox ID="txtCargo" runat="server" CssClass="form-control"></asp:TextBox>
				</div>
			</div>

			<div class="form-group">
				<asp:Button ID="btnIngresar" runat="server" Text="Ingresar" CssClass="form-control btn btn alert-dark" OnClick="Unnamed1_Click" />
				<br />
				<asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>
			</div>
			<div class="form-group">
				<asp:Button ID="btnInicio" runat="server" Text="Go to Iniciar Sesión" CssClass="form-control btn btn-primary " OnClick="btnInicio_Click" />
			</div>

		</form>

	</div>
</body>
</html>