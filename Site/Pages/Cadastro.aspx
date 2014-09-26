<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="Site.Pages.Cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cadastro</title>
    <link href="../Content/bootstrap.min.css" type="text/css" rel="stylesheet"/>
</head>
    <script src="../Scripts/jquery-1.9.0.min.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <div class="span10 offset10">
            <div class="row">
                <h3 class="well">Cadastro de Vendas de Cadeiras</h3>
                <br />

                <!-- Cor: -->
                <b>Escolha a Cor:</b><br />
                <asp:DropDownList ID="ddlCor" runat="server" CssClass="dropdown">
                    <asp:ListItem Value="Azul"      Text="Azul" />
                    <asp:ListItem Value="Amarelo"   Text="Amarelo" />
                    <asp:ListItem Value="Branco"    Text="Branco" />
                    <asp:ListItem Value="Vermelho"  Text="Vermelho" />
                    <asp:ListItem Value="Preto"     Text="Preto" />
                    <asp:ListItem Value="Verde"     Text="Verde" />
                </asp:DropDownList>
                <asp:RequiredFieldValidator 
                    ID="requiredCor"
                    runat="server"
                    ControlToValidate="ddlCor"
                    ErrorMessage="Por favor, escolha a cor da cadeira."
                    ForeColor="Red"
                    />
                <br /><br />

                <!-- Modelo -->
                <b>Modelo:</b><br />
                <asp:TextBox ID="txtModelo" runat="server" CssClass="form-control" Width="20%"/>
                <asp:RequiredFieldValidator 
                    ID="requiredModelo"
                    runat="server"
                    ControlToValidate="txtModelo"
                    ErrorMessage="Por favor, insira o modelo da cadeira."
                    ForeColor="Red"
                    />
                <br /><br />

                <!-- Marca -->
                <b>Marca:</b><br />
                <asp:TextBox ID="txtMarca" runat="server" CssClass="form-control" Width="20%" />
                <asp:RequiredFieldValidator 
                    ID="requiredMarca"
                    runat="server"
                    ControlToValidate="txtMarca"
                    ErrorMessage="Por favor, insira a marca da cadeira"
                    ForeColor="Red"
                    />
                <br /><br />

                <!-- Preço -->
                <b>Preço:</b><br />
                <asp:TextBox ID="txtPreco" runat="server" CssClass="form-control" Width="15%" />
                <asp:RequiredFieldValidator 
                    ID="requiredPreco"
                    runat="server"
                    ControlToValidate="txtPreco"
                    ErrorMessage="Por favor, informe o preço da cadeira."
                    ForeColor="Red"
                    />
                <br /><br />

                <!-- Descrição -->
                <b>Descrição:</b><br />
                <asp:TextBox ID="txtDescricao" runat="server" TextMode="MultiLine" Columns="5" CssClass="form-control" Width="50%" />
                <asp:RequiredFieldValidator 
                    ID="requiredDescricao"
                    runat="server"
                    ControlToValidate="txtDescricao"
                    ErrorMessage="Por favor, informe a descrição da cadeira."
                    ForeColor="Red"
                    />
                <br /><br />

                <!-- Entrega -->
                <b>Deseja Entrega?</b><br />
                <asp:RadioButtonList ID="rblEntrega" runat="server" RepeatDirection="Vertical" Width="200px">
                    <asp:ListItem Value="Sim" Text="Sim" />
                    <asp:ListItem Value="Nao" Text="Não" />
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator 
                    ID="requiredEntrega"
                    runat="server"
                    ControlToValidate="rblEntrega"
                    ErrorMessage="Por favor, informe se deseja entrega."
                    ForeColor="Red"
                    />
                <br /><br />

                <asp:Button ID="btnCadastro" runat="server" Text="Cadastrar" CssClass="btn btn-primary btn-lg" OnClick="btnCadastrar" />
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
