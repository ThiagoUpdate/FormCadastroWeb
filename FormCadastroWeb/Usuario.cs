using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FormCadastroWeb
{
    public class Usuario
    {

        public Usuario()
        {


        }
        public string Username { get; set; }

        public string senha { get; set; }

        public string Nome { get; set; }

        public string SobreNome { get; set; }

        public string Nascimento { get; set; }


        public string email { get; set; }


        public static List<Usuario> Lista = new List<Usuario>();

        public List<Usuario> Todos()
        {
            return Usuario.Lista;
        }

        public void salvar()
        {
            Usuario.Lista.Add(this);
        }
    }
}
