using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SZP.Web .UI ;
using SZP.Entity;
using SZP.Config;

namespace SZP.Web.Views.Home
{
    public partial class LoginOn : EntityPage<SysOrganizational>
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //this.spanText.InnerText = "aaa";
        }
        protected override void OnLoad(EventArgs e)
        {
            if (Request.HttpMethod == "POST")
            {
                base.GetMethod();
                string user = Request["TxtUserName"];
                string pwd = Request["TxtPassword"];
                string ord = Request["DroporganizationalId"];
                LogonResult result = Config.LoginHelper.Logon(new Guid(ord), user, pwd, Common.SysEnums.AllLandguage.zh_cn);
                if (result.Equals(LogonResult.Succeeded))
                {
                    LoginHelper.BackToUrl(user);
                }
                else
                {
                    this.spanText.InnerHtml = App_GlobalResources.SYSResources.failure;
                }
            }
            DoList();
            //base.OnLoad(e);
        }
        protected override void DoList()
        {
            list = service.GetAll();
        }
    }
}