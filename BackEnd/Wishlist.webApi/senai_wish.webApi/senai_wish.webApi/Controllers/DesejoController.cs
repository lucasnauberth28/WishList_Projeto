using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using senai_wish.webApi.Domains;
using senai_wish.webApi.Interfaces;
using senai_wish.webApi.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace senai_wish.webApi.Controllers
{
    [Produces("application/json")]
    [Route("api/[controller]")]
    [ApiController]
    public class DesejoController : ControllerBase
    {
        private IDesejoRepository _desejoRepository { get; set; } 
        public DesejoController()
        {
            _desejoRepository = new DesejoRepository();
        }

        /// <summary>
        /// Lista todos os desejos
        /// </summary>
        /// <returns>Uma lista de desejos</returns>
        [HttpGet]
        public IActionResult Get()
        {
            return Ok(_desejoRepository.Listar());
        }

        /// <summary>
        /// Cadastra um novo desejo
        /// </summary>
        /// <param name="novoDesejo">Parâmetro novoDesejo que recebe as informações do desejo a ser cadastrado</param>
        /// <returns>Um Status Code - 201</returns>
        [HttpPost]
        public IActionResult Post(Desejo novoDesejo)
        {
            _desejoRepository.Cadastrar(novoDesejo);
            return StatusCode(201);
        }
    }
}
