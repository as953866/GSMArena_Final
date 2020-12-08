using Microsoft.AspNetCore.Http;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace GSMArena_Final.Models
{
    public class Mobile
    {
        [Key]
        public int MobileID { get; set; }

        [Required]
        [StringLength(200)]
        public string MobileName { get; set; }

        [StringLength(400)]
        public string Network { get; set; }

        [StringLength(400)]
        public string Launch { get; set; }

        [StringLength(400)]
        public string Body { get; set; }

        [StringLength(400)]
        public string Display { get; set; }

        [StringLength(400)]
        public string Platform { get; set; }

        [StringLength(400)]
        public string Memory { get; set; }

        [StringLength(400)]
        public string MainCamera { get; set; }

        [StringLength(400)]
        public string SelfieCamera { get; set; }

        [StringLength(400)]
        public string Sound { get; set; }

        [StringLength(400)]
        public string Comms { get; set; }

        [StringLength(400)]
        public string Features { get; set; }

        [StringLength(400)]
        public string Battery { get; set; }

        [StringLength(400)]
        public string Misc { get; set; }

        [Required]
        [StringLength(20)]
        public string Extension { get; set; }

        [Required]
        public int CompanyID { get; set; }

        [ForeignKey("CompanyID")]
        [InverseProperty("CompanyMobiles")]
        public virtual Company Company { get; set; }

        public virtual ICollection<MobileReview> MobileReviews { get; set; }

        [NotMapped]
        public SingleFileUpload File { get; set; }
    }

    public class SingleFileUpload
    {
        [Required]
        [Display(Name = "File")]
        public IFormFile FormFile { get; set; }
    }
}
