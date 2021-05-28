using senai_wish.webApi.Domains;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace senai_wish.webApi.Interfaces
{
    interface IDesejoRepository
    {
        List<Desejo> Listar();

        void Cadastrar(Desejo novoDesejo);

    }
}
