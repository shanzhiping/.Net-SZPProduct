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
    public class PicturesController:Controller
    {
		PicturesBLL _PicturesBLL = new PicturesBLL();  
		public ActionResult Index(int? pageIndex, string Keyword)
        {
            var model = _PicturesBLL.Get();
            if (!string.IsNullOrEmpty(Keyword))
            {
				Keyword = Keyword.Trim();
                model = model.Where(a => a.Name.Contains(Keyword));
            }
			model = model.OrderBy(a => a.Name);
            return View(model.ToPagedList(pageIndex));
        }
        public ActionResult Basket(string id)
        {
            Guid Id = Guid.Parse(id);
            var items = _PicturesBLL.GetByArticleId(Id);
            return View(items);
        }
		public ActionResult Details(Guid? id)
        {          
            var item = _PicturesBLL.Get(id);
            return View(item);
        }
		public ActionResult Edit(Guid? id)
        {          
            var item = _PicturesBLL.Get(id);
            return View(item);
        }
		[HttpPost]
        public ActionResult Edit(Guid? id, Pictures collection)
        {
            if (!ModelState.IsValid)
            {
                return View(collection);
            }
            else
            {
                _PicturesBLL.Save(id, ref collection);
                return RedirectToAction("Index", RouteData.Values);
            }
        }
		[HttpDelete]
        public ActionResult Delete(Guid id)
        {
            _PicturesBLL.DeleteObject(id);
			return RedirectToAction("Index", RouteData.Values);
        }		
		    
    }
}
