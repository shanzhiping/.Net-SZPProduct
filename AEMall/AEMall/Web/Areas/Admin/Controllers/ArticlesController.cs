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
    public class ArticlesController:Controller
    {
		ArticlesBLL _ArticlesBLL = new ArticlesBLL();  
		public ActionResult Index(int? pageIndex, string Keyword)
        {
            var model = _ArticlesBLL.Get();
            if (!string.IsNullOrEmpty(Keyword))
            {
				Keyword = Keyword.Trim();
                model = model.Where(a => a.Name.Contains(Keyword));
            }
            return View(model.ToPagedList(pageIndex));
        }
		public ActionResult Details(Guid? id)
        {          
            var item = _ArticlesBLL.Get(id);
            return View(item);
        }
		public ActionResult Edit(Guid? id)
        {
            PicturesBLL _PicturesBLL = new PicturesBLL();
            GenresBLL _GenresBLL = new GenresBLL();
            var item = _ArticlesBLL.Get(id);
            ViewBag.GenreId = _GenresBLL.GetDropdownlist(item.GenreId);
            ViewBag.ItemString = _PicturesBLL.GetStringByArticleId(id);
            return View(item);
        }
		[HttpPost]
        [ValidateInput(false)]
        public ActionResult Edit(Guid? id, Articles collection)
        {
            PicturesBLL _PicturesBLL = new PicturesBLL();
            Edit(id);
            if (!ModelState.IsValid)
            {
                return View(collection);
            }
            else
            {
                collection.UserId = Guid.Parse(User.Identity.Name);
                string galleryItems = Request["GalleryItems"].ToString();
                _ArticlesBLL.Save(id, ref collection, galleryItems);
                return RedirectToAction("Index", RouteData.Values);
            }
        }
		[HttpDelete]
        public ActionResult Delete(Guid id)
        {
            _ArticlesBLL.DeleteObject(id);
			return RedirectToAction("Index", RouteData.Values);
        }		
		    
    }
}
