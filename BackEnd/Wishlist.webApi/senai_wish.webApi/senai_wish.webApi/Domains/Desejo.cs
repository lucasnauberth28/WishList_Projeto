using System;
using System.Collections.Generic;

#nullable disable

namespace senai_wish.webApi.Domains
{
    public partial class Desejo
    {
        public int IdDesejo { get; set; }
        public int? IdUsuario { get; set; }
        public string NomeDesejo { get; set; }
        public string Descricao { get; set; }
        public DateTime DataCriacaoDesejo { get; set; }

        public virtual Usuario IdUsuarioNavigation { get; set; }
    }
}
