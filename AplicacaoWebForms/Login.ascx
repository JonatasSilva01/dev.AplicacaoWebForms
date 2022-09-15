<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Login.ascx.cs" Inherits="AplicacaoWebForms.Login" %>
<div class="login estilo-global">
    <div>
        <!-- email -->
        <asp:Label ID="lblNome" runat="server" Text="Nome"></asp:Label>
        <asp:TextBox ID="TxtNome" runat="server"></asp:TextBox>
    </div>
    <div class="estilo-global">
        <!-- senha -->
        <asp:Label ID="lblSenha" runat="server" Text="Senha:"></asp:Label>
        <asp:TextBox ID="TxtSenha" runat="server" TextMode="Password"></asp:TextBox>
    </div>
    <div class="estilo-global">
        <!-- button -->
        <asp:Button ID="btnEnviar" runat="server" Text="Logar" OnClick="btnEnviar_Click" />
    </div>
    <div>
        <asp:Label ID="lblMenssagem" runat="server" Text="[Menssagem]"></asp:Label>
    </div>
</div>
