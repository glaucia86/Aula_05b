<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Consulta.aspx.cs" Inherits="Site.Pages.Consulta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Consulta</title>
    <link href="../Content/bootstrap.min.css" type="text/css" rel="stylesheet"/>
</head>
    <script src="../Scripts/jquery-1.9.0.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <div class="span10 offset10">
            <div class="row">
                <h3 class="well">Consulta de Vendas de Cadeiras</h3>
                <br />

                <asp:GridView ID="gridCadeiras" runat="server" CssClass="table table-hover table-striped" GridLines="None" AutoGenerateColumns="false" BackColor="#ccccff">
                    <Columns>
                        <asp:BoundField DataField="Codigo"      HeaderText="Código" />
                        <asp:BoundField DataField="Cor"         HeaderText="Cor" />
                        <asp:BoundField DataField="Modelo"      HeaderText="Modelo" />
                        <asp:BoundField DataField="Marca"       HeaderText="Marca" />
                        <asp:BoundField DataField="Preco"       HeaderText="Preço" />
                        <asp:BoundField DataField="DataCompra"  HeaderText="Data da Compra" />
                        <asp:BoundField DataField="Entrega"     HeaderText="Entrega" />
                        <asp:BoundField DataField="Descricao"   HeaderText="Descrição" />
                    </Columns>
                    <RowStyle CssClass="cursor-pointer" />
                </asp:GridView>
                <br /><br />

                <a href="../Default.aspx" class="btn btn-default btn-lg">Voltar</a>

                <p>
                    <asp:Label ID="lblMensagem" runat="server" />
                </p>
                
            </div>
        </div>  
    </div>
    </form>
</body>
</html>
