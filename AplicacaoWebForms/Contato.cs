using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AplicacaoWebForms
{
    public class Contato
    {
        public int Id { get; set; }
        public string Name { get; set; }

        public override string ToString()
        {
            return Name;
        }
    }
}