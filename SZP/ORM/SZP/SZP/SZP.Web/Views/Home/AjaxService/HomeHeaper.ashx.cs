using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SZP.Entity;
using SZP.Service;
using SZP.Config;

namespace SZP.Web.Views.Home.AjaxService
{
    /// <summary>
    /// Summary description for HomeHeaper
    /// </summary>
    public class HomeHeaper : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            //context.Response.ContentType = "text/plain";
            //context.Response.Write("Hello World");

            if (!string.IsNullOrEmpty(context.Request.QueryString["newpass"]))
            {
                ISysUserService iSysUserService = new SysUserService();
                SZP.Entity.SysUser entity = iSysUserService.GetUserEntityByLoginName(LoginHelper.GetCookies().Name);
                entity.Password = context.Request.QueryString["newpass"];
                iSysUserService.Update(entity);
                context.Response.Write(context.Request.QueryString["newpass"]);
                context.Response.End();
            }
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}