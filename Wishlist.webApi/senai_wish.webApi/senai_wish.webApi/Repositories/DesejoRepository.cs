using senai_wish.webApi.Contexts;
using senai_wish.webApi.Domains;
using senai_wish.webApi.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace senai_wish.webApi.Repositories
{
    public class DesejoRepository : IDesejoRepository
    {
        WishContext ctx = new WishContext();
        public void Cadastrar(Desejo novoDesejo)
        {
            ctx.Desejos.Add(novoDesejo);

            ctx.SaveChanges();
        }

        public List<Desejo> Listar()
        {
            return ctx.Desejos.ToList();
        }
    }
}
