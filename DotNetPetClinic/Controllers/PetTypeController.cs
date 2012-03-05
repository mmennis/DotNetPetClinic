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
    public class PetTypeController : Controller
    {
        private PetClinicContext db = new PetClinicContext();

        //
        // GET: /PetType/

        public ViewResult Index()
        {
            return View(db.PetTypes.ToList());
        }

        //
        // GET: /PetType/Details/5

        public ViewResult Details(int id)
        {
            PetType pettype = db.PetTypes.Find(id);
            return View(pettype);
        }

        //
        // GET: /PetType/Create

        public ActionResult Create()
        {
            return View();
        } 

        //
        // POST: /PetType/Create

        [HttpPost]
        public ActionResult Create(PetType pettype)
        {
            if (ModelState.IsValid)
            {
                db.PetTypes.Add(pettype);
                db.SaveChanges();
                return RedirectToAction("Index");  
            }

            return View(pettype);
        }
        
        //
        // GET: /PetType/Edit/5
 
        public ActionResult Edit(int id)
        {
            PetType pettype = db.PetTypes.Find(id);
            return View(pettype);
        }

        //
        // POST: /PetType/Edit/5

        [HttpPost]
        public ActionResult Edit(PetType pettype)
        {
            if (ModelState.IsValid)
            {
                db.Entry(pettype).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(pettype);
        }

        //
        // GET: /PetType/Delete/5
 
        public ActionResult Delete(int id)
        {
            PetType pettype = db.PetTypes.Find(id);
            return View(pettype);
        }

        //
        // POST: /PetType/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {            
            PetType pettype = db.PetTypes.Find(id);
            db.PetTypes.Remove(pettype);
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