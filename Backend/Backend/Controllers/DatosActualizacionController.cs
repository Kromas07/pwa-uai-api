using Backend.Context;
using Backend.Entities;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Backend.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class DatosActualizacionController : Controller
    {
        private readonly AppDbContext context;

        public DatosActualizacionController(AppDbContext context)
        {
            this.context = context;
        }
        public IActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public IEnumerable<DatosActualizacion> Get()
        {
            return context.DatosActualizacion.ToList();
        }

        [HttpGet("{datosNombre}")]
        public DateTime? Get(string datosNombre)
        {
            var data = context.DatosActualizacion.FirstOrDefault(x => x.DatosNombre == datosNombre);

            if (data is null)
            {
                return null;
            }

            return data.FechaActualizacion;
        }

    }
}
