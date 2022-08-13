<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="AplicacaoWebForms.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {
            height: 215px;
        }
        .lblNomeClass {
            display:block;
        }
        .TabelaGridView {
            
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left: 0px">

            <asp:Label CssClass="lblNomeClass" ID="lblNome" runat="server" Text="Escreva seu nome pra receber uma menssgem..."></asp:Label>

            <asp:TextBox ID="TxtNome" runat="server" Height="22px" Width="200px"></asp:TextBox>
            <!--<input type="text" name="Telefone" value="= //Request["Telefone"]" />-->
            &nbsp;<input type="text" name="Telefone" id="Telefone" runat="server" /><br />
            <asp:Button ID="btnEnviarNome" runat="server" Height="33px" Text="Button" Width="143px" BackColor="Black" ForeColor="#CC00CC" OnClick="btnEnviarNome_Click" />

            <br />
            <br />
            <asp:DropDownList ID="ddlContatos" runat="server" >
            </asp:DropDownList>
            <br />
            <br />
            <select id="selectManual">
                <% foreach (var contato in Contatos){ %>
                   <option value="<%= contato.Id %>"> <%= contato.Name %></option>
                <%} %>
            </select>
            <br />
            <br />
            <div id="selectManual2" runat="server">
                <!-- 3 forma de retornar a lista de nomes com o dropDown -->
            </div>
        </div>
        <div class="TabelaGridView">
            <div>
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>
