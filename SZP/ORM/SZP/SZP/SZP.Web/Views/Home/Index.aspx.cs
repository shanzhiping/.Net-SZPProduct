using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SZP.Web.UI;
using SZP.Entity;
using SZP.Service;
using SZP.Core;
using SZP.Common;
using SZP.Config;

namespace SZP.Web.Views.Home
{
    public partial class Index : EntityPage<SysMenu>
    {
        public string GetUserName
        {
            get {
                return LoginHelper.GetCookies().Name;
            }
        }
        public string GetWCFContect
        {
            get {
              
                
                return ""; 
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected override void OnLoad(EventArgs e)
        {
            if (string.IsNullOrEmpty(Request.QueryString["newpass"]))
            {
                base.OnLoad(e);
            }
            else
            {
                ISysUserService iSysUserService = new SysUserService();
                SZP.Entity.SysUser entity = iSysUserService.GetUserEntityByLoginName(LoginHelper.GetCookies().Name);
                entity.Password = Request.QueryString["newpass"];
                iSysUserService.Update(entity);
                Response.Write("OK");
                Response.End();

            }
           
        }

        protected override void OnInit(EventArgs e)
        {
           // base.OnInit(e);
            ISysMenuService Iservice = (SysMenuService)service;
            list = Iservice.GetTopMenuListAll(Guid.Empty, Guid.Empty, true);
            SysMenu menu = new SysMenu();
            menu.Title = "系统模式";
            menu.ImageUrl = "../../Images/Home/images/3DSMAX.png";
            menu.PageUrl = "Layout.aspx";
            menu.LocationType = "top";


            SysMenu menuItems = new SysMenu();
            menuItems.Title = "窗口模式";
            menuItems.ImageUrl = "../../Images/Home/images/3DSMAX.png";
            menuItems.PageUrl = "Home.aspx";
            menuItems.LocationType = "parent";
            menu.Children = new List<SysMenu>();
            menu.Children.Add(menuItems);
            list.Add(menu);
        }
    }
}