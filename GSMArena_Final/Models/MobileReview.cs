using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace GSMArena_Final.Models
{
    public class MobileReview
    {
        [Key]
        public int ReviewID { get; set; }

        [Required]
        [StringLength(100)]
        public string Name { get; set; }

        [Required]
        public int Rating { get; set; }

        [Required]
        [StringLength(1000)]
        public string ReviewText { get; set; }

        [Required]
        public int MobileID { get; set; }

        public Mobile Mobile { get; set; }

        public DateTime ReviewDate { get; set; }

    }
}
