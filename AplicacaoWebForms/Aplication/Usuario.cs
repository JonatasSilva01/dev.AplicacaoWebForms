using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Aplication.Usuarios
{
    public class Usuario
    {
        public Usuario() { }
        public int Id { get; set; }
        public string Nome { get; set; }
        public string Telefone { get; set; }
        public string Foto { get; set; }

        public static List<Usuario> Lista = new List<Usuario>();

        public List<Usuario> getUser()
        {
            return Usuario.Lista;
        }

        public void salvar()
        {
            Usuario.Lista.Add(this);
        }
    }
}