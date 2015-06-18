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
    public class ProductsController : Controller
    {
        ProductsBLL _ProductsBLL = new ProductsBLL();
        public ActionResult Index(int? pageIndex, string Keyword)
        {
            var model = _ProductsBLL.Get();
            if (!string.IsNullOrEmpty(Keyword))
            {
                Keyword = Keyword.Trim();
                model = model.Where(a => a.Name.Contains(Keyword));
            }
            return View(model.ToPagedList(pageIndex));
        }
        public ActionResult Details(Guid? id)
        {
            ProductTypesBLL _ProductTypesBLL = new ProductTypesBLL();
            var item = _ProductsBLL.Get(id);
            ViewBag.ProductTypes = _ProductTypesBLL.GetTypeStaticlist(id);
            return View(item);
        }
        public ActionResult Edit(Guid? id)
        {
            GalleryBLL _GalleryBLL = new GalleryBLL();
            RegionsBLL _RegionsBLL = new RegionsBLL();
            ProductTypesBLL _ProductTypesBLL = new ProductTypesBLL();
            var item = _ProductsBLL.Get(id);
            ViewBag.RegionId = _RegionsBLL.GetDropdownlist(item.RegionId);
            ViewBag.ItemString = _GalleryBLL.GetStringByProductId(id);
            ViewBag.ProductTypes = _ProductTypesBLL.GetTypelist(id);
            ViewData["Yes"] = "是";
            ViewData["No"] = "否";
            return View(item);
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult Edit(Guid? id, Products collection)
        {
            ProductTypesBLL _ProductTypesBLL = new ProductTypesBLL();
            ProductsInTypesBLL _ProductsInTypesBLL = new ProductsInTypesBLL();
            string productTypeId = string.Empty;
            Edit(id);
            if (!ModelState.IsValid)
            {
                return View(collection);
            }
            else
            {
                collection.SuperId = Guid.Parse(User.Identity.Name);
                string galleryItems = Request["GalleryItems"].ToString();
                _ProductsBLL.Save(id, ref collection, galleryItems);
                if (collection.Id != null)
                {
                    _ProductsInTypesBLL.Delete(collection.Id);
                }
                foreach (var item in _ProductTypesBLL.Get().Where(a => !a.ParentId.HasValue))
                {
                    productTypeId = Request[item.Id.ToString()].ToString();
                    if (!String.IsNullOrEmpty(productTypeId))
                    {
                        _ProductsInTypesBLL.Insert(collection.Id, Guid.Parse(productTypeId));
                    }
                }
                return RedirectToAction("Index", RouteData.Values);
            }
        }
        [HttpDelete]
        public ActionResult Delete(Guid id)
        {
            GalleryBLL _GalleryBLL = new GalleryBLL();
            _GalleryBLL.DeleteByProductId(id);
            _ProductsBLL.DeleteObject(id);
            return RedirectToAction("Index", RouteData.Values);
        }

    }
}
