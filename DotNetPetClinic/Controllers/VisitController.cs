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
    public class VisitController : Controller
    {
        private PetClinicContext db = new PetClinicContext();

        //
        // GET: /Visit/

        public ViewResult Index()
        {
            var visits = db.Visits.Include(v => v.Pet);
            return View(visits.ToList());
        }

        //
        // GET: /Visit/Details/5

        public ViewResult Details(int id)
        {
            Visit visit = db.Visits.Find(id);
            return View(visit);
        }

        //
        // GET: /Visit/Create

        public ActionResult Create()
        {
            ViewBag.PetId = new SelectList(db.Pets, "Id", "Name");
            return View();
        } 

        //
        // POST: /Visit/Create

        [HttpPost]
        public ActionResult Create(Visit visit)
        {
            if (ModelState.IsValid)
            {
                db.Visits.Add(visit);
                db.SaveChanges();
                return RedirectToAction("Index");  
            }

            ViewBag.PetId = new SelectList(db.Pets, "Id", "Name", visit.PetId);
            return View(visit);
        }
        
        //
        // GET: /Visit/Edit/5
 
        public ActionResult Edit(int id)
        {
            Visit visit = db.Visits.Find(id);
            ViewBag.PetId = new SelectList(db.Pets, "Id", "Name", visit.PetId);
            return View(visit);
        }

        //
        // POST: /Visit/Edit/5

        [HttpPost]
        public ActionResult Edit(Visit visit)
        {
            if (ModelState.IsValid)
            {
                db.Entry(visit).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.PetId = new SelectList(db.Pets, "Id", "Name", visit.PetId);
            return View(visit);
        }

        //
        // GET: /Visit/Delete/5
 
        public ActionResult Delete(int id)
        {
            Visit visit = db.Visits.Find(id);
            return View(visit);
        }

        //
        // POST: /Visit/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {            
            Visit visit = db.Visits.Find(id);
            db.Visits.Remove(visit);
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