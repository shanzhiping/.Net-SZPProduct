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
    public class GenresController:Controller
    {
		GenresBLL _GenresBLL = new GenresBLL();
        public ActionResult Index()
        {
            var models = _GenresBLL.Get();
            models = models.Where(b => !b.ParentId.HasValue).OrderBy(a => a.Genres2.Sequence).ThenBy(b => b.Sequence);
            ViewBag.TreeList = _GenresBLL.GetTreeList(models);
            return View();
        }
		public ActionResult Details(Guid? id)
        {          
            var item = _GenresBLL.Get(id);
            return View(item);
        }
		public ActionResult Edit(Guid? id)
        {          
            var item = _GenresBLL.Get(id);
            ViewBag.ParentId = _GenresBLL.GetDropdownlist(item.ParentId);
            return View(item);
        }
		[HttpPost]
        public ActionResult Edit(Guid? id, Genres collection)
        {
            Edit(id);
            if (!ModelState.IsValid)
            {
                return View(collection);
            }
            else
            {
                _GenresBLL.Save(id, ref collection);
                return RedirectToAction("Index", RouteData.Values);
            }
        }
		[HttpDelete]
        public ActionResult Delete(Guid id)
        {
            _GenresBLL.DeleteObject(id);
			return RedirectToAction("Index", RouteData.Values);
        }		
		    
    }
}
