using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SZP.Web.UI;
using SZP.Common;
using SZP.Entity;
using SZP.Service;

namespace SZP.Web.Views.Home
{
    public partial class Layout : EntityPage<SysMenu>
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["view"] == "MyMenus")
            {
                ISysMenuService Iservice = (SysMenuService)service;
                list = Iservice.GetTopMenuListAll(Guid.Empty, Guid.Empty, true);
                string str = JsonHelper.GetJSON<IList<SysMenu>>(list);
                Response.Write(str);
                Response.End();
            }
        }

    }
}