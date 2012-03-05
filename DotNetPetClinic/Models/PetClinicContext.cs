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
            Random rand = new Random();

            var types = new string[] { "Cat", "Dog", "Mouse", "Hamster", 
                                       "Gerbil", "Pig", "Goldfish", 
                                       "Toucan", "Iguana" };

            List<PetType> petTypes = new List<PetType>();
            foreach (string petType in types)
            {
                PetType pt = new PetType { Name = petType };
                petTypes.Add(pt);
                context.PetTypes.Add(pt);
            }
            
            List<string> lastNames = new List<string> { "Smith", "Jones", "Johnson", "Williams"};
            for (int i = 0; i < 16; i++)
            {
                lastNames.Add(Faker.NameFaker.LastName());
            }

            for (int i = 0; i < 100; i++)
            {
                Owner o = new Owner {
                    LastName = lastNames[rand.Next(lastNames.Count)],
                    FirstName = Faker.NameFaker.FirstName(),
                    Address = Faker.LocationFaker.Street(),
                    City = Faker.LocationFaker.City(),
                    Telephone = Faker.PhoneFaker.Phone()
                };
                context.Owners.Add(o);

                int maxPets = rand.Next(1, 4);
                for (int j = 0; j < maxPets; j++ )
                {
                    Pet p = new Pet { Name = Faker.NameFaker.FirstName(), BirthDate = Faker.DateTimeFaker.BirthDay(1,5)};
                    p.Owner = o;
                    p.PetType = petTypes[rand.Next(petTypes.Count)];
                    context.Pets.Add(p);
                }
            }
            
            context.SaveChanges();
        }
    }
}