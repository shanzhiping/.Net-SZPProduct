using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SZP.Web.UI;
using SZP.Entity;
using SZP.Service;

namespace SZP.Web.Views.SYS.SysMenu
{
    public partial class Delete : EntityPage<SZP.Entity.SysMenu>
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DoDel();
            DoEditSave();
           
        }
        protected override bool PreEditSave()
        {
            if (base.PreEditSave())
            {
                Model.IsDeleted = true;
                return true;
            }
            return false;
        }
        protected override void AfterEditSave()
        {
            Response.Write(Model.ParentId);
            Response.End();
            //base.AfterDelSave();
        }
    }
}