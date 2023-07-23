using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using GBFShoe.Models;
namespace GBFShoe.Controllers
{
    public class ShopController : Controller
    {
        // GET: Shop
        GBFShoeEntities db = new GBFShoeEntities();
        public ActionResult Shop()
        {
            return View(db.Products.ToList());
        }
        [HttpPost]
        public ActionResult Shop(FormCollection f)
        {
            string item = f["search"].ToString();
            var product = db.Products.Where(n => n.Name.Contains(item)).ToList();
            return View(product);
        }
    }
}