using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AplicacaoWebForms
{
    public partial class Login : System.Web.UI.UserControl
    {
        public string lblMenssagemText;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMenssagem.Text = lblMenssagemText;
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            if(TxtNome.Text == "Jonatas" && TxtSenha.Text == "123456")
            {
                Page.RegisterClientScriptBlock("alerta", "<script> alert('entrou!');</script>");
            }
        }
    }
}