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
    public class ProductTypesController : Controller
    {
        ProductTypesBLL _ProductTypesBLL = new ProductTypesBLL();
        public ActionResult Index()
        {
            var models = _ProductTypesBLL.Get();
            models = models.Where(b => !b.ParentId.HasValue).OrderBy(a => a.ProductTypes2.Sequence).ThenBy(b => b.Sequence);
            ViewBag.TreeList = _ProductTypesBLL.GetTreeList(models);
            return View();
        }
        public ActionResult Details(Guid? id)
        {
            var item = _ProductTypesBLL.Get(id);
            return View(item);
        }
        public ActionResult Edit(Guid? id)
        {
            var item = _ProductTypesBLL.Get(id);
            ViewBag.ParentId = _ProductTypesBLL.GetDropdownlist(item.ParentId);
            return View(item);
        }
        [HttpPost]
        public ActionResult Edit(Guid? id, ProductTypes collection)
        {
            Edit(id);
            if (!ModelState.IsValid)
            {
                return View(collection);
            }
            else
            {
                if (collection.ParentId.Equals(collection.Id))
                {
                    ModelState.AddModelError("", "不能将当前项设为自身的父类！");
                     return View(collection);
                }                   
                else
                {
                    _ProductTypesBLL.Save(id, ref collection);
                    return RedirectToAction("Index", RouteData.Values);
                }
            }
        }
        [HttpDelete]
        public ActionResult Delete(Guid id)
        {
            _ProductTypesBLL.DeleteObject(id);
            return RedirectToAction("Index", RouteData.Values);
        }

    }
}
