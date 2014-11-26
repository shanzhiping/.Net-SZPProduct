using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SZP.Web.UI;
using SZP.Entity;
using SZP.Service;
using System.Text;

namespace SZP.Web.Views.SYS.SysMenu
{
    public partial class Meun : EntityPage<SZP.Entity.SysMenu>
    {
        protected override void OnLoad(EventArgs e)
        {
            GetListTree();
            base.OnLoad(e);
        }
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
        protected void GetListTree()
        {
            ISysMenuService Iservice = (SysMenuService)service;
            list = Iservice.GetTopMenuListAll(Guid.Empty, Guid.Empty, true);
            //base.DoList();
        }
    }
}