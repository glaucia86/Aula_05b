<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Site.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
    <link href="Content/bootstrap.min.css" type="text/css" rel="stylesheet"/>
</head>
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
<body>
    <form id="form1" runat="server">
    <div class="jumbotron">
        <h1>Projeto - Asp.Net com WebForms</h1>
        <h2>Controle de Vendas de Cadeiras</h2>
        <br /><br />

        Selecione a opção desejada:
        <asp:DropDownList ID="ddlMenu" runat="server" CssClass="dropdown" ForeColor="#000000">
            <asp:ListItem Value="0" Text="- Escolha uma Opção - " />
            <asp:ListItem Value="1" Text="Cadastrar Venda de Cadeiras" />
            <asp:ListItem Value="2" Text="Consultar Venda de Cadeiras" />
        </asp:DropDownList>

        <asp:Button ID="btnAcesso" runat="server" Text="Acessar" CssClass="btn btn-primary btn-sm" OnClick="btnAcessar" />

        <p>
            <asp:Label ID="lblMensagem" runat="server" />
        </p>

    </div>          
    </form>
</body>
</html>
