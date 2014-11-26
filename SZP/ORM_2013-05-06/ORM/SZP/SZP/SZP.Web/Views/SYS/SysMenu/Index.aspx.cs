using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using SZP.Web.UI;
using SZP.Entity;
using SZP.Service;
using SZP.Core;
using SZP.Common;

namespace SZP.Web.Views.SYS.SysMenu
{
    public partial class Index : EntityPage<SZP.Entity.SysMenu>
    {
        public string GetTreeMenu(IList<SZP.Entity.SysMenu> children)
        {
            StringBuilder stringBuilder = new StringBuilder();
            foreach (SZP.Entity.SysMenu item in children)
            {
                
                //stringBuilder.AppendFormat("<li><span><a href='?parentId={0}&depth={1}'>{2}</a></span>", item.Id,item.Depth, item.Title);
                stringBuilder.AppendFormat("<li><span><a href='javascript:void(0);' onclick=\"GetList('{0}','{1}')\">{2}</a></span>", item.Id, item.Depth, item.Title);
                if (item.Children != null)
                {
                    stringBuilder.AppendFormat("<ul>");
                    stringBuilder.Append(GetTreeMenu(item.Children).ToString());
                    stringBuilder.AppendFormat("</ul>");
                }
                stringBuilder.AppendFormat("</li>");
            }
            return stringBuilder.ToString();
           
            
        }
        protected override void OnLoad(EventArgs e)
        {
            GetListTree();
            base.OnLoad(e);
        }

        protected override void DoList()
        {
            int pageId = 0, pageSize = 0;string parentId="";
            if (Request["page"] != null)
            {
                int.TryParse(Request["page"], out pageId);
            }

            if (Request["psize"] != null)
            {
                int.TryParse(Request["psize"], out pageSize);
            }
            if (Request["parentId"] != null)
            {
                parentId = Request["parentId"];
            }
            //当前索引页
            if (pageId == 0)
            {
                pageId = 1;
            }
            //显示条数
            if (pageSize == 0)
            {
                pageSize = 20;
            }

            int total = 0;
            ISysMenuService Iservice = (SysMenuService)service;
            PagedList<Entity.SysMenu> list = Iservice.GetPageList(pageId, pageSize, parentId);
            if (list != null)
            {
                Context.Items.Add("list", list);
                total = list.RecordCount;
            }
            Page.DataBind();
        }

        protected void GetListTree()
        {
            ISysMenuService Iservice = (SysMenuService)service;
            list = Iservice.GetTopMenuListAll(Guid.Empty, Guid.Empty, true);
            //base.DoList();
        }
        
    }

    
}