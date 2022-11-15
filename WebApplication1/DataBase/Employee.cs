using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace WebApplication1.DataBase
{
    public partial class Employee
    {
        [Key]
        [Column("EmloyeeID")]
        public int EmloyeeId { get; set; }
        [Required]
        [StringLength(50)]
        public string EmloyeeName { get; set; }
        [Column(TypeName = "datetime")]
        public DateTime HireDate { get; set; }
        [Required]
        [StringLength(50)]
        public string Email { get; set; }
        [Column("DepartmentID")]
        public int DepartmentId { get; set; }

        [ForeignKey(nameof(DepartmentId))]
        [InverseProperty("Employee")]
        public virtual Department Department { get; set; }
    }
}
