using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SZP.Web.UI;
using SZP.Entity;

namespace SZP.Web.Views.SYS.SysMenu
{
    public partial class OperationAdd :  EntityPage<Entity.SysOperation>
    {

        protected override bool PreAddSave()
        {
           // return base.PreEditSave();
            Guid meunId;
            if (!Guid.TryParse(Request.QueryString["meunId"], out meunId))
            {
                base.ParentMessager("提示信息", "菜单指定异常");
                return false;
            }
            if (base.PreAddSave())
            {
                Model.Id = Guid.NewGuid();
                Model.MenuID = meunId;
                return true;
            }
            return false;
        }

        protected override void AfterAddSave()
        {
            //base.View("提示信息", "新增成功");
            base.PartialView("提示信息", "新增成功", "south", string.Format("/Views/SYS/SysMenu/OperationList.aspx?parentId={0}", Model.MenuID));
        }
    }
}