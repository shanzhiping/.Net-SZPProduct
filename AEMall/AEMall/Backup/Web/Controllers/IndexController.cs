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
    public class IndexController : Controller
    {
        //
        // GET: /Index/
        ProductTypesBLL _ProductTypesBLL = new ProductTypesBLL();
        ProductsBLL _ProductsBLL = new ProductsBLL();
        ArticlesBLL _ArticlesBLL = new ArticlesBLL();
        ConfigsBLL _ConfigsBLL = new ConfigsBLL();
        UsersBLL _UsersBLL = new UsersBLL();
        public ActionResult Index()
        {
            bool ispower = false;
            string userid = User.Identity.Name;
            if (!String.IsNullOrEmpty(userid))
            {
                Guid UserId = Guid.Parse(userid);
                var user = _UsersBLL.Get(UserId);
                if(user != null)
                    ispower = user.IsPower.HasValue ? user.IsPower.Value : false;
            }
            if(ispower)
                return Redirect("/Admin");
            else
                return View();
        }
        public ActionResult Tabs()
        {
            ViewBag.Hots = _ProductsBLL.GetByTypeName("热销").Take(5);
            ViewBag.MailFree = _ProductsBLL.GetByTypeName("包邮").Take(5);
            ViewBag.Special = _ProductsBLL.GetByTypeName("特色").Take(5);
            ViewBag.Artwork = _ProductsBLL.GetByTypeName("工艺").Take(5);
            return View();
        }
        public ActionResult Regions()
        {
            var items = _ProductsBLL.Get().Take(8);
            return View(items);
        }
        public ActionResult Articles()
        {
            var items = _ArticlesBLL.Get();
            return View(items); 
        }
        public ActionResult LeftTree()
        {
            var items = _ProductTypesBLL.Get().Where(a=>a.ProductTypes2.Name.Equals("按地域分")).Take(11);
            return View(items);
        }
        public ActionResult TopNav()
        {
            var items = _ProductTypesBLL.GetTopNav();
            return View(items);
        }
        public ActionResult Focus()
        {
            var items = _ArticlesBLL.Get().Where(a => a.Genres.Name.Equals("焦点滚动"));
            return View(items);
        }
        public ActionResult Hot()
        {
            var items = _ArticlesBLL.Get().Where(a => a.Genres.Name.Equals("热点推荐"));
            return View(items);
        }
        public ActionResult LeftFix()
        {
            var item = _ArticlesBLL.Get().Where(a => a.Genres.Name.Equals("固定广告左")).First();
            return View(item);
        }
        public ActionResult RightFix()
        {
            var item = _ArticlesBLL.Get().Where(a => a.Genres.Name.Equals("固定广告右")).First();
            return View(item);
        }
        public ActionResult Footer()
        {
            var items = _ArticlesBLL.Get();
            return View(items);
        }
        public ActionResult Misc()
        {
            var items = _ArticlesBLL.Get();
            int foundNow = DateTime.Now.Year;
            string foundString = foundNow.ToString();
            string foundYear = _ConfigsBLL.Get("YearFounded").Content;
            if (foundYear.IsUint())
            {
                if (foundNow > Int32.Parse(foundYear))
                    foundString = foundYear.ToString() + "-" + foundNow.ToString();
            }
            ViewBag.Founded = foundString;
            ViewBag.Beian = _ConfigsBLL.Get("Beian").Content;
            ViewBag.Address = _ConfigsBLL.Get("Address").Content;
            ViewBag.SysName = _ConfigsBLL.Get("SysName").Content;
            ViewBag.Url = _ConfigsBLL.Get("Url").Content;
            return View(items);
        }
    }
}
