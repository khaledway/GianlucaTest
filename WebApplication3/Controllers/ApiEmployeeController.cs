using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using WebApplication3.DAL;
using WebApplication3.Models;

namespace WebApplication3.Controllers
{
    public class ApiEmployeeController : ApiController
    {
        TestEntities db = new TestEntities();

        [HttpGet]
        public IHttpActionResult GetAll()
        {
            List<EmployeeViewModel> list = null;
            list = GetAllEmployee(null);
            return Json(list);
        }

        [HttpGet]
        public IHttpActionResult Get(string name)
        {
            List<EmployeeViewModel> list = null;
            list = GetAllEmployee(name);
            return Json(list);
        }



        List<EmployeeViewModel> GetAllEmployee(string name)
        {
            List<EmployeeViewModel> list = null;
            var EmployeeList = db.Employee.Where(s=> (string.IsNullOrEmpty(name)? true: s.EmloyeeName.Trim().ToLower().Contains(name.Trim().ToLower()))).ToList();
            list = EmployeeList.Select(s => new EmployeeViewModel()
            {
                DepartmentID = s.DepartmentID,
                DepartmentName = s.Department.DepartmentName,
                Email = s.Email,
                EmloyeeName = s.EmloyeeName,
                HireDate = s.HireDate
            }).ToList();
            return list;
        }

    }
}
