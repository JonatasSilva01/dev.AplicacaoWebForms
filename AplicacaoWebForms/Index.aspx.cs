using System;
using Aplicacao.Referencia.Usuarios;
using Aplicacao.Referencia.Cadastro;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AplicacaoWebForms
{
    public partial class Index : System.Web.UI.Page
    {
        public List<Contato> Contatos = new List<Contato>();
        public List<Usuario> usuarios = new List<Usuario>();
        public List<Cadastros> Pessoa = new List<Cadastros>();
        protected void Page_Load(object sender, EventArgs e)
        {
            Contatos.Add(new Contato() {Name = "Jonatas", Id = 1 });
            Contatos.Add(new Contato() { Name = "Henrique", Id = 2 });
            Contatos.Add(new Contato() { Name = "Washington", Id = 3 });
            Contatos.Add(new Contato() { Name = "Nicolas", Id = 4 });
            Contatos.Add(new Contato() { Name = "Edilene", Id = 5 });

            usuarios.Add(new Usuario() { Nome = "Jão", Telefone = "5673-3989", Id = 1 });

            Pessoa.Add(new Cadastros() { Nome = "Edilene", Senha = "12345", Id=1 });

            ddlContatos.DataSource = Contatos;
            ddlContatos.DataValueField = "Id";
            ddlContatos.DataTextField = "Name";
            ddlContatos.DataBind();

            selectManual2.InnerHtml = "<select>";
            foreach(var Lista in Contatos)
            {
                selectManual2.InnerHtml += "<option value='" + Lista +"' >" + Lista +"</option>";
            }
            selectManual2.InnerHtml += "</select>";

            GridView1.DataSource = Contatos;
            GridView1.DataBind();

        }

        protected void btnEnviarNome_Click(object sender, EventArgs e)
        {
            Response.Write("<p>Olá " + TxtNome.Text + "</p><br>");
            Response.Write("Olá" + Request["TxtNome"]);
            Response.Write("<h1>  UTILIZANDO Value do HTML" + Telefone.Value+ "</h1>");
            Response.Write($"<h2> UTILIZANDO REQUEST:  {Request["Telefone"]} </h2>");
            //Response.Write("<h1>" + Request["Telefone"] + "</h1>");
            //Response.Write("<script>alert(' Olá "+Nome+" ')</script>");// execultando Javascript no c#
            // BASE 64
        }
    }
}