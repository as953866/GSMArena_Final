using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using GSMArena_Final.Data;
using GSMArena_Final.Models;
using Microsoft.AspNetCore.Authorization;

namespace GSMArena_Final.Controllers
{
    [Authorize]
    public class MobileReviewsController : Controller
    {
        private readonly ApplicationDbContext _context;

        public MobileReviewsController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: MobileReviews
        public async Task<IActionResult> Index()
        {
            var applicationDbContext = _context.MobileReviews.Include(m => m.Mobile);
            return View(await applicationDbContext.ToListAsync());
        }

        // GET: MobileReviews/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var mobileReview = await _context.MobileReviews
                .Include(m => m.Mobile)
                .FirstOrDefaultAsync(m => m.ReviewID == id);
            if (mobileReview == null)
            {
                return NotFound();
            }

            return View(mobileReview);
        }

        // GET: MobileReviews/Create
        public IActionResult Create()
        {
            ViewData["MobileID"] = new SelectList(_context.Mobiles, "MobileID", "MobileName");
            return View();
        }

        // POST: MobileReviews/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("ReviewID,Name,Rating,ReviewText,MobileID,ReviewDate")] MobileReview mobileReview)
        {
            if (ModelState.IsValid)
            {
                _context.Add(mobileReview);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["MobileID"] = new SelectList(_context.Mobiles, "MobileID", "MobileName", mobileReview.MobileID);
            return View(mobileReview);
        }

        // GET: MobileReviews/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var mobileReview = await _context.MobileReviews.FindAsync(id);
            if (mobileReview == null)
            {
                return NotFound();
            }
            ViewData["MobileID"] = new SelectList(_context.Mobiles, "MobileID", "MobileName", mobileReview.MobileID);
            return View(mobileReview);
        }

        // POST: MobileReviews/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("ReviewID,Name,Rating,ReviewText,MobileID,ReviewDate")] MobileReview mobileReview)
        {
            if (id != mobileReview.ReviewID)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(mobileReview);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!MobileReviewExists(mobileReview.ReviewID))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            ViewData["MobileID"] = new SelectList(_context.Mobiles, "MobileID", "MobileName", mobileReview.MobileID);
            return View(mobileReview);
        }

        // GET: MobileReviews/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var mobileReview = await _context.MobileReviews
                .Include(m => m.Mobile)
                .FirstOrDefaultAsync(m => m.ReviewID == id);
            if (mobileReview == null)
            {
                return NotFound();
            }

            return View(mobileReview);
        }

        // POST: MobileReviews/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var mobileReview = await _context.MobileReviews.FindAsync(id);
            _context.MobileReviews.Remove(mobileReview);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool MobileReviewExists(int id)
        {
            return _context.MobileReviews.Any(e => e.ReviewID == id);
        }
    }
}
