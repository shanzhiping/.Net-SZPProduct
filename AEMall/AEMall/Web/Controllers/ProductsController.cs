using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Models;
using BLL;

//_5_1_a_s_p_x
namespace Web.Controllers
{
    public class ProductsController : Controller
    {
        //
        // GET: /Products/
        ProductsBLL _ProductsBLL = new ProductsBLL();
        ProductTypesBLL _ProductTypesBLL = new ProductTypesBLL();
        public ActionResult Index(int? pageIndex)
        {
            var products = _ProductsBLL.Get().OrderByDescending(a => a.CreateTime);
            ViewBag.SiteName = "测试1";
            return View(products.ToPagedList(pageIndex));
        }
        public ActionResult Search(int? pageIndex, string keywords)
        {
            var products = _ProductsBLL.Get().Where(a => a.Brand.Contains(keywords) || a.Description.Contains(keywords) || a.Keywords.Contains(keywords) || a.Name.Contains(keywords) || a.Regions.Name.Contains(keywords)).OrderByDescending(a => a.CreateTime);
            return View(products.ToPagedList(pageIndex));
        }
        public ActionResult Details(Guid Id)
        {
            var product = _ProductsBLL.Get(Id);
            return View(product);
        }
        public ActionResult Type(int? pageIndex, Guid? Id)
        {
            ViewBag.ProductType = _ProductTypesBLL.Get(Id).Name;
            var products = _ProductsBLL.GetByTypeId(Id).OrderByDescending(a=>a.CreateTime);
            return View(products.ToPagedList(pageIndex));
        }
        public ActionResult RankList()
        {
            var products = _ProductsBLL.Get().Take(10);
            return View(products);
        }
    }
}
