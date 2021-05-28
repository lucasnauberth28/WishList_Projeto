using System;
using System.Collections.Generic;

#nullable disable

namespace senai_wish.webApi.Domains
{
    public partial class Usuario
    {
        public int IdUsuario { get; set; }
        public int? IdDesejo { get; set; }
        public string Nome { get; set; }
        public string Email { get; set; }
        public string Senha { get; set; }

        public virtual Desejo IdDesejoNavigation { get; set; }
    }
}
