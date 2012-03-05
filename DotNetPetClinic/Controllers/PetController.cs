using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using DotNetPetClinic.Models;

namespace DotNetPetClinic.Controllers
{ 
    public class PetController : Controller
    {
        private PetClinicContext db = new PetClinicContext();

        //
        // GET: /Pet/

        public ViewResult Index()
        {
            return View(db.Pets.ToList());
        }

        //
        // GET: /Pet/Details/5

        public ViewResult Details(int id)
        {
            Pet pet = db.Pets.Find(id);
            return View(pet);
        }

        //
        // GET: /Pet/Create

        public ActionResult Create()
        {
            return View();
        } 

        //
        // POST: /Pet/Create

        [HttpPost]
        public ActionResult Create(Pet pet)
        {
            if (ModelState.IsValid)
            {
                db.Pets.Add(pet);
                db.SaveChanges();
                return RedirectToAction("Index");  
            }

            return View(pet);
        }
        
        //
        // GET: /Pet/Edit/5
 
        public ActionResult Edit(int id)
        {
            Pet pet = db.Pets.Find(id);
            return View(pet);
        }

        //
        // POST: /Pet/Edit/5

        [HttpPost]
        public ActionResult Edit(Pet pet)
        {
            if (ModelState.IsValid)
            {
                db.Entry(pet).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(pet);
        }

        //
        // GET: /Pet/Delete/5
 
        public ActionResult Delete(int id)
        {
            Pet pet = db.Pets.Find(id);
            return View(pet);
        }

        //
        // POST: /Pet/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {            
            Pet pet = db.Pets.Find(id);
            db.Pets.Remove(pet);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}