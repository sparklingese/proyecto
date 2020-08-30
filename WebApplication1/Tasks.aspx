<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tasks.aspx.cs" Inherits="WebApplication1.Tasks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link href="sources/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Font-awesome/css/fontawesome.min.css" rel="stylesheet" />
    <link href="sources/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Varela+Round&display=swap" rel="stylesheet" />
    <link href="sources/Estilos_css/Estilo_Reporte.css" rel="stylesheet" />
    <script src="SweetAlert/sweetalert2.js"></script>
    <script src="SweetAlert/sweetalert2.all.min.js"></script>

    <title>Tasks</title>
</head>
<body class="bg-info">
    
    <form runat="server">


        <nav class="navbar navbar-expand-sm bg-dark navbar-dark ">

            <a class="navbar-brand" href="#">Techport</a>

            <asp:Button ID="btnInicio" BorderColor="White" ForeColor="White" class="btn btn-dark btn-outline-success my-2 my-sm-0" type="submit" runat="server" Text="Home" OnClick="btnInicio_Click" />

        </nav>
       
        <div class="container">
            <asp:GridView ID="gdvrepo" runat="server" Width="1004px" Height="270px" ForeColor="#333333" GridLines="Both">
                <AlternatingRowStyle BackColor="White" /> 
                <EditRowStyle BackColor="Black" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </div>
         <div>
            <asp:Button ID="Button1" runat="server" CssClass="btn btn-dark" Text="See Available tasks" OnClick="Unnamed1_Click" />
              <asp:Button ID="Button2" runat="server" CssClass="btn btn-dark" Text="Set Solved" OnClick="Unnamed2_Click" />
              <asp:Button ID="Button3" runat="server" CssClass="btn btn-dark" Text="Set Unsolved" OnClick="Unnamed3_Click" />
             <asp:Button ID="Button4" runat="server" CssClass="btn btn-dark" Text="See History" OnClick="Unnamed4_Click" />
             <asp:Button ID="Button5" runat="server" CssClass="btn btn-dark" Text="Select Task" OnClick="Unnamed5_Click" />
        </div>
        <asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>
        <script src="js/bootstrap.min.js"></script>
    </form>
</body>
</html>
