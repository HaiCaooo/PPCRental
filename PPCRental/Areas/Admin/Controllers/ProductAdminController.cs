using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PPCRental.Models;

namespace PPCRental.Areas.Admin.Controllers
{
    public class ProductAdminController : Controller
    {
        DemoPPCRentalEntities model = new DemoPPCRentalEntities();
        // GET: Admin/ProductAdmin
        public ActionResult Index()
        {
            var product = model.PROPERTies.OrderByDescending(x => x.ID).ToList();
            return View(product);
        }
    }
}