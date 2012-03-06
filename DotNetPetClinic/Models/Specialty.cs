using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DotNetPetClinic.Models
{
    public class Specialty
    {
        public int Id { get; set; }
        public string Name { get; set; }

        public virtual ICollection<Vet> Vets { get; set; }
    }
}