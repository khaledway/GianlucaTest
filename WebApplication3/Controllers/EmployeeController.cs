using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebApplication3.DAL;
using WebApplication3.Models;

namespace WebApplication3.Controllers
{
    public class EmployeeController : Controller
    {
          TestEntities db = new TestEntities();  
        public ActionResult Index(int? DepartmentID)
        {
            var EmployeeList = db.Employee.Where(s =>  (DepartmentID.HasValue?s.DepartmentID == DepartmentID.Value:true)).ToList();
            ViewBag.EmployeeList = EmployeeList;
            return View(ViewBag.EmployeeList);
        }
        public ActionResult Create()
        {
            List<Department> departmentList = db.Department.ToList();
            ViewBag.DepartmentList = departmentList;
            return View();
        }


        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "EmloyeeName,Email,DepartmentID , HireDate")] EmployeeViewModel employeeViewModel)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    Employee employee = new Employee()
                    {
                        DepartmentID = employeeViewModel.DepartmentID,
                        Email = employeeViewModel.Email,
                        EmloyeeName = employeeViewModel.EmloyeeName,
                        HireDate = employeeViewModel.HireDate,
                    };
                    db.Employee.Add(employee);
                    db.SaveChanges();
                    return RedirectToAction("Index");
                }
                else
                {
                    
                }
                return View(employeeViewModel);
            }
            catch (Exception ex)
            {
                return RedirectToAction("Index");
            }
        }



    }
}