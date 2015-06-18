using System;
using System.Linq;
using System.Web.Mvc;
using BLL;
using Models;
//_来_自_5_1_a_s_p_x
namespace Web.Areas.Admin.Controllers
{
    [NoCache]
    [HandleError]
	[Authorize]
    public class UserRanksController:Controller
    {
		UserRanksBLL _UserRanksBLL = new UserRanksBLL();  
		public ActionResult Index(int? pageIndex, string Keyword)
        {
            var model = _UserRanksBLL.Get();
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
            var item = _UserRanksBLL.Get(id);
            return View(item);
        }
		public ActionResult Edit(Guid? id)
        {          
            var item = _UserRanksBLL.Get(id);
            return View(item);
        }
		[HttpPost]
        public ActionResult Edit(Guid? id, UserRanks collection)
        {
            if (!ModelState.IsValid)
            {
                return View(collection);
            }
            else
            {
                _UserRanksBLL.Save(id, ref collection);
                return RedirectToAction("Index", RouteData.Values);
            }
        }
		[HttpDelete]
        public ActionResult Delete(Guid id)
        {
            _UserRanksBLL.DeleteObject(id);
			return RedirectToAction("Index", RouteData.Values);
        }		
		    
    }
}
