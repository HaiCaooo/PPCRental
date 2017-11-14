using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PPCRental.Models;
namespace PPCRental.Controllers
{
    public class propertyController : Controller
    {
        //
        // GET: /property/
        DemoPPCRentalEntities m = new DemoPPCRentalEntities();
        public ActionResult Detail(int id,string name)
        {
            var p = m.PROPERTies.FirstOrDefault(x => x.ID == id || x.PropertyName == name);
            return View(p);
        }
	}
}