<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="WebApplication1.Create" %>

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
    <title>Create User</title>
</head>
<body class="bg-info">
    <form id="form1" runat="server" class="form-horizontal">
        <header>
            <nav class="navbar navbar-expand-sm bg-dark navbar-dark">

                <a class="navbar-brand" href="#">
                    <img src="Imagenes/Logo_Proyecto.jpg" alt="Logo" style="width: 75px;" />
                </a>
                <asp:Button ID="btninicio" BorderColor="White" ForeColor="White" class="btn btn-outline-light text-info my-2 my-sm-0" type="submit" runat="server" Text="Home" OnClick="btninicio_Click" />
                <asp:Button ID="btncrear" BorderColor="White" ForeColor="White" class="btn btn-outline-light text-info my-2 my-sm-0" type="submit" runat="server" Text="Create User" OnClick="btncrear_Click" />


            </nav>
        </header>
        <div class="container well contenedor">
            <div class="row">
                <div class="col-xs-12">
                    <h2 class="bg-dark text-white">Create User</h2>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="lblName" runat="server" Text="Full Name" CssClass="custom-control-label col-sm2"></asp:Label>
                <div class="col-sm10">
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="lbluser" runat="server" Text="Username" CssClass="custom-control-label col-sm2"></asp:Label>
                <div class="col-sm10">
                    <asp:TextBox ID="txtUser" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="lblContra" runat="server" Text="Password" CssClass="custom-control-label col-sm2"></asp:Label>
                <div class="col-sm10">
                    <asp:TextBox ID="txtContra" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="lblContra2" runat="server" Text="Confirm your Password" CssClass="custom-control-label col-sm2"></asp:Label>
                <div class="col-sm10">
                    <asp:TextBox ID="txtConfirm" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="lblGenero" runat="server" Text="Gender" CssClass="custom-control-label col-sm2"></asp:Label>
                <div class="col-sm10">
                    <asp:DropDownList ID="dxtGenero" runat="server" CssClass="form-control">
                        <asp:ListItem>Select your gender........</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="lblCargo" runat="server" Text="Charge" CssClass="custom-control-label col-sm2"></asp:Label>
                <div class="col-sm10">
                    <asp:DropDownList ID="dxtCargo" runat="server" CssClass="form-control">
                        <asp:ListItem>Select your position........</asp:ListItem>
                        <asp:ListItem>Employee</asp:ListItem>
                        <asp:ListItem>Technician</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>

            <div class="form-group">
                <asp:Button ID="btnIngresar" runat="server" Text="Create User" CssClass="form-control btn btn btn-dark" OnClick="Unnamed1_Click" />
                <br />
                <asp:Literal ID="alert" runat="server" Text=""></asp:Literal>
            </div>


        </div>
    </form>
</body>
</html>
