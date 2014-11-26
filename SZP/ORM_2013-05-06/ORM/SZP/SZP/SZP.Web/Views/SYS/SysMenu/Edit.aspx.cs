using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SZP.Web.UI;
using SZP.Entity;
using SZP.Service;
using SZP.Config;


namespace SZP.Web.Views.SYS.SysMenu
{
    public partial class Edit : EntityPage<SZP.Entity.SysMenu>
    {
        //protected void Page_Load(object sender, EventArgs e)
        //{

        //}
        protected override bool PreEditSave()
        {
            if (base.PreEditSave())
            {
                // base.UpdateModel(Model);
                Model.LastupdateTime = DateTime.Now;
                Model.LastupdateBy = LoginHelper.GetCookies().Name;
                return true;
            }
            return false;
        }

        protected override void AfterEditSave()
        {
            //base.View("提示信息", "新增成功");
            base.partialView("提示信息", "修改成功", "center", "/Views/SYS/SysMenu/List.aspx?parentId=" + Model.ParentId);
            //base.View("提示信息", "修改成功");
            //base.AfterEditSave();
            //Response.Write("<script   language=javascript> window.parent.setselectedtab('提示信息','操作成功');</script>");
        }
    }
}