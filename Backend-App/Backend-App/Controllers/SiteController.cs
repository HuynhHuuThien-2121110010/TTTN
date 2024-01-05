using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MyClass.Models;

namespace Backend_App.Controllers
{
    public class SiteController : Controller
    {
        // GET: Site
        public ActionResult Index()
        {
            DbConnect db = new DbConnect();
            int somau = db.Products.Count();
            ViewBag.Somau = somau;
            return View();
        }
    }

}