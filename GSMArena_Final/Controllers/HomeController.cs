using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using GSMArena_Final.Models;
using GSMArena_Final.Data;
using Microsoft.EntityFrameworkCore;

namespace GSMArena_Final.Controllers
{
    public class HomeController : Controller
    {
        private readonly ApplicationDbContext _context;
        private readonly ILogger<HomeController> _logger;

        public HomeController(ApplicationDbContext context, ILogger<HomeController> logger)
        {
            _context = context;
            _logger = logger;
        }

        public async Task<IActionResult> Index()
        {
            return View(await _context.Mobiles.OrderBy(x => Guid.NewGuid()).Take(3).ToListAsync());
        }

        public async Task<IActionResult> ViewMobilesByCompany(int? id)
        {
            var applicationDbContext = _context.Mobiles
            .Include(b => b.Company).Where(m => m.CompanyID == id);
            return View(await applicationDbContext.ToListAsync());
        }

        public async Task<IActionResult> AllCompanies()
        {
            return View(await _context.Companies.ToListAsync());
        }

        public async Task<IActionResult> ViewBlogs()
        {
            return View(await _context.Blogs.ToListAsync());
        }

        public async Task<IActionResult> AllMobiles()
        {
            return View(await _context.Mobiles.ToListAsync());
        }


        public async Task<IActionResult> MobileDetails(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var mobile = await _context.Mobiles
                .Include(b => b.Company)
                .FirstOrDefaultAsync(m => m.MobileID == id);
            if (mobile == null)
            {
                return NotFound();
            }

            return View(mobile);
        }

        public async Task<IActionResult> BlogDetails(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var blog = await _context.Blogs
                .FirstOrDefaultAsync(m => m.BlogID == id);
            if (blog == null)
            {
                return NotFound();
            }

            return View(blog);
        }
        public async Task<IActionResult> ViewReviews(int? id)
        {
            var applicationDbContext = _context.MobileReviews
            .Include(b => b.Mobile).Where(m => m.MobileID == id);
            return View(await applicationDbContext.ToListAsync());
        }

            public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
