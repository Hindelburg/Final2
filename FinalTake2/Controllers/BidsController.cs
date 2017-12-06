using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using FinalTake2.Models;

namespace FinalTake2.Controllers
{
    public class BidsController : Controller
    {
        private dbContext db = new dbContext();

        // GET: Bids/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Bid bid = db.Bids.Find(id);
            if (bid == null)
            {
                return HttpNotFound();
            }
            return View(bid);
        }

        // GET: Bids/Create
        public ActionResult Create()
        {
            ViewBag.buyerID = new SelectList(db.Buyers, "id", "bName");
            ViewBag.itemID = new SelectList(db.Items, "id", "iName");
            return View();
        }
    }
}
