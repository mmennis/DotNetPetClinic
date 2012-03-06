using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DotNetPetClinic.Models
{
    public class Vet
    {
        public int Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }

        public virtual ICollection<Specialty> Specialties { get; set; }
    }
}