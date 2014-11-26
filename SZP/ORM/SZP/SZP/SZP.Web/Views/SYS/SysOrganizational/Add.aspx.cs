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
using System.Configuration;
using SZP.Config;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Reflection;

namespace SZP.Web.Views.SYS.SysOrganizational
{
    public partial class Add : EntityPage<SZP.Entity.SysOrganizational>
    {

        protected override void OnLoad(EventArgs e)
        {
           
            base.OnLoad(e);
        }
        protected override bool PreAddSave()
        {
            if (base.PreAddSave())
            {
                Model.Id = Guid.NewGuid();
                Model.CreatedBy = LoginHelper.GetCookies().Name;
                Model.LastupdateBy = Model.CreatedBy;
                Model.LastupdateTime = DateTime.Now;
                Model.CreatedTime = DateTime.Now;
                return true;
            }
            return false;
        }
        protected override void AfterAddSave()
        {
            //base.View("提示信息", "新增成功");
            base.PartialView("提示信息", "新增成功", "center", "/Views/SYS/SysOrganizational/List.aspx");
        }


    }
}