using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FormCadastroWeb
{
    public partial class CadastroUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        private void MostrarLista()
        {
            gridLista.DataSource = Usuario.Lista;
            gridLista.DataBind();
        }



        protected void btnLogin_Click(object sender, EventArgs e)
        {
            var usuario = new Usuario();
            usuario.Username = txtUsername.Text;
            usuario.senha = txtSenha.Text;
            usuario.Nome = txtNome.Text;
            usuario.SobreNome = txtSobreNome.Text;
            usuario.Nascimento = txtNascimento.Text;
            usuario.email= txtEmail.Text;
                        usuario.salvar();
            MostrarLista();
        }
    }
}