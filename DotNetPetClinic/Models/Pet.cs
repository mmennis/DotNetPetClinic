using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DotNetPetClinic.Models
{
    public class Pet
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public DateTime BirthDate { get; set; }

        public int PetTypeId { get; set; }
        public virtual PetType PetType { get; set; }

        public int OwnerId { get; set; }
        public virtual Owner Owner { get; set; }
    }
}