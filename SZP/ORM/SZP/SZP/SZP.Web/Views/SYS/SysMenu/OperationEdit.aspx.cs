using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SZP.Entity;
using SZP.Web.UI;

namespace SZP.Web.Views.SYS.SysMenu
{
    public partial class OperationEdit : EntityPage<SZP.Entity.SysOperation>
    {
        //protected override bool PreEditSave()
        //{
        //    if (base.PreEditSave())
        //    {
        //        string meundId = Request.QueryString[""];
        //        return true;
        //    }
        //    return false;
        //}
        protected override void AfterEditSave()
        {
            base.PartialView("提示信息", "修改操作成功", "south", "/Views/SYS/SysMenu/OperationList.aspx?parentId=" + Model.MenuID);
            //base.AfterEditSave();
        }
    }
}