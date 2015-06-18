using System;
using System.Linq;
using System.Web.Mvc;
using BLL;
using Models;
using System.Text;

namespace Web.Areas.Admin.Controllers
{
    [NoCache]
    [HandleError]
	[Authorize]
    public class GalleryController:Controller
    {
		GalleryBLL _GalleryBLL = new GalleryBLL();  
		public ActionResult Index(int? pageIndex, string Keyword)
        {
            var model = _GalleryBLL.Get();
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
            var items = _GalleryBLL.GetByProductId(Id);
            return View(items);
        }
		public ActionResult Details(Guid? id)
        {          
            var item = _GalleryBLL.Get(id);
            return View(item);
        }
		public ActionResult Edit(Guid? id)
        {          
            var item = _GalleryBLL.Get(id);
            return View(item);
        }
		[HttpPost]
        public ActionResult Edit(Guid? id, Gallery collection)
        {
            if (!ModelState.IsValid)
            {
                return View(collection);
            }
            else
            {
                _GalleryBLL.Save(id, ref collection);
                return RedirectToAction("Index", RouteData.Values);
            }
        }
		[HttpDelete]
        public ActionResult Delete(Guid id)
        {
            _GalleryBLL.DeleteObject(id);
			return RedirectToAction("Index", RouteData.Values);
        }		
		    
    }
}
