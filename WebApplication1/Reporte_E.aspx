<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reporte_E.aspx.cs" Inherits="WebApplication1.Reporte_E" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="sources/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Font-awesome/css/fontawesome.min.css" rel="stylesheet" />
    <link href="sources/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Varela+Round&display=swap" rel="stylesheet" />
    <link href="sources/Estilos_css/Estilo_Reporte.css" rel="stylesheet" />
    <script src="SweetAlert/sweetalert2.js"></script>
    <script src="SweetAlert/sweetalert2.all.min.js"></script>
    <title>Enviar Reporte</title>
</head>
<body class="bg-info">
    <script type="text/javascript">
        function validar(e) { // 1
            tecla = (document.all) ? e.keyCode : e.which; // 2
            if (tecla == 8) return true; // 3
            patron = /[A-Za-z\s]/; // 4
            te = String.fromCharCode(tecla); // 5
            return patron.test(te); // 6
        }
    </script>
    <script type="text/javascript">
        function numeros(nu) { // 1
            tecla = (document.all) ? e.keyCode : e.which; // 2
            if (tecla == 8) return true; // 3
            ppatron = /\d/; // Solo acepta números// 4
            te = String.fromCharCode(tecla); // 5
            return patron.test(te); // 6
        }
    </script>

    <script>
        function NumCheck(e, field) {
            key = e.keyCode ? e.keyCode : e.which
            // backspace
            if (key == 8) return true
            // 0-9
            if (key > 47 && key < 58) {
                if (field.value == "") return true
                regexp = /.[0-9]{2}$/
                return !(regexp.test(field.value))
            }
            // .
            if (key == 46) {
                if (field.value == "") return false
                regexp = /^[0-9]+$/
                return regexp.test(field.value)
            }
            // other key
            return false
        }
    </script>


    <form id="form2" runat="server">
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark">

            <a class="navbar-brand" href="#">
                <img src="Imagenes/Logo_Proyecto.jpg" alt="Logo" style="width: 75px;" />
            </a>

            <asp:Button ID="btnInicio" BorderColor="White" ForeColor="white" class="btn btn-outline-light text-info my-2 my-sm-0" type="submit" runat="server" Text="Inicio" OnClick="btnInicio_Click" />

        </nav>
        <div class="my-content">
            <div class="container">


                <div class="row">
                    <div class="col-sn-12">
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6 col-sm-offset-3 myform-cont">
                        <h2 class="bg-dark">Digitar Reporte</h2>
                        <div class="myform-top">
                        </div>
                        <div class="myform-bottom">

                            <div class="form-group">
                                <asp:TextBox ID="txtmaquina" runat="server" placeholder="Numero de Maquina..." type="text" class="form-control" onpaste="return false" onkeypress="return NumCheck(event, this)"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="txtdescripcion" runat="server" placeholder="Descripcion del Problema..." type="text" class="form-control" onpaste="return false" onkeypress="return validar(event)" minlength="1" MaxLength="300"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:DropDownList ID="dxtproblema" runat="server" CssClass="form-control">
                                    <asp:ListItem>Seleccione el tipo de problema.....</asp:ListItem>
                                    <asp:ListItem>Software</asp:ListItem>
                                    <asp:ListItem>Hardware</asp:ListItem>
                                    <asp:ListItem>Desconocido</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="txtescritor" runat="server" placeholder="Digite Usuario y Cargo..." type="text" class="form-control" minlength="1" MaxLength="50"></asp:TextBox>
                            </div>
                            <asp:Button runat="server" Text="Enviar Reporte" CssClass="form-control btn btn-dark" OnClick="Unnamed1_Click"></asp:Button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>
        <script src="js/bootstrap.min.js"></script>
    </form>
</body>
</html>
