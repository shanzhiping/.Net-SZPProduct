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
    public class ConfigsController:Controller
    {
		ConfigsBLL _ConfigsBLL = new ConfigsBLL();  
		public ActionResult Index(int? pageIndex, string Keyword)
        {
            var model = _ConfigsBLL.Get();
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
            var item = _ConfigsBLL.Get(id);
            ViewData["Yes"] = "开启";
            ViewData["No"] = "关闭";
            return View(item);
        }
		public ActionResult Edit(Guid? id)
        {          
            var item = _ConfigsBLL.Get(id);
            ViewData["Yes"] = "开启";
            ViewData["No"] = "关闭";
            return View(item);
        }
		[HttpPost]
        public ActionResult Edit(Guid? id, Configs collection)
        {
            if (!ModelState.IsValid)
            {
                return View(collection);
            }
            else
            {
                _ConfigsBLL.Save(id, ref collection);
                return RedirectToAction("Index", RouteData.Values);
            }
        }
		[HttpDelete]
        public ActionResult Delete(Guid id)
        {
            _ConfigsBLL.DeleteObject(id);
			return RedirectToAction("Index", RouteData.Values);
        }		
		    
    }
}
