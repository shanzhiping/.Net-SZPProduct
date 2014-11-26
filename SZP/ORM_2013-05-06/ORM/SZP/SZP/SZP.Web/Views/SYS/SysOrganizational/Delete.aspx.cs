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
    public partial class Delete : EntityPage<SZP.Entity.SysOrganizational>
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DoDel();
            DoDelSave();
        }
        protected override void AfterDelSave()
        {
            //("提示信息", "删除成功");
            //base.Alert("提示信息", "删除成功");
            //base.View("index.aspx");

            //base.thisView("提示信息", "删除成功", (string)ViewState["RefUrl"]);
           // base.View("");
        }
    }
}