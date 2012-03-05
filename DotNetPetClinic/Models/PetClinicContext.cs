using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace DotNetPetClinic.Models
{
    public class PetClinicContext : DbContext
    {
        public PetClinicContext() {}

        public DbSet<Owner> Owners { get; set; }
        public DbSet<Pet> Pets { get; set; }
        public DbSet<PetType> PetTypes { get; set; }
        public DbSet<Visit> Visits { get; set; }   
    }

    public class PetClinicInitializer : DropCreateDatabaseAlways<PetClinicContext>
    {
        protected override void Seed(PetClinicContext context)
        {
            base.Seed(context);

            var petTypes = new string[] { };

            PetType cat = new PetType{ Name="Cat" };
            context.PetTypes.Add(cat);
            PetType dog = new PetType { Name = "Dog" };
            context.PetTypes.Add(dog);


            Owner o1 = new Owner { LastName = Faker.NameFaker.LastName() , FirstName = Faker.NameFaker.FirstName(), Address = "1600 Villa St", City = "Mountain View", Telephone = "408-555-1212" };
            context.Owners.Add(o1);

            Owner o2 = new Owner { LastName = "Smith", FirstName = "John", Address = "1600 Villa St", City = "San Jose", Telephone = "408-555-1212" };
            context.Owners.Add(o2);

            
            Pet p1 = new Pet { Name = "Dunky", BirthDate = DateTime.Now, PetTypeId = cat.Id };
            p1.PetType = cat;
            p1.Owner = o1;


            Pet p2 = new Pet { Name = "Dunky", BirthDate = DateTime.Now, PetTypeId = cat.Id };
            p2.PetType = dog;
            p2.Owner = o2;

            context.Pets.Add(p1);
            context.Pets.Add(p2);
            
            context.SaveChanges();
        }
    }
}