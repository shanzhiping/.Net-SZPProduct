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

namespace SZP.Web.Views.SYS.SysOrganizational
{
    public partial class Edit : EntityPage<SZP.Entity.SysOrganizational>
    {
        protected override void OnLoad(EventArgs e)
        {
            base.ContextType = typeof(Edit);
            base.OnLoad(e);
        }
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
            base.PartialView("提示信息", "修改成功", "center", "/Views/SYS/SysOrganizational/List.aspx");
        }
    }
}