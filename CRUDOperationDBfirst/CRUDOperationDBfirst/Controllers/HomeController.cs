using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CRUDOperationDBfirst.Controllers
{
    public class HomeController : Controller
    {
        CRUDDBFirstDBContext _context = new CRUDDBFirstDBContext();
        public ActionResult Index()
        {
            var listofData = _context.Employees.ToList();
            return View(listofData);
        }
        [HttpGet]
        public ActionResult Create()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Create(Employee model)
        {
            _context.Employees.Add(model);
            _context.SaveChanges();
            ViewBag.Message = "Data Insert Successfuly";
            return View();
        }
        [HttpGet]
        public ActionResult Edit(int id)
        {
            var data = _context.Employees.Where(x => x.Empid == id).FirstOrDefault();
            return View(data);
        }
        [HttpPost]
        public ActionResult Edit(Employee model)
        {
            var data = _context.Employees.Where(x => x.Empid == model.Empid).FirstOrDefault();
            if(data != null)
            {
                data.EmpCity = model.EmpCity;
                data.EmpName = model.EmpName;
                data.EmpSalary = model.EmpSalary;
                _context.SaveChanges();
            }
            return RedirectToAction("index");
        }
        public ActionResult Detail(int id)
        {
            var data = _context.Employees.Where(x => x.Empid == id).FirstOrDefault();
            return View(data);
        }
       public ActionResult Delete(int id)
        {
            var data = _context.Employees.Where(x => x.Empid == id).FirstOrDefault();
            _context.Employees.Remove(data);
            _context.SaveChanges();
            ViewBag.Message = "Record Delete Successfully";
            return RedirectToAction("index");
        }
    }
}