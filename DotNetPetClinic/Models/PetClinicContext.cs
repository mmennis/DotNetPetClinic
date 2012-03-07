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
        public DbSet<Vet> Vets { get; set; }
        public DbSet<Specialty> Specialties { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Vet>().HasMany(v => v.Specialties).WithMany(s => s.Vets);
        }
    }

    public class PetClinicInitializer : DropCreateDatabaseAlways<PetClinicContext>
    {

        int OWNERS_COUNT = 100;
        int VETS_COUNT = 100;

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

            for (int i = 0; i < OWNERS_COUNT; i++)
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

                    for (int k = 0; k < 2; k++)
                    {
                        Visit visit = new Visit { VisitDate = Faker.DateTimeFaker.DateTime(), Description = Faker.TextFaker.Sentences(3) };
                        visit.Pet = p;
                        context.Visits.Add(visit);
                    }
                }
            }
            
            context.SaveChanges();

            var specialtyNames = new string[] { "dentistry", "dermatology", "emergency", 
                                                "imaging", "radiology", "surgery", "vision"};

            List<Specialty> specialties = new List<Specialty>();
            foreach (string specialtyName in specialtyNames)
            {
                Specialty s = new Specialty { Name = specialtyName };
                specialties.Add(s);
                context.Specialties.Add(s);
            }
            context.SaveChanges();

            for (int m = 0; m < VETS_COUNT; m++)
            {
                Vet v = new Vet { LastName = Faker.NameFaker.LastName(), 
                                  FirstName = Faker.NameFaker.FirstName(),
                                  Specialties = new List<Specialty>()};
                int specialtyCount = rand.Next(1,5);
                for (int n = 0; n < specialtyCount; n++)
                {
                    Specialty s = specialties[rand.Next(specialties.Count)];
                    v.Specialties.Add(s);
                }
                context.Vets.Add(v);
            }

            context.SaveChanges();
        }
    }
}