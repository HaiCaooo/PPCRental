using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PPCRental.Models;
namespace PPCRental.Controllers
{
    public class HomeController : Controller
    {
        DemoPPCRentalEntities m = new DemoPPCRentalEntities();
        public ActionResult Index()
        {
            var p = m.PROPERTies.ToList();
            return View(p);
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
        [HttpPost]
        public ActionResult Search(string text)
        {
            var p = m.PROPERTies.ToList().Where(x => x.PropertyName.ToUpper().Contains(text.ToUpper())
                || x.ID.ToString().ToUpper().Contains(text.ToUpper()) || x.Content.ToUpper().Contains(text.ToUpper()));
            return View(p);
        }
    }
}