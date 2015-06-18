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
    public class RegionsController:Controller
    {
		RegionsBLL _RegionsBLL = new RegionsBLL();  
        public ActionResult Index()
        {
            var models = _RegionsBLL.Get();
            models = models.Where(b => !b.ParentId.HasValue).OrderBy(a => a.Regions2.Sequence).ThenBy(b => b.Sequence);
            ViewBag.TreeList = _RegionsBLL.GetTreeList(models);
            return View();
        }
		public ActionResult Details(Guid? id)
        {          
            var item = _RegionsBLL.Get(id);
            return View(item);
        }
		public ActionResult Edit(Guid? id)
        {
            var item = _RegionsBLL.Get(id);
            ViewBag.ParentId = _RegionsBLL.GetDropdownlist(item.ParentId);
            return View(item);
        }
		[HttpPost]
        public ActionResult Edit(Guid? id, Regions collection)
        {
            Edit(id);
            if (!ModelState.IsValid)
            {
                return View(collection);
            }
            else
            {
                _RegionsBLL.Save(id, ref collection);
                return RedirectToAction("Index", RouteData.Values);
            }
        }
		[HttpDelete]
        public ActionResult Delete(Guid id)
        {
            _RegionsBLL.DeleteObject(id);
			return RedirectToAction("Index", RouteData.Values);
        }		
		    
    }
}
