using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

#nullable disable

namespace senai_wish.webApi.Domains
{
    public partial class Desejo
    {
        public Desejo()
        {
            Usuarios = new HashSet<Usuario>();
        }

        public int IdDesejo { get; set; }

        [DataType(DataType.Date)]
        public DateTime dataCriacaoDesejo { get; set; }
        public string NomeDesejo { get; set; }
        public string Descricao { get; set; }

        public virtual ICollection<Usuario> Usuarios { get; set; }
    }
}
