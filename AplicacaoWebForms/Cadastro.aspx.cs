using System;
using Aplication.Usuarios;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace AplicacaoWebForms
{
    public partial class Cadastro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            mostrarLista();
        }

        private void mostrarLista()
        {
            pnCadastro.Visible = false;
            pnResultado.Visible = true;

            GridView1.DataSource = Usuario.Lista;
            GridView1.DataBind();
        }
        private void mostrarCadastro()
        {
            pnCadastro.Visible = true;
            pnResultado.Visible = false;
        }

        public string caminhoArquivosFoto()
        {
            return ConfigurationManager.AppSettings["caminhoArquivo"];
        }
        
        protected void BntEnviar_Click(object sender, EventArgs e)
        {
            string caminhoArquivo = AppDomain.CurrentDomain.BaseDirectory
                + caminhoArquivosFoto() + @"\" + upFoto.FileName;
            upFoto.SaveAs(caminhoArquivo);

            var usuario = new Usuario();
            usuario.Nome = TxtNome.Text;
            usuario.Telefone = TxtTelefone.Text;
            usuario.Foto = caminhoArquivosFoto()
                           .Replace(@"\", "/") + "/" + upFoto.FileName;
            usuario.salvar();

            TxtNome.Text = "";
            TxtTelefone.Text = "";

            mostrarLista();
        }

        protected void BntMaisUmCadastro_Click(object sender, EventArgs e)
        {
            mostrarCadastro();
        }
    }
}