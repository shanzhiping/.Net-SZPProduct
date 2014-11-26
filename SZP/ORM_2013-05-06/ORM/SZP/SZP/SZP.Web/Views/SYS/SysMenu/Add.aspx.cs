using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SZP.Web.UI;
using SZP.Entity;
using SZP.Common;
using SZP.Service;
using SZP.Config;

namespace SZP.Web.Views.SYS.SysMenu
{
    public partial class Add : EntityPage<Entity.SysMenu>
    {
        //protected void Page_Load(object sender, EventArgs e)
        //{
        //    //if (Request.Params["Type"] == "ComboBox")
        //    //{
        //    //    ISysMenuService Iservice = (SysMenuService)service;
        //    //    list = Iservice.GetTopMenuListAll(Guid.Empty, Guid.Empty, true);
        //    //    string str = JsonHelper.GetJSON<IList<Entity.SysMenu>>(list);
        //    //    Response.Write(str);
        //    //    Response.End();
        //    //}
        //}

        protected override bool PreAddSave()
        {
            string sa = Request.Form["IsEnable"];
            string sa1 = Request["IsEnable"];
            if (base.PreAddSave())
            {
                Model.Id = Guid.NewGuid();
                if (!string.IsNullOrEmpty(Request["parentId"]))
                {
                    Model.ParentId = new Guid(Request["parentId"]);
                }

                int depth = 0;
                if (!string.IsNullOrEmpty(Request["depth"]))
                {
                    int.TryParse(Request["depth"], out depth);
                    depth = depth + 1;
                }               
                Model.Depth = depth;
                Model.CraetedBy = LoginHelper.GetCookies().Name;
                Model.LastupdateBy = Model.CraetedBy;
                Model.LastupdateTime = DateTime.Now;
                Model.CreatedTime = DateTime.Now;

                return true;
            }
            return false;
        }
        protected override void AfterAddSave()
        {
            //base.View("提示信息", "新增成功");
            base.partialView("提示信息", "新增成功", "center", "/Views/SYS/SysMenu/List.aspx?parentId=" + Model.ParentId);
        }
    }
}