using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Serialization;
using System.Linq;
using SZP.Web.UI ;
using SZP.Entity;
using SZP.Core;

namespace SZP.Web.Views.SYS.SysMenu
{
    public partial class SysMenuIndex : EntityPage<Entity.SysMenu>
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Request.Params["Action"] == "GetData")
            //{
            //    GetData();
            //    Response.End();
            //}
        }

        protected override void OnLoad(EventArgs e)
        {
            if (Request.Params["Action"] == "GetData")
            {
                DoList();
                Response.End();
            }
        }
        protected override void DoList()
        {
            string sortname = Request.Params["sortname"];
            string sortorder = Request.Params["sortorder"];
            int page = Convert.ToInt32(Request.Params["page"]);
            int pagesize = Convert.ToInt32(Request.Params["pagesize"]);
            PagedList<Entity.SysMenu> list = GetList(page, pagesize);
            var total = list.PageCount;
         
            if (sortorder == "desc")
                list.Data = list.Data.OrderByDescending(c => c.CreatedTime).ToList();
            else
                list.Data = list.Data.OrderBy(c => c.CreatedTime).ToList();

            
            var griddata = new { Rows = list.Data, Total = total };
            string s = new JavaScriptSerializer().Serialize(griddata);
            Response.Write(s);
           
        }
    }
}