using System;
using System.Collections.Generic;
using System.Text;
using GSMArena_Final.Models;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace GSMArena_Final.Data
{
    public class ApplicationDbContext : IdentityDbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {

        }

        public DbSet<Company>  Companies { get; set; }

        public DbSet<Mobile> Mobiles { get; set; }

        public DbSet<MobileReview> MobileReviews { get; set; }

        public DbSet<Blog> Blogs { get; set; }
    }
}
