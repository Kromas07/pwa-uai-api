using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace Backend.Entities
{
    public class DatosActualizacion
    {
        [Key]
        public int Id { get; set; }
        public string DatosNombre { get; set; }
        public DateTime FechaActualizacion { get; set; }
    }
}
