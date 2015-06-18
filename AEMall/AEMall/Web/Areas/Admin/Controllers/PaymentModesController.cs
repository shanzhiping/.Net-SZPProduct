using System;
using System.Linq;
using System.Web.Mvc;
using BLL;
using Models;

namespace Web.Areas.Admin.Controllers
{
    [NoCache]
    [HandleError]
	[Authorize]
    public class PaymentModesController:Controller
    {
		PaymentModesBLL _PaymentModesBLL = new PaymentModesBLL();  
		public ActionResult Index(int? pageIndex, string Keyword)
        {
            var model = _PaymentModesBLL.Get();
            if (!string.IsNullOrEmpty(Keyword))
            {
				Keyword = Keyword.Trim();
                model = model.Where(a => a.Name.Contains(Keyword));
            }
			model = model.OrderBy(a => a.Name);
            return View(model.ToPagedList(pageIndex));
        }
		public ActionResult Details(Guid? id)
        {          
            var item = _PaymentModesBLL.Get(id);
            return View(item);
        }
		public ActionResult Edit(Guid? id)
        {          
            var item = _PaymentModesBLL.Get(id);
            return View(item);
        }
		[HttpPost]
        public ActionResult Edit(Guid? id, PaymentModes collection)
        {
            if (!ModelState.IsValid)
            {
                return View(collection);
            }
            else
            {
                _PaymentModesBLL.Save(id, ref collection);
                return RedirectToAction("Index", RouteData.Values);
            }
        }
		[HttpDelete]
        public ActionResult Delete(Guid id)
        {
            _PaymentModesBLL.DeleteObject(id);
			return RedirectToAction("Index", RouteData.Values);
        }		
		    
    }
}
