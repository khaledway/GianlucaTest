using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace WebApplication3.Models
{
    public class EmployeeViewModel
    {



        [RegularExpression(@"^[a-zA-Z]+$", ErrorMessage = "Use letters only please")]
        public string EmloyeeName { get; set; }
        public System.DateTime HireDate { get; set; }
        public string Email { get; set; }


        [Required(ErrorMessage = "please select department")]
        public int DepartmentID { get; set; }

        public string DepartmentName { get; set; }

        

    }
}