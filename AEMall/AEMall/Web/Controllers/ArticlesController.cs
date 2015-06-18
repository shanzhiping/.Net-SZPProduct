using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Models;
using BLL;

namespace Web.Controllers
{
    public class ArticlesController : Controller
    {
        //
        // GET: /Articles/
        ArticlesBLL _ArticlesBLL = new ArticlesBLL();
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Details(Guid Id)
        {
            var articles = _ArticlesBLL.Get(Id);
            return View(articles);
        }
    }
}
