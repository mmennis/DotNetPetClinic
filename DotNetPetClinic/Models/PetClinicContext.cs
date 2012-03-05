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

            var petTypes = new string[] { "Cat", "Dog", "Mouse", "Hamster", "Gerbil", "Pig" };

            PetType cat = new PetType{ Name="Cat" };
            context.PetTypes.Add(cat);
            PetType dog = new PetType { Name = "Dog" };
            context.PetTypes.Add(dog);

            List<string> lastNames = new List<string> { "Smith", "Jones", "Johnson", "Williams"};
            for (int i = 0; i < 20; i++)
            {
                lastNames.Add(Faker.NameFaker.LastName());
            }

            for (int i = 0; i < 100; i++)
            {
                Owner o = new Owner {
                    LastName = lastNames[new Random(i).Next(0, lastNames.Count -1)],
                    FirstName = Faker.NameFaker.FirstName(),
                    Address = Faker.LocationFaker.Street(),
                    City = Faker.LocationFaker.City(),
                    Telephone = Faker.PhoneFaker.Phone()
                };
                context.Owners.Add(o);

                int maxPets = new Random(i).Next(1, 4);
                for (int j = 0; j < maxPets; j++ )
                {
                    Pet p = new Pet { Name = Faker.NameFaker.FirstName(), BirthDate = Faker.DateTimeFaker.BirthDay(1,5)};
                    p.Owner = o;
                    p.PetType = cat;

                    context.Pets.Add(p);
                }
            }
            
            context.SaveChanges();
        }
    }
}