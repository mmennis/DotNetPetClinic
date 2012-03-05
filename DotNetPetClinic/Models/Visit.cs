using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DotNetPetClinic.Models
{
    public class Visit
    {
        public int Id { get; set; }
        public DateTime VisitDate { get; set; }
        public string Description { get; set; }

        public int PetId { get; set; }
        public virtual Pet Pet { get; set; }
    }
}