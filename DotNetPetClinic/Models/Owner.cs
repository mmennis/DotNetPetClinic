using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DotNetPetClinic.Models
{
    public class Owner
    {
        public int Id { get; set; }
        public string LastName { get; set; }
        public string FirstName { get; set; }
        public string Address { get; set; }
        public string City { get; set; }
        public string Telephone { get; set; }

        public virtual IEnumerable<Pet> Pets { get; set; }
    }
}