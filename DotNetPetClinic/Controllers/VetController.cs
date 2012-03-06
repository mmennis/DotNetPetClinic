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
    public class VetController : Controller
    {
        private PetClinicContext db = new PetClinicContext();

        //
        // GET: /Vet/

        public ViewResult Index()
        {
            return View(db.Vets.ToList());
        }

        //
        // GET: /Vet/Details/5

        public ViewResult Details(int id)
        {
            Vet vet = db.Vets.Find(id);
            return View(vet);
        }

        //
        // GET: /Vet/Create

        public ActionResult Create()
        {
            return View();
        } 

        //
        // POST: /Vet/Create

        [HttpPost]
        public ActionResult Create(Vet vet)
        {
            if (ModelState.IsValid)
            {
                db.Vets.Add(vet);
                db.SaveChanges();
                return RedirectToAction("Index");  
            }

            return View(vet);
        }
        
        //
        // GET: /Vet/Edit/5
 
        public ActionResult Edit(int id)
        {
            Vet vet = db.Vets.Find(id);
            return View(vet);
        }

        //
        // POST: /Vet/Edit/5

        [HttpPost]
        public ActionResult Edit(Vet vet)
        {
            if (ModelState.IsValid)
            {
                db.Entry(vet).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(vet);
        }

        //
        // GET: /Vet/Delete/5
 
        public ActionResult Delete(int id)
        {
            Vet vet = db.Vets.Find(id);
            return View(vet);
        }

        //
        // POST: /Vet/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {            
            Vet vet = db.Vets.Find(id);
            db.Vets.Remove(vet);
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