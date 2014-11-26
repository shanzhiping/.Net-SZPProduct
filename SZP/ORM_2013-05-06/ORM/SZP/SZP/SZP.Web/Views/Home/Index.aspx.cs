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

namespace SZP.Web.Views.Home
{
    public partial class Index : EntityPage<SysMenu>
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
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
            list.Add(menu);
        }
    }
}