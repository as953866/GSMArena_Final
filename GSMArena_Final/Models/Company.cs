using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace GSMArena_Final.Models
{
    public class Company
    {
        [Key]
        public int CompanyID { get; set; }

        [Required]
        [StringLength(100)]
        public string CompanyName { get; set; }

        public virtual ICollection<Mobile> CompanyMobiles { get; set; }
    }
}
