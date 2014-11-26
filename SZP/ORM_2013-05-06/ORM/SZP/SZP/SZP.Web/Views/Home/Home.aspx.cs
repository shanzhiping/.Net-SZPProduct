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
    public partial class Home : EntityPage<SysMenu>
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            if (Request.QueryString["type"] == "Test")
            {
                ISysMenuService Iservice = (SysMenuService)service;
                IList<SysMenu> list = Iservice.GetTopMenuListAll(Guid.Empty, Guid.Empty);
                SysMenu menu = new SysMenu();
                menu.Title = "系统模式";
                menu.ImageUrl = "../../Images/Home/images/3DSMAX.png";
                menu.PageUrl = "Layout.aspx";
                menu.LocationType = "top";
                list.Add(menu);
                string str = JsonHelper.GetJSON<IList<SysMenu>>(list);
                Response.Write(str);
                Response.End();
            }
            
        }
        //protected override void OnLoad(EventArgs e)
        //{

        //    if (Request.QueryString["type"] == "Test")
        //    {
        //        ISysMenuService Iservice = (SysMenuService)service;
        //        string str = JsonHelper.GetJSON<IList<SysMenu>>(Iservice.GetTopMenuListAll(Guid.Empty, Guid.Empty));
        //        Response.Write(str);
        //        Response.End();
        //    }

        //}

    }
}