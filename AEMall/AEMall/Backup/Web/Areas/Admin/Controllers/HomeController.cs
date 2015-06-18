using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Models;
using BLL;

namespace Web.Areas.Admin.Controllers
{
    [NoCache]
    [HandleError]
    [Authorize]
    public class HomeController : Controller
    {
        //
        // GET: /Admin/Home/

        public ActionResult Index()
        {
            ConfigsBLL _ConfigsBLL = new ConfigsBLL();
            ViewBag.SysName = _ConfigsBLL.Get("SysName").Content;
            return View();
        }
        public ActionResult Stock()
        {
            return View();
        }
        public ActionResult Password()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Password(ChangePasswordModel item)
        {
            if (item.ConfirmPassword != item.NewPassword)
            {
                ModelState.AddModelError("ConfirmPassword", "两次输入的密码不同！");
            }

            if (!ModelState.IsValid)
            {
                ModelState.AddModelError("", "密码修改失败！");
                return View();
            }
            UsersBLL _UsersBLL = new UsersBLL();
            LogsBLL _LogsBLL = new LogsBLL();
            Guid userId = Guid.Parse(User.Identity.Name);
            try
            {
                _UsersBLL.ChangePassword(userId, item);
                Logs log = new Logs { Id = Guid.NewGuid(), CreateTime = DateTime.Now, UserId = userId, Name = "用户密码更改", Content = "用户密码更改成功", IP = Request.UserHostAddress };
                _LogsBLL.Save(null, ref log);
                ModelState.AddModelError("", "密码修改成功！");
            }
            catch (System.Exception ex)
            {
                Logs log = new Logs { Id = Guid.NewGuid(), CreateTime = DateTime.Now, UserId = userId, Name = "用户密码更改", Content = "<span style='color:red'>用户密码更改失败</span>", IP = Request.UserHostAddress };
                _LogsBLL.Save(null, ref log);
                ModelState.AddModelError("", ex.Message);
            }
            return View();
        }
    }
}
