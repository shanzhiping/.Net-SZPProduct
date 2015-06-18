﻿using System;
using System.Linq;
using System.Web.Mvc;
using BLL;
using Models;

namespace Web.Areas.Admin.Controllers
{
    [NoCache]
    [HandleError]
	[Authorize]
    public class UsersController:Controller
    {
		UsersBLL _UsersBLL = new UsersBLL();  
		public ActionResult Index(int? pageIndex, string Keyword)
        {
            var model = _UsersBLL.Get();
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
            var item = _UsersBLL.Get(id);
            return View(item);
        }
		public ActionResult Edit(Guid? id)
        {          
            var item = _UsersBLL.Get(id);
            return View(item);
        }
		[HttpPost]
        public ActionResult Edit(Guid? id, Users collection)
        {
            if (!ModelState.IsValid)
            {
                return View(collection);
            }
            else
            {
                _UsersBLL.Save(id, ref collection);
                return RedirectToAction("Index", RouteData.Values);
            }
        }
		[HttpDelete]
        public ActionResult Delete(Guid id)
        {
            _UsersBLL.DeleteObject(id);
			return RedirectToAction("Index", RouteData.Values);
        }
        
    }
}
