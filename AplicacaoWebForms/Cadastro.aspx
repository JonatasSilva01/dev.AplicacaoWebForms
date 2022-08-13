<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="AplicacaoWebForms.Cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <title>Tela de Cadastro C#</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <style>
        .StyleBlock {
            display:block;
            padding: 5px;
        }

        .formulario-cadastro {
            display:flex;
            margin: 0 auto;
        }

        img {
            width: 100px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel CssClass="formulario-cadastro" ID="pnCadastro" runat="server">
                <div class="StyleBlock">
                    <asp:Label ID="lblNome" runat="server" Text="Nome: "></asp:Label>
                    <asp:TextBox ID="TxtNome" runat="server"></asp:TextBox>
                </div>
                <div class="StyleBlock">
                    <asp:Label ID="lblTelefone" runat="server" Text="Telefone: "></asp:Label>
                    <asp:TextBox ID="TxtTelefone" runat="server"></asp:TextBox>
                </div>
                <div class="StyleBlock">
                    <asp:Label ID="lblFoto" runat="server" Text="Foto: "></asp:Label>
                    <asp:FileUpload ID="upFoto" runat="server" />
                </div>
                <div class="StyleBlock">
                    <asp:Button ID="BntEnviar" runat="server" Text="Enviar" OnClick="BntEnviar_Click" />
                </div>
            </asp:Panel>
        </div>
        <div>
            <asp:Panel ID="pnResultado" runat="server">
                <div class="StyleBlock">
                   <asp:Button ID="BtnVoltar" runat="server" Text="Fazer um Registro de Usuario" OnClick="BntMaisUmCadastro_Click" />
                </div>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="Nome" HeaderText="Nome" />
                        <asp:BoundField DataField="Telefone" HeaderText="Telefone" />
                        <asp:ImageField DataImageUrlField="Foto" HeaderText="Foto">
                        </asp:ImageField>
                    </Columns>
                </asp:GridView>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
